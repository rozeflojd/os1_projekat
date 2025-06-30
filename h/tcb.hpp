#ifndef OS1_PROJEKAT_TCB_HPP
#define OS1_PROJEKAT_TCB_HPP

#include "scheduler.hpp"
#include "../lib/hw.h"

class TCB{
public:
    using Body = void (*)(void*);
    //using Body = void (*)();
private:
    friend class Riscv;
    //friend class Sem; a

    TCB(Body body, void* arg, char *stek) :
            body(body),
            argumentiFje(arg),
            stack(body != nullptr ? stek : nullptr),
            context({
                            (uint64) &threadWrapper,
                            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false),
            active(true)
    {
        if(body!=nullptr) Scheduler::put(this);
    }

    struct Context{
        uint64 ra;
        uint64 sp;
    };  //a

    Body body;
    void* argumentiFje;
    char *stack;
    Context context;
    //uint64 timeSlice;
    volatile bool finished;
    bool  active;
    //static uint64 timeSliceCounter;
    static void threadWrapper();


public:
    ~TCB(){ delete[] stack; }

    //static TCB* createNewTCB(Body body, void* args, void* stack);

    bool isFinished() const { return finished; }
    void setFinished(bool flag) { finished = flag; }

    bool getActive () const { return active; }
    void setActive (bool val) { active = val; }

    //uint64 getTimeSlice() const { return timeSlice; }

    static TCB* createThread(Body body, void* arguments, char* stack_space);

    static TCB *running;

    static void dispatch();
    static void contextSwitch(Context *oldContext, Context *runningContext);
};

#endif