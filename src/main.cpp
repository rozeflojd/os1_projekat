#include "../h/print.hpp"
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

void userMain();

void userMainExecutor(void*)
{
    userMain();
}

int main() {
    // Postavi trap handler za prekide
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    TCB *main_handle;
    thread_create(&main_handle, nullptr, nullptr);
    TCB::running = main_handle;
    thread_t t;
    thread_create(&t, userMainExecutor, nullptr);
    while(!t->isFinished())
    {
        thread_dispatch();
    }
    return 0;
}