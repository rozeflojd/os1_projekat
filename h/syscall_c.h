#ifndef OS1_PROJEKAT_SYSCALL_C_HPP
#define OS1_PROJEKAT_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../lib/console.h"
#include "../lib/mem.h"

void* mem_alloc(size_t size); //0x1

int mem_free(void*); //0x2

class TCB; //zapravo _thread
typedef TCB* thread_t;
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg); //0x11

int thread_exit(); //0x12

void thread_dispatch(); //0x13

class _sem;
typedef _sem* sem_t;
int sem_open(sem_t* handle, unsigned init); //0x21

int sem_close(sem_t handle); //0x22

int sem_wait(sem_t id); //0x23

int sem_signal(sem_t id); //0x24

int sem_timedwait(sem_t id, time_t timeout); //0x25

int sem_trywait(sem_t id); //0x26

typedef unsigned long time_t;
int time_sleep(time_t); //0x31

const int EOF = -1;
char getc(); //0x41

void putc(char); //0x42

#endif