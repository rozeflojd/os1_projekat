#ifndef OS1_PROJEKAT_SCHEDULER_HPP
#define OS1_PROJEKAT_SCHEDULER_HPP

#include "list.hpp"

class TCB; //coroutine control block

class Scheduler{
private:
    static List<TCB> readyThreadsQueue;

public:
    static TCB *get();

    static void put(TCB *thread);
};

#endif