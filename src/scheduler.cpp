
#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyThreadsQueue;

TCB *Scheduler::get(){
    return readyThreadsQueue.removeFirst();
}

void Scheduler::put(TCB *ccb){
    readyThreadsQueue.addLast(ccb);
}

