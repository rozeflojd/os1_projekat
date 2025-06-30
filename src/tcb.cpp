//#include "../h/ccb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"

#include "../h/syscall_c.h"

#include "../test/printing.hpp"

TCB *TCB::running = nullptr;

TCB * TCB::createThread(TCB::Body body, void* arguments, char* stack_space) {
    return new TCB(body, arguments, stack_space);
}


void TCB::dispatch(){
    //treba da se doda i provera za blocked
    TCB *old = running;
    if(!old->isFinished() && old->getActive()) { Scheduler::put(old); }
    else if (old->isFinished()) {
        delete old->stack;
        delete old;
    }
    running = Scheduler::get();
    if (old != running) TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->argumentiFje);
    thread_exit();
}
