#ifndef OS1_PROJEKAT_SEMAFOR_HPP
#define OS1_PROJEKAT_SEMAFOR_HPP

#include "list.hpp"
#include "tcb.hpp"

class Sem{
private:
    int value;
    List<TCB> blokirani;
    //bool zatvoren;

public:
    Sem(int init = 1) : value(init) {}

    int getValue() const { return value; }

    static Sem* sem_open(int);

    void sem_close();

    void sem_wait();
    void sem_signal();

    int sem_trywait();

    /*static bool isClosed(){ return zatvoren; }
    static void setClosed(bool flag) { zatvoren = flag; }*/


protected:

    void block();
    void unblock();
};

#endif