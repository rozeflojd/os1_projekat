#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

void userMain();

void userMainExecutor(void*)
{
    userMain();
}
int main() {
    // Postavi trap handler za prekide
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

    TCB::running = TCB::createThread(nullptr, nullptr, nullptr);

    thread_t t;
    thread_create(&t, userMainExecutor, nullptr);

    while(!t->isFinished())
    {
        thread_dispatch();
    }

    return 0;
}