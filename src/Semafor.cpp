//
// Created by os on 9/3/24.
//

#include "../h/Semafor.hpp"

Sem* Sem::sem_open(int val){
    return new Sem(val);
}

void Sem::sem_close() {
    TCB* curr = 0;
    while (blokirani.peekFirst()){
        curr = blokirani.removeFirst();
        Scheduler::put(curr);
    }
}

void Sem::sem_wait() {
    TCB* curr = TCB::running;
    if (--value < 0) {
        curr->setActive(0);
        blokirani.addLast(curr);
        TCB::dispatch();
    }
}

void Sem::sem_signal() {
    value++;
    if (value <= 0 && blokirani.peekFirst()){
        blokirani.peekFirst()->setActive(1);
        Scheduler::put(blokirani.removeFirst());
    }
}

int Sem::sem_trywait() {
    value--;
    if (value < 0)
    {
        value++;
        return 1;
    }
    else return 0;
}


