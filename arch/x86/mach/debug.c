#include <arch/debug.h>

void debug_putchar(char str){
    
}

void arch_debug_init(){
    //初始化控制台
    console_hardware_init();

    // 初始化串口
    serial_hardware_init();
}