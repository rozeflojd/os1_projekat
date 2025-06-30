#include "../h/print.hpp"
#include"../lib/console.h"
#include "../h/riscv.hpp"

void _printString(char const *string){

    while(*string != '\0'){
        __putc(*string);
        string++;
    }
}

void _printInteger(uint64 integer){
    static char digits[] = "0123456789ABCDEF";
    char buf[16];
    int i;
    uint x;

    x = integer;

    i = 0;
    do{
        buf[i++] = digits[x % 16];
    } while((x/= 16) != 0);

    while(--i >= 0) __putc(buf[i]);
}
