#ifndef OS1_PROJEKAT_RISCV_HPP
#define OS1_PROJEKAT_RISCV_HPP

#include "../lib/hw.h"
class Riscv{
public:

    static void popSppSpie(); //pop-ovanje sstatus.spp i sstatus.spie bitova
                            //ne sme da bude inline f-ja

    static void pushRegisters();
    static void popRegisters();

    static uint64 r_scause(); //read register scause
    static void w_scause(uint64 scause); //write register scouse

    static uint64 r_sepc(); //read register spec
    static void  w_sepc(uint64 ceps); //write register sepc

    static uint64 r_stvec(); //read register stvec
    static void w_stvec(uint64 stvec); //write register stvec

    static uint64 r_stval(); //read register stval
    static void w_stval(uint64 stval); //write register stval

    enum BitMaskSip{
        SIP_SSIP = (1 <<1 ),
        SIP_STIP = (1 << 5),
        SIP_SEIP = (1 << 9),
    };

    static void ms_sip(uint64 mask); //mask set register sip

    static void mc_sip(uint64 mask); //mask clear register sip

    static uint64 r_sip(); //read register sip

    static void w_sip(uint64 sip); //write regiser sip

    enum BitMaskSstatus{
        SSTATUS_SIE= (1 <<1 ),
        SSTATUS_STIE = (1 << 5),
        SSTATUS_SPP = (1 << 9),
    };

    static void ms_sstatus(uint64 mask); //mask set register sstatus

    static void mc_sstatus(uint64 mask); //mask clear register sstaus

    static uint64 r_sstatus(); //read register sstatus

    static void w_sstatus(uint64 sstatus); //write regiser sstatus

    static void supervisorTrap(); //supervisor trap
                                //sta sam procesor zove kada dodje do zahteva za prekidom ili izuzetka nekog

private:

    static void handleSupervisorTrap(); //supervisor trap handler

};

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    return scause;
}

inline void Riscv::w_scause(uint64 scause) {
    __asm__ volatile ("csrw scause, %[scause]" : : [scause] "r"(scause));
}

inline uint64 Riscv::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    return sepc;
}

inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
}

inline uint64 Riscv::r_stvec() {
    uint64 volatile stvec;
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
}

inline uint64 Riscv::r_stval() {
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    return stval;
}

inline void Riscv::w_stval(uint64 stval) {
    __asm__ volatile ("csrw stval, %[stval]" : : [stval] "r"(stval));
}

inline void Riscv::ms_sip(uint64 mask) {
    __asm__ volatile ("csrs sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask){
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sip() {
    uint64 volatile sip;
    __asm__ volatile ("csrr %[sip], sip" : [sip] "=r"(sip));
    return sip;
}

inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask){
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

#endif