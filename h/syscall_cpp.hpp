//
// Created by os on 9/19/24.
//

#ifndef OS_SYSCALL_CPP_HPP
#define OS_SYSCALL_CPP_HPP

#include "syscall_c.h"

void* operator new (size_t);
void operator delete (void*) noexcept;

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread();

    int start();

    int sleep(time_t time);

    static void dispatch ();

protected:

    Thread();
    virtual void run() {};

private:
    static void runWrapper(void* thread_p) {
        ((Thread*)thread_p)->run();
    }
    thread_t myHandle;
    void (*body)(void*);
    void* arg;
};

class Semaphore {
public:
    Semaphore(unsigned init = 1);

    virtual ~Semaphore();

    int wait();

    int signal();

    int tryWait();

private:
    sem_t myHandle;
};

class Console {
public:
    static char getc();

    static void putc(char);
};

#endif //OS_SYSCALL_CPP_HPP
