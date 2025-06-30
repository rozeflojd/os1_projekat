#include "../h/syscall_c.h"
#include "../h/print.hpp"

void putc(char c){
    asm volatile ("mv a1, %0":: "r"(c));
    //stavljamo arg u a1

    asm volatile("li a0, %0":: "i"(0x42));
    //u a0 stavljen sis poziv

    asm volatile ("ecall");
}

char getc(){
    char c;
    asm volatile("li a0, %0":: "i"(0x41));//u a0 stavljen sis poziv
    asm volatile("ecall");

    asm volatile ("mv %0, a0" : "=r"(c)); //u a0 se posle sis poziva nalazi povratna vrednost
    return c;
}

void* mem_alloc(size_t size){
    size_t newSize = (size % MEM_BLOCK_SIZE) ? size / MEM_BLOCK_SIZE +1 : size / MEM_BLOCK_SIZE;
    asm volatile("mv a1, %0":: "r"(newSize));
    asm volatile ("li a0, %0" :: "i"(0x01));
    asm volatile("ecall");
    void* adr;
    asm volatile ("mv %0, a0" : "=r"(adr));
    return adr;
}

int mem_free(void* adr){
    asm volatile("mv a1, %0" :: "r"(adr));
    asm volatile ("li a0, %0" :: "i"(0x02));
    asm volatile("ecall");
    int ret;
    asm volatile("mv %0, a0" : "=r"(ret));
    return ret;
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    if(!handle || !start_routine) return -1;
    //alokacija steka i proslednjivanje kroz registre
    void* stek = mem_alloc(DEFAULT_STACK_SIZE);
    asm volatile("mv a4, %0" :: "r"(stek));

    //smestanje arg na stek
    asm volatile("mv a3, %0" :: "r"(arg));
    asm volatile("mv a2, %0" :: "r"(start_routine));
    asm volatile("mv a1, %0" :: "r"(handle));

    //pozivanje sist. poziva
    asm volatile ("li a0, %0" :: "i"(0x11));
    asm volatile("ecall");

    //dohvatanje i vracanje povratne vrednosti
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    return povrVrednost;
}

int thread_exit(){
    asm volatile("li a0, %0" :: "i"(0x12));
    asm volatile("ecall");
    return 0;
}

void thread_dispatch(){
    asm volatile("li a0, %0" :: "i"(0x13));
    asm volatile("ecall");
}

int time_sleep(time_t time)
{
    return -1;
}

int sem_open(sem_t* handle, unsigned val) {
    asm volatile("mv a2, %0" :: "r"(val));
    asm volatile("mv a1, %0" :: "r"(handle));

    asm volatile("li a0, %0" :: "i"(0x21));
    asm volatile("ecall");

    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    return povrVrednost;
}

int sem_close(sem_t handle){
    asm volatile("mv a1, %0" :: "r"(handle));
    asm volatile("li a0, %0" :: "i"(0x22));
    asm volatile("ecall");
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    return povrVrednost;
}

int sem_wait(sem_t handle){
    asm volatile("mv a1, %0" :: "r"(handle));
    asm volatile("li a0, %0" :: "i"(0x22));
    asm volatile("ecall");
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    return povrVrednost;
}

int sem_signal(sem_t handle){
    asm volatile("mv a1, %0" :: "r"(handle));
    asm volatile("li a0, %0" :: "i"(0x22));
    asm volatile("ecall");
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    return povrVrednost;
}

int sem_timedwait(sem_t handle, time_t time){
    asm volatile("mv a2, %0" :: "r"(time));
    asm volatile("mv a1, %0" :: "r"(handle));
    asm volatile("li a0, %0" :: "i"(0x25));
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    return povrVrednost; //u riscv samo vracam -1 kao povr vrednost kroz a0
}

int sem_trywait(sem_t handle){
    asm volatile("mv a1, %0" :: "r"(handle));
    asm volatile("li a0, %0" :: "i"(0x26));
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    return povrVrednost; //u riscv samo vracam -1 kao povr vrednost kroz a0
}