.text
    .globl kernel_start
kernel_start:
    //初始化
    call arch_init
    //进入内核
    call kernel_main

kernel_stop:
    hlt
    jmp kernel_stop
jmp $