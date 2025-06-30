#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
#include "../h/Semafor.hpp"

void Riscv::popSppSpie() {
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra"); // ra je lokacija sa koje je funkcija pozvana
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL ) {
        //nije interrupt - ne pocinje sa 8, ecall je, znamo zato sto je 9 na kraju "Enviornment call from S-mode"

        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 sisPoziv;
        asm volatile("ld %0, 8*10(fp)" : "=r"(sisPoziv));
        switch (sisPoziv) {
            case 0x42: {
                //PUTC
                char c;
                asm volatile ("ld %0, 8*11(fp)": "=r" (c));
                //u c upisujem ono iz a1
                __putc(c);

                break;
            }
            case 0x41: {
                //GETC
                char c = __getc();
                asm volatile ("sd %0, 8*10(fp)" :: "r"(c)); //storuje u a0 nas c

                break;
            }
            case 0x01: {
                //MEM ALLOC
                size_t size;
                asm volatile ("ld %0, 8*11(fp)": "=r" (size));
                void* alocirano = __mem_alloc(size*MEM_BLOCK_SIZE);
                asm volatile ("sd %0, 8*10(fp)" :: "r"(alocirano));

                break;
            }
            case 0x02: {
                //MEM FREE
                void* arg;
                asm volatile("ld %0, 8*11(fp)": "=r"(arg));
                size_t rez = __mem_free(arg);
                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));

                break;
            }
            case 0x11: {
                //THREAD CREATE
                //uzimanje arg sa steka i stavljanje u lok prom
                TCB** handle;
                void* args;
                TCB::Body body;
                char* stack;

                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
                asm volatile("ld %0, 8*12(fp)" : "=r"(body));
                asm volatile("ld %0, 8*13(fp)" : "=r"(args));
                asm volatile("ld %0, 8*14(fp)" : "=r"(stack));

                *handle = TCB::createThread(body, args, stack);
                //rez se vraca u a0
                uint64 rez;
                if(*handle) rez = 0;
                else rez = -1;
                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));
                break;
            }
            case 0x12: {
                //THREAD EXIT
                TCB* tren = TCB::running;
                tren->setFinished(true);
                TCB *pret = tren;
                TCB::dispatch();
                delete pret;

                break;
            }
            case 0x13: {
                //DISPATCH
                TCB::dispatch();
                break;
            }
            case 0x21: {
                //SEM_OPEN
                Sem** handle;
                int val;

                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
                asm volatile("ld %0, 8*12(fp)" : "=r"(val));

                *handle = Sem::sem_open(val);
                //rez se vraca u a0
                uint64 rez;
                if(handle) rez = 0;
                else rez = -1;

                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));

                break;
            }
            case 0x22: {
                //SEM_CLOSE
                Sem* handle;
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));

                int povratnaVrednost = 0;

                handle->sem_close();

                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));

                break;
            }
            case 0x23: {
                //SEM_WAIT
                Sem* handle;
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));

                int povratnaVrednost = 0;
                handle->sem_wait();

                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));

                break;
            }
            case 0x24: {
                //SEM_SIGNAL
                Sem* handle;
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));

                int povratnaVrednost = 0;
                handle->sem_signal();

                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));

                break;
            }
            case 0x25: {
                // sem_timedwait
                int rez = -1;
                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));

                break;
            }
            case 0x26: {
                // sem_trywait
                Sem* handle;
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));

                int povratnaVrednost = 0;
                handle->sem_trywait();

                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));

                break;
            }
        }

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scause == 0x8000000000000001UL) {
        // interrupt: yes, cause code: supervisor softwer interrupt (timer)
//        TCB::timeSliceCounter++;
//        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
//        {
//            uint64 sepc = r_sepc();
//            uint64 sstatus = r_sstatus();
//            TCB::timeSliceCounter = 0; // za novu nit
//            w_sstatus(sstatus); //restauracija
//            TCB::dispatch();
//            w_sepc(sepc); // restauriramo sepc od niti koja je ranije izgubila procesor
//
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
        // interrupt: yes, cause code: supervisor external interrupt (console)
        console_handler();
    } else {
        //neocekivan prekid! unexpected trap cause
        _printString("\n");
        _printString("Unexpected trap cause!\n");
        _printString("SCAUSE: ");
        _printInteger(scause);
        _printString(", SEPC: ");
        _printInteger(r_sepc());
        while(true){ }
    }
}

