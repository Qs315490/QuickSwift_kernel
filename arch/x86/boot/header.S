#define MAGIC 0x1BADB002
#define FLAGS 0x00000000
#define STACK_SIZE 0x4000

.text
    .globl _start

_start:
    jmp multiboot_entry
    .align 4

multiboot_header:
    .long MAGIC
    .long FLAGS
    .long -(MAGIC + FLAGS)

multiboot_entry:
    /* 初始化堆栈指针。 */
    movl $(stack + STACK_SIZE), %esp

    /* 重置 EFLAGS。 */
    pushl $0 
    popf

    pushl %ebx
    pushl %eax

    /* 现在进入 内核启动 函数... */
    call kernel_start

    .comm stack, STACK_SIZE