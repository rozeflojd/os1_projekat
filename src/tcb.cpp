//#include "../h/ccb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"

#include "../h/syscall_c.h"

TCB *TCB::running = nullptr;

//uint64 TCB::timeSliceCounter = 0;

TCB * TCB::createThread(TCB::Body body, void* arguments, char* stack_space) {
    return new TCB(body, arguments, stack_space);
}


void TCB::dispatch(){
    //treba da se doda i provera za blocked
    TCB *old = running;
    if(!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();
    if(old != running) TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->argumentiFje);
    thread_exit();
}
