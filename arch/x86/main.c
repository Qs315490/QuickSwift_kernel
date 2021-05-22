/* 或许可行的写法
#include "include/typedef.h"
uint32_t magic = 0x1BADB002;
uint32_t flags = 0;
uint32_t checksum = (-(magic + flags)); */
//todo 完善内核
int main(void){
    while (1)
    {
        asm("hlt");
    }
}