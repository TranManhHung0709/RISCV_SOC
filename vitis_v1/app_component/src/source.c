#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"

#define RESET_GPIO_BASE  0x41200000
#define GPIO_DATA_REG    (RESET_GPIO_BASE + 0x0000)
#define GPIO_TRI_REG     (RESET_GPIO_BASE + 0x0004)

#define IMEM_BASE_ADDR   0x50000000
#define DMEM_BASE_ADDR   0x60000000

// rst_N active-low: 0 = giữ reset, 1 = thả reset
#define RISCV_IN_RESET   0
#define RISCV_RUNNING    1

// Code binary của bạn, convert sang hex
uint32_t riscv_machine_code[] = {
    0x000000B7, // 0x00: lui    x1, 0x0
    0x00400113, // 0x04: addi   x2, x0, 4       # n = 4
    0x00300193, // 0x08: addi   x3, x0, 3       # a[0] = 3
    0x0030A023, // 0x0C: sw     x3, 0(x1)
    0xFFE00193, // 0x10: addi   x3, x0, -2      # a[1] = -2
    0x0030A223, // 0x14: sw     x3, 4(x1)
    0x00700193, // 0x18: addi   x3, x0, 7       # a[2] = 7
    0x0030A423, // 0x1C: sw     x3, 8(x1)
    0x00100193, // 0x20: addi   x3, x0, 1       # a[3] = 1
    0x0030A623, // 0x24: sw     x3, 12(x1)
    0x00000213, // 0x28: addi   x4, x0, 0       # sum = 0
    0x00008293, // 0x2C: addi   x5, x1, 0       # ptr = base
    0x00010C63, // 0x30: beq    x2, x0, done    # offset = +24 -> PC=0x48
    0x0002A303, // 0x34: lw     x6, 0(x5)
    0x00620233, // 0x38: add    x4, x4, x6
    0x00428293, // 0x3C: addi   x5, x5, 4
    0xFFF10113, // 0x40: addi   x2, x2, -1
    0xFEDFF06F, // 0x44: jal    x0, loop        # offset = -20 -> PC=0x30
    0x04402023, // 0x48: sw     x4, 64(x1)      # mem[64] = sum
    0x0000006F  // 0x4C: jal    x0, halt
};

int main() {
    xil_printf("\r\n======================================================\r\n");
    xil_printf("  ZYNQ: KHOI DONG SoC ARM + RISC-V\r\n");
    xil_printf("======================================================\r\n");

    int num_instructions = sizeof(riscv_machine_code) / sizeof(riscv_machine_code[0]);

    // Bước 1: GPIO output, giữ reset
    Xil_Out32(GPIO_TRI_REG,  0x00000000);
    Xil_Out32(GPIO_DATA_REG, RISCV_IN_RESET);
    xil_printf("[1] RISC-V dang bi giu reset.\r\n");

    // Bước 2: Nạp code vào IMEM
    xil_printf("[2] Nap %d lenh vao IMEM...\r\n", num_instructions);
    for (int i = 0; i < num_instructions; i++) {
        Xil_Out32(IMEM_BASE_ADDR + (i * 4), riscv_machine_code[i]);
    }
    xil_printf("    Nap xong!\r\n");

    // Bước 3: Verify IMEM
    xil_printf("\r\n--- [VERIFY] Doc lai IMEM ---\r\n");
    xil_printf("%-8s  %-12s  %-12s  %s\r\n", "Offset", "Expected", "Actual", "Status");
    xil_printf("--------------------------------------------------\r\n");
    int errors = 0;
    for (int i = 0; i < num_instructions; i++) {
        uint32_t addr     = IMEM_BASE_ADDR + (i * 4);
        uint32_t expected = riscv_machine_code[i];
        uint32_t actual   = Xil_In32(addr);
        const char* status = (actual == expected) ? "OK" : "*** FAIL ***";
        if (actual != expected) errors++;
        xil_printf("0x%04X    0x%08X    0x%08X    %s\r\n", i*4, expected, actual, status);
    }
xil_printf("--------------------------------------------------\r\n");

    if (errors > 0) {
        xil_printf("[!] %d loi trong IMEM. Dung lai.\r\n", errors);
        return -1;
    }
    xil_printf("[3] IMEM chinh xac!\r\n");

    // Bước 4: Thả reset
    xil_printf("[4] Thao Reset! RISC-V dang chay...\r\n");
    Xil_Out32(GPIO_DATA_REG, RISCV_RUNNING);

    // Bước 5: Chờ cố định 1 giây (delay loop ~100MHz)
    xil_printf("[5] Cho 1 giay...\r\n");
    volatile uint32_t d;
    for (d = 0; d < 100000000; d++);

    // Bước 6: Dump toàn bộ 64 ô DMEM
    xil_printf("\r\n--- DUMP DMEM SAU 1s (64 o, base=0x%08X) ---\r\n", DMEM_BASE_ADDR);
    xil_printf("%-10s  %-12s  %-12s\r\n", "Offset", "Addr", "Value(hex)");
    xil_printf("------------------------------------------\r\n");
    for (int i = 0; i < 64; i++) {
        uint32_t addr = DMEM_BASE_ADDR + (i * 4);
        uint32_t val  = Xil_In32(addr);
        // In tất cả, đánh dấu ô quan trọng
        if (i == 16)
            xil_printf("[%3d]  0x%08X    0x%08X  <-- RESULT (offset 64)\r\n",  i*4, addr, val);
        else if (i == 63)
            xil_printf("[%3d]  0x%08X    0x%08X  <-- FLAG   (offset 252)\r\n", i*4, addr, val);
        else
            xil_printf("[%3d]  0x%08X    0x%08X\r\n", i*4, addr, val);
    }
    xil_printf("------------------------------------------\r\n");

    // Bước 7: Đọc kết quả
    int result = (int)Xil_In32(DMEM_BASE_ADDR + 64);
    xil_printf("\r\n======================================================\r\n");
    xil_printf("  Ket qua sum = %d  (Expected: 9)\r\n", result);
    if (result == 9)
        xil_printf("  => PASS!\r\n");
    else
        xil_printf("  => FAIL! Kiem tra lai DMEM dump o tren.\r\n");
    xil_printf("======================================================\r\n");

    return 0;
}