
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	30813103          	ld	sp,776(sp) # 8000a308 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	768050ef          	jal	ra,80005784 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	385000ef          	jal	ra,80001c08 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256


    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:

_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    #a0 - adr old->context
    #a1 - adr new->context

    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    ret
    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z4putcc>:
#include "../h/syscall_c.h"
#include "../h/print.hpp"

void putc(char c){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    asm volatile ("mv a1, %0":: "r"(c));
    80001150:	00050593          	mv	a1,a0
    //stavljamo arg u a1

    asm volatile("li a0, %0":: "i"(0x42));
    80001154:	04200513          	li	a0,66
    //u a0 stavljen sis poziv

    asm volatile ("ecall");
    80001158:	00000073          	ecall
}
    8000115c:	00813403          	ld	s0,8(sp)
    80001160:	01010113          	addi	sp,sp,16
    80001164:	00008067          	ret

0000000080001168 <_Z4getcv>:

char getc(){
    80001168:	ff010113          	addi	sp,sp,-16
    8000116c:	00813423          	sd	s0,8(sp)
    80001170:	01010413          	addi	s0,sp,16
    char c;
    asm volatile("li a0, %0":: "i"(0x41));//u a0 stavljen sis poziv
    80001174:	04100513          	li	a0,65
    asm volatile("ecall");
    80001178:	00000073          	ecall

    asm volatile ("mv %0, a0" : "=r"(c)); //u a0 se posle sis poziva nalazi povratna vrednost
    8000117c:	00050513          	mv	a0,a0
    return c;
}
    80001180:	0ff57513          	andi	a0,a0,255
    80001184:	00813403          	ld	s0,8(sp)
    80001188:	01010113          	addi	sp,sp,16
    8000118c:	00008067          	ret

0000000080001190 <_Z9mem_allocm>:

void* mem_alloc(size_t size){
    80001190:	ff010113          	addi	sp,sp,-16
    80001194:	00813423          	sd	s0,8(sp)
    80001198:	01010413          	addi	s0,sp,16
    size_t newSize = (size % MEM_BLOCK_SIZE) ? size / MEM_BLOCK_SIZE +1 : size / MEM_BLOCK_SIZE;
    8000119c:	03f57793          	andi	a5,a0,63
    800011a0:	02078463          	beqz	a5,800011c8 <_Z9mem_allocm+0x38>
    800011a4:	00655513          	srli	a0,a0,0x6
    800011a8:	00150513          	addi	a0,a0,1
    asm volatile("mv a1, %0":: "r"(newSize));
    800011ac:	00050593          	mv	a1,a0
    asm volatile ("li a0, %0" :: "i"(0x01));
    800011b0:	00100513          	li	a0,1
    asm volatile("ecall");
    800011b4:	00000073          	ecall
    void* adr;
    asm volatile ("mv %0, a0" : "=r"(adr));
    800011b8:	00050513          	mv	a0,a0
    return adr;
}
    800011bc:	00813403          	ld	s0,8(sp)
    800011c0:	01010113          	addi	sp,sp,16
    800011c4:	00008067          	ret
    size_t newSize = (size % MEM_BLOCK_SIZE) ? size / MEM_BLOCK_SIZE +1 : size / MEM_BLOCK_SIZE;
    800011c8:	00655513          	srli	a0,a0,0x6
    800011cc:	fe1ff06f          	j	800011ac <_Z9mem_allocm+0x1c>

00000000800011d0 <_Z8mem_freePv>:

int mem_free(void* adr){
    800011d0:	ff010113          	addi	sp,sp,-16
    800011d4:	00813423          	sd	s0,8(sp)
    800011d8:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"(adr));
    800011dc:	00050593          	mv	a1,a0
    asm volatile ("li a0, %0" :: "i"(0x02));
    800011e0:	00200513          	li	a0,2
    asm volatile("ecall");
    800011e4:	00000073          	ecall
    int ret;
    asm volatile("mv %0, a0" : "=r"(ret));
    800011e8:	00050513          	mv	a0,a0
    return ret;
}
    800011ec:	0005051b          	sext.w	a0,a0
    800011f0:	00813403          	ld	s0,8(sp)
    800011f4:	01010113          	addi	sp,sp,16
    800011f8:	00008067          	ret

00000000800011fc <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    if(!handle) return -1;
    800011fc:	08050063          	beqz	a0,8000127c <_Z13thread_createPP3TCBPFvPvES2_+0x80>
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    80001200:	fd010113          	addi	sp,sp,-48
    80001204:	02113423          	sd	ra,40(sp)
    80001208:	02813023          	sd	s0,32(sp)
    8000120c:	00913c23          	sd	s1,24(sp)
    80001210:	01213823          	sd	s2,16(sp)
    80001214:	01313423          	sd	s3,8(sp)
    80001218:	03010413          	addi	s0,sp,48
    8000121c:	00050493          	mv	s1,a0
    80001220:	00058913          	mv	s2,a1
    80001224:	00060993          	mv	s3,a2
    //alokacija steka i proslednjivanje kroz registre
    void* stek = start_routine ? mem_alloc(DEFAULT_STACK_SIZE) : nullptr;
    80001228:	04058663          	beqz	a1,80001274 <_Z13thread_createPP3TCBPFvPvES2_+0x78>
    8000122c:	00001537          	lui	a0,0x1
    80001230:	00000097          	auipc	ra,0x0
    80001234:	f60080e7          	jalr	-160(ra) # 80001190 <_Z9mem_allocm>
    asm volatile("mv a4, %0" :: "r"(stek));
    80001238:	00050713          	mv	a4,a0

    //smestanje arg na stek
    asm volatile("mv a3, %0" :: "r"(arg));
    8000123c:	00098693          	mv	a3,s3
    asm volatile("mv a2, %0" :: "r"(start_routine));
    80001240:	00090613          	mv	a2,s2
    asm volatile("mv a1, %0" :: "r"(handle));
    80001244:	00048593          	mv	a1,s1

    //pozivanje sist. poziva
    asm volatile ("li a0, %0" :: "i"(0x11));
    80001248:	01100513          	li	a0,17
    asm volatile("ecall");
    8000124c:	00000073          	ecall

    //dohvatanje i vracanje povratne vrednosti
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    80001250:	00050513          	mv	a0,a0
    80001254:	0005051b          	sext.w	a0,a0
    return povrVrednost;
}
    80001258:	02813083          	ld	ra,40(sp)
    8000125c:	02013403          	ld	s0,32(sp)
    80001260:	01813483          	ld	s1,24(sp)
    80001264:	01013903          	ld	s2,16(sp)
    80001268:	00813983          	ld	s3,8(sp)
    8000126c:	03010113          	addi	sp,sp,48
    80001270:	00008067          	ret
    void* stek = start_routine ? mem_alloc(DEFAULT_STACK_SIZE) : nullptr;
    80001274:	00000513          	li	a0,0
    80001278:	fc1ff06f          	j	80001238 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>
    if(!handle) return -1;
    8000127c:	fff00513          	li	a0,-1
}
    80001280:	00008067          	ret

0000000080001284 <_Z11thread_exitv>:

int thread_exit(){
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00813423          	sd	s0,8(sp)
    8000128c:	01010413          	addi	s0,sp,16
    asm volatile("li a0, %0" :: "i"(0x12));
    80001290:	01200513          	li	a0,18
    asm volatile("ecall");
    80001294:	00000073          	ecall
    return 0;
}
    80001298:	00000513          	li	a0,0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    asm volatile("li a0, %0" :: "i"(0x13));
    800012b4:	01300513          	li	a0,19
    asm volatile("ecall");
    800012b8:	00000073          	ecall
}
    800012bc:	00813403          	ld	s0,8(sp)
    800012c0:	01010113          	addi	sp,sp,16
    800012c4:	00008067          	ret

00000000800012c8 <_Z10time_sleepm>:

int time_sleep(time_t time)
{
    800012c8:	ff010113          	addi	sp,sp,-16
    800012cc:	00813423          	sd	s0,8(sp)
    800012d0:	01010413          	addi	s0,sp,16
    return -1;
}
    800012d4:	fff00513          	li	a0,-1
    800012d8:	00813403          	ld	s0,8(sp)
    800012dc:	01010113          	addi	sp,sp,16
    800012e0:	00008067          	ret

00000000800012e4 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned val) {
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00813423          	sd	s0,8(sp)
    800012ec:	01010413          	addi	s0,sp,16
    asm volatile("mv a2, %0" :: "r"(val));
    800012f0:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0" :: "r"(handle));
    800012f4:	00050593          	mv	a1,a0

    asm volatile("li a0, %0" :: "i"(0x21));
    800012f8:	02100513          	li	a0,33
    asm volatile("ecall");
    800012fc:	00000073          	ecall

    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    80001300:	00050513          	mv	a0,a0
    return povrVrednost;
}
    80001304:	0005051b          	sext.w	a0,a0
    80001308:	00813403          	ld	s0,8(sp)
    8000130c:	01010113          	addi	sp,sp,16
    80001310:	00008067          	ret

0000000080001314 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle){
    80001314:	ff010113          	addi	sp,sp,-16
    80001318:	00813423          	sd	s0,8(sp)
    8000131c:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"(handle));
    80001320:	00050593          	mv	a1,a0
    asm volatile("li a0, %0" :: "i"(0x22));
    80001324:	02200513          	li	a0,34
    asm volatile("ecall");
    80001328:	00000073          	ecall
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    8000132c:	00050513          	mv	a0,a0
    return povrVrednost;
}
    80001330:	0005051b          	sext.w	a0,a0
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t handle){
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00813423          	sd	s0,8(sp)
    80001348:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"(handle));
    8000134c:	00050593          	mv	a1,a0
    asm volatile("li a0, %0" :: "i"(0x23));
    80001350:	02300513          	li	a0,35
    asm volatile("ecall");
    80001354:	00000073          	ecall
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    80001358:	00050513          	mv	a0,a0
    return povrVrednost;
}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t handle){
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"(handle));
    80001378:	00050593          	mv	a1,a0
    asm volatile("li a0, %0" :: "i"(0x24));
    8000137c:	02400513          	li	a0,36
    asm volatile("ecall");
    80001380:	00000073          	ecall
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    80001384:	00050513          	mv	a0,a0
    return povrVrednost;
}
    80001388:	0005051b          	sext.w	a0,a0
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z13sem_timedwaitP4_semm>:

int sem_timedwait(sem_t handle, time_t time){
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    asm volatile("mv a2, %0" :: "r"(time));
    800013a4:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0" :: "r"(handle));
    800013a8:	00050593          	mv	a1,a0
    asm volatile("li a0, %0" :: "i"(0x25));
    800013ac:	02500513          	li	a0,37
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    800013b0:	00050513          	mv	a0,a0
    return povrVrednost; //u riscv samo vracam -1 kao povr vrednost kroz a0
}
    800013b4:	0005051b          	sext.w	a0,a0
    800013b8:	00813403          	ld	s0,8(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t handle){
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00813423          	sd	s0,8(sp)
    800013cc:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"(handle));
    800013d0:	00050593          	mv	a1,a0
    asm volatile("li a0, %0" :: "i"(0x26));
    800013d4:	02600513          	li	a0,38
    int povrVrednost;
    asm volatile("mv %0, a0" : "=r"(povrVrednost));
    800013d8:	00050513          	mv	a0,a0
    return povrVrednost; //u riscv samo vracam -1 kao povr vrednost kroz a0
    800013dc:	0005051b          	sext.w	a0,a0
    800013e0:	00813403          	ld	s0,8(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_ZN3Sem8sem_openEi>:
//

#include "../h/Semafor.hpp"
#include "../test/printing.hpp"

Sem* Sem::sem_open(int val){
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	02010413          	addi	s0,sp,32
    80001400:	00050493          	mv	s1,a0
    return new Sem(val);
    80001404:	01800513          	li	a0,24
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	498080e7          	jalr	1176(ra) # 800018a0 <_Znwm>
    int value;
    List<TCB> blokirani;
    //bool zatvoren;

public:
    Sem(int init = 1) : value(init) {}
    80001410:	00952023          	sw	s1,0(a0) # 1000 <_entry-0x7ffff000>
        Elem(T *data, Elem *next) : data(data), next(next){}
    };

    Elem *head, *tail;
public:
    List() : head(0), tail(0) {}
    80001414:	00053423          	sd	zero,8(a0)
    80001418:	00053823          	sd	zero,16(a0)
}
    8000141c:	01813083          	ld	ra,24(sp)
    80001420:	01013403          	ld	s0,16(sp)
    80001424:	00813483          	ld	s1,8(sp)
    80001428:	02010113          	addi	sp,sp,32
    8000142c:	00008067          	ret

0000000080001430 <_ZN3Sem9sem_closeEv>:

void Sem::sem_close() {
    80001430:	fe010113          	addi	sp,sp,-32
    80001434:	00113c23          	sd	ra,24(sp)
    80001438:	00813823          	sd	s0,16(sp)
    8000143c:	00913423          	sd	s1,8(sp)
    80001440:	01213023          	sd	s2,0(sp)
    80001444:	02010413          	addi	s0,sp,32
    80001448:	00050493          	mv	s1,a0
    TCB* curr = 0;
    8000144c:	0200006f          	j	8000146c <_ZN3Sem9sem_closeEv+0x3c>
        if (!head) return 0;

        Elem *elem = head;
        head = head->next;

        if(!head) tail = 0;
    80001450:	0004b823          	sd	zero,16(s1)

        T* ret = elem->data;
    80001454:	00053903          	ld	s2,0(a0)
        delete elem;
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	498080e7          	jalr	1176(ra) # 800018f0 <_ZdlPv>
    while (blokirani.peekFirst()){
        curr = blokirani.removeFirst();
        Scheduler::put(curr);
    80001460:	00090513          	mv	a0,s2
    80001464:	00001097          	auipc	ra,0x1
    80001468:	aec080e7          	jalr	-1300(ra) # 80001f50 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T* peekFirst(){
       if(!head) {return 0;}
    8000146c:	0084b503          	ld	a0,8(s1)
    80001470:	00050e63          	beqz	a0,8000148c <_ZN3Sem9sem_closeEv+0x5c>
        return head->data;
    80001474:	00053783          	ld	a5,0(a0)
    while (blokirani.peekFirst()){
    80001478:	00078a63          	beqz	a5,8000148c <_ZN3Sem9sem_closeEv+0x5c>
        head = head->next;
    8000147c:	00853783          	ld	a5,8(a0)
    80001480:	00f4b423          	sd	a5,8(s1)
        if(!head) tail = 0;
    80001484:	fc0798e3          	bnez	a5,80001454 <_ZN3Sem9sem_closeEv+0x24>
    80001488:	fc9ff06f          	j	80001450 <_ZN3Sem9sem_closeEv+0x20>
    }
}
    8000148c:	01813083          	ld	ra,24(sp)
    80001490:	01013403          	ld	s0,16(sp)
    80001494:	00813483          	ld	s1,8(sp)
    80001498:	00013903          	ld	s2,0(sp)
    8000149c:	02010113          	addi	sp,sp,32
    800014a0:	00008067          	ret

00000000800014a4 <_ZN3Sem8sem_waitEv>:

void Sem::sem_wait() {
    800014a4:	fe010113          	addi	sp,sp,-32
    800014a8:	00113c23          	sd	ra,24(sp)
    800014ac:	00813823          	sd	s0,16(sp)
    800014b0:	00913423          	sd	s1,8(sp)
    800014b4:	01213023          	sd	s2,0(sp)
    800014b8:	02010413          	addi	s0,sp,32
    TCB* curr = TCB::running;
    800014bc:	00009797          	auipc	a5,0x9
    800014c0:	e547b783          	ld	a5,-428(a5) # 8000a310 <_GLOBAL_OFFSET_TABLE_+0x18>
    800014c4:	0007b903          	ld	s2,0(a5)
    if (--value < 0) {
    800014c8:	00052783          	lw	a5,0(a0)
    800014cc:	fff7879b          	addiw	a5,a5,-1
    800014d0:	00f52023          	sw	a5,0(a0)
    800014d4:	02079713          	slli	a4,a5,0x20
    800014d8:	00074e63          	bltz	a4,800014f4 <_ZN3Sem8sem_waitEv+0x50>
        curr->setActive(false);
        blokirani.addLast(curr);
        TCB::dispatch();
    }
}
    800014dc:	01813083          	ld	ra,24(sp)
    800014e0:	01013403          	ld	s0,16(sp)
    800014e4:	00813483          	ld	s1,8(sp)
    800014e8:	00013903          	ld	s2,0(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret
    800014f4:	00050493          	mv	s1,a0

    bool isFinished() const { return finished; }
    void setFinished(bool flag) { finished = flag; }

    bool getActive () const { return active; }
    void setActive (bool val) { active = val; }
    800014f8:	020904a3          	sb	zero,41(s2)
        Elem *elem = new Elem(data, 0);
    800014fc:	01000513          	li	a0,16
    80001500:	00000097          	auipc	ra,0x0
    80001504:	3a0080e7          	jalr	928(ra) # 800018a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next){}
    80001508:	01253023          	sd	s2,0(a0)
    8000150c:	00053423          	sd	zero,8(a0)
        if(tail){
    80001510:	0104b783          	ld	a5,16(s1)
    80001514:	00078c63          	beqz	a5,8000152c <_ZN3Sem8sem_waitEv+0x88>
            tail->next = elem;
    80001518:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000151c:	00a4b823          	sd	a0,16(s1)
        TCB::dispatch();
    80001520:	00000097          	auipc	ra,0x0
    80001524:	2b8080e7          	jalr	696(ra) # 800017d8 <_ZN3TCB8dispatchEv>
}
    80001528:	fb5ff06f          	j	800014dc <_ZN3Sem8sem_waitEv+0x38>
            head = tail = elem;
    8000152c:	00a4b823          	sd	a0,16(s1)
    80001530:	00a4b423          	sd	a0,8(s1)
    80001534:	fedff06f          	j	80001520 <_ZN3Sem8sem_waitEv+0x7c>

0000000080001538 <_ZN3Sem10sem_signalEv>:

void Sem::sem_signal() {
    value++;
    80001538:	00052783          	lw	a5,0(a0)
    8000153c:	0017879b          	addiw	a5,a5,1
    80001540:	0007871b          	sext.w	a4,a5
    80001544:	00f52023          	sw	a5,0(a0)
    if (value <= 0 && blokirani.peekFirst()){
    80001548:	00e05463          	blez	a4,80001550 <_ZN3Sem10sem_signalEv+0x18>
    8000154c:	00008067          	ret
       if(!head) {return 0;}
    80001550:	00853783          	ld	a5,8(a0)
    80001554:	fe078ce3          	beqz	a5,8000154c <_ZN3Sem10sem_signalEv+0x14>
        return head->data;
    80001558:	0007b783          	ld	a5,0(a5)
    8000155c:	fe0788e3          	beqz	a5,8000154c <_ZN3Sem10sem_signalEv+0x14>
void Sem::sem_signal() {
    80001560:	fe010113          	addi	sp,sp,-32
    80001564:	00113c23          	sd	ra,24(sp)
    80001568:	00813823          	sd	s0,16(sp)
    8000156c:	00913423          	sd	s1,8(sp)
    80001570:	02010413          	addi	s0,sp,32
    80001574:	00100713          	li	a4,1
    80001578:	02e784a3          	sb	a4,41(a5)
        if (!head) return 0;
    8000157c:	00853783          	ld	a5,8(a0)
    80001580:	04078463          	beqz	a5,800015c8 <_ZN3Sem10sem_signalEv+0x90>
        head = head->next;
    80001584:	0087b703          	ld	a4,8(a5)
    80001588:	00e53423          	sd	a4,8(a0)
        if(!head) tail = 0;
    8000158c:	02070a63          	beqz	a4,800015c0 <_ZN3Sem10sem_signalEv+0x88>
        T* ret = elem->data;
    80001590:	0007b483          	ld	s1,0(a5)
        delete elem;
    80001594:	00078513          	mv	a0,a5
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	358080e7          	jalr	856(ra) # 800018f0 <_ZdlPv>
        blokirani.peekFirst()->setActive(true);
        Scheduler::put(blokirani.removeFirst());
    800015a0:	00048513          	mv	a0,s1
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	9ac080e7          	jalr	-1620(ra) # 80001f50 <_ZN9Scheduler3putEP3TCB>
    }
}
    800015ac:	01813083          	ld	ra,24(sp)
    800015b0:	01013403          	ld	s0,16(sp)
    800015b4:	00813483          	ld	s1,8(sp)
    800015b8:	02010113          	addi	sp,sp,32
    800015bc:	00008067          	ret
        if(!head) tail = 0;
    800015c0:	00053823          	sd	zero,16(a0)
    800015c4:	fcdff06f          	j	80001590 <_ZN3Sem10sem_signalEv+0x58>
        if (!head) return 0;
    800015c8:	00078493          	mv	s1,a5
    800015cc:	fd5ff06f          	j	800015a0 <_ZN3Sem10sem_signalEv+0x68>

00000000800015d0 <_ZN3Sem11sem_trywaitEv>:

int Sem::sem_trywait() {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00813423          	sd	s0,8(sp)
    800015d8:	01010413          	addi	s0,sp,16
    value--;
    800015dc:	00052703          	lw	a4,0(a0)
    800015e0:	fff7079b          	addiw	a5,a4,-1
    800015e4:	00f52023          	sw	a5,0(a0)
    if (value < 0)
    800015e8:	02079693          	slli	a3,a5,0x20
    800015ec:	0006ca63          	bltz	a3,80001600 <_ZN3Sem11sem_trywaitEv+0x30>
    {
        value++;
        return 1;
    }
    else return 0;
    800015f0:	00000513          	li	a0,0
}
    800015f4:	00813403          	ld	s0,8(sp)
    800015f8:	01010113          	addi	sp,sp,16
    800015fc:	00008067          	ret
        value++;
    80001600:	00e52023          	sw	a4,0(a0)
        return 1;
    80001604:	00100513          	li	a0,1
    80001608:	fedff06f          	j	800015f4 <_ZN3Sem11sem_trywaitEv+0x24>

000000008000160c <_Z16userMainExecutorPv>:
#include "../test/printing.hpp"

void userMain();

void userMainExecutor(void*)
{
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00113423          	sd	ra,8(sp)
    80001614:	00813023          	sd	s0,0(sp)
    80001618:	01010413          	addi	s0,sp,16
    userMain();
    8000161c:	00003097          	auipc	ra,0x3
    80001620:	5e0080e7          	jalr	1504(ra) # 80004bfc <_Z8userMainv>
}
    80001624:	00813083          	ld	ra,8(sp)
    80001628:	00013403          	ld	s0,0(sp)
    8000162c:	01010113          	addi	sp,sp,16
    80001630:	00008067          	ret

0000000080001634 <main>:

int main() {
    80001634:	fe010113          	addi	sp,sp,-32
    80001638:	00113c23          	sd	ra,24(sp)
    8000163c:	00813823          	sd	s0,16(sp)
    80001640:	02010413          	addi	s0,sp,32
    // Postavi trap handler za prekide
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001644:	00009797          	auipc	a5,0x9
    80001648:	cbc7b783          	ld	a5,-836(a5) # 8000a300 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000164c:	10579073          	csrw	stvec,a5
    TCB *main_handle;
    thread_create(&main_handle, nullptr, nullptr);
    80001650:	00000613          	li	a2,0
    80001654:	00000593          	li	a1,0
    80001658:	fe840513          	addi	a0,s0,-24
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	ba0080e7          	jalr	-1120(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main_handle;
    80001664:	00009797          	auipc	a5,0x9
    80001668:	cac7b783          	ld	a5,-852(a5) # 8000a310 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000166c:	fe843703          	ld	a4,-24(s0)
    80001670:	00e7b023          	sd	a4,0(a5)
    thread_t t;
    thread_create(&t, userMainExecutor, nullptr);
    80001674:	00000613          	li	a2,0
    80001678:	00000597          	auipc	a1,0x0
    8000167c:	f9458593          	addi	a1,a1,-108 # 8000160c <_Z16userMainExecutorPv>
    80001680:	fe040513          	addi	a0,s0,-32
    80001684:	00000097          	auipc	ra,0x0
    80001688:	b78080e7          	jalr	-1160(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    while(!t->isFinished())
    8000168c:	fe043783          	ld	a5,-32(s0)
    bool isFinished() const { return finished; }
    80001690:	0287c783          	lbu	a5,40(a5)
    80001694:	0ff7f793          	andi	a5,a5,255
    80001698:	00079863          	bnez	a5,800016a8 <main+0x74>
    {
        thread_dispatch();
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	c0c080e7          	jalr	-1012(ra) # 800012a8 <_Z15thread_dispatchv>
    800016a4:	fe9ff06f          	j	8000168c <main+0x58>
    }
    return 0;
    800016a8:	00000513          	li	a0,0
    800016ac:	01813083          	ld	ra,24(sp)
    800016b0:	01013403          	ld	s0,16(sp)
    800016b4:	02010113          	addi	sp,sp,32
    800016b8:	00008067          	ret

00000000800016bc <_ZN3TCB13threadWrapperEv>:
//    printInt((long )running, 16);
//    putc('\n');
    if (old != running) TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00113423          	sd	ra,8(sp)
    800016c4:	00813023          	sd	s0,0(sp)
    800016c8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	514080e7          	jalr	1300(ra) # 80001be0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argumentiFje);
    800016d4:	00009797          	auipc	a5,0x9
    800016d8:	c8c7b783          	ld	a5,-884(a5) # 8000a360 <_ZN3TCB7runningE>
    800016dc:	0007b703          	ld	a4,0(a5)
    800016e0:	0087b503          	ld	a0,8(a5)
    800016e4:	000700e7          	jalr	a4
    thread_exit();
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	b9c080e7          	jalr	-1124(ra) # 80001284 <_Z11thread_exitv>
}
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN3TCB12createThreadEPFvPvES0_Pc>:
TCB * TCB::createThread(TCB::Body body, void* arguments, char* stack_space) {
    80001700:	fd010113          	addi	sp,sp,-48
    80001704:	02113423          	sd	ra,40(sp)
    80001708:	02813023          	sd	s0,32(sp)
    8000170c:	00913c23          	sd	s1,24(sp)
    80001710:	01213823          	sd	s2,16(sp)
    80001714:	01313423          	sd	s3,8(sp)
    80001718:	01413023          	sd	s4,0(sp)
    8000171c:	03010413          	addi	s0,sp,48
    80001720:	00050993          	mv	s3,a0
    80001724:	00058a13          	mv	s4,a1
    80001728:	00060913          	mv	s2,a2
    return new TCB(body, arguments, stack_space);
    8000172c:	03000513          	li	a0,48
    80001730:	00000097          	auipc	ra,0x0
    80001734:	170080e7          	jalr	368(ra) # 800018a0 <_Znwm>
    80001738:	00050493          	mv	s1,a0
            active(true)
    8000173c:	01353023          	sd	s3,0(a0)
    80001740:	01453423          	sd	s4,8(a0)
            stack(body != nullptr ? stek : nullptr),
    80001744:	04098263          	beqz	s3,80001788 <_ZN3TCB12createThreadEPFvPvES0_Pc+0x88>
            active(true)
    80001748:	0124b823          	sd	s2,16(s1)
    8000174c:	00000797          	auipc	a5,0x0
    80001750:	f7078793          	addi	a5,a5,-144 # 800016bc <_ZN3TCB13threadWrapperEv>
    80001754:	00f4bc23          	sd	a5,24(s1)
                            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001758:	02090c63          	beqz	s2,80001790 <_ZN3TCB12createThreadEPFvPvES0_Pc+0x90>
    8000175c:	00001637          	lui	a2,0x1
    80001760:	00c90933          	add	s2,s2,a2
            active(true)
    80001764:	0324b023          	sd	s2,32(s1)
    80001768:	02048423          	sb	zero,40(s1)
    8000176c:	00100793          	li	a5,1
    80001770:	02f484a3          	sb	a5,41(s1)
        if(body!=nullptr) Scheduler::put(this);
    80001774:	04098063          	beqz	s3,800017b4 <_ZN3TCB12createThreadEPFvPvES0_Pc+0xb4>
    80001778:	00048513          	mv	a0,s1
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	7d4080e7          	jalr	2004(ra) # 80001f50 <_ZN9Scheduler3putEP3TCB>
    80001784:	0300006f          	j	800017b4 <_ZN3TCB12createThreadEPFvPvES0_Pc+0xb4>
            stack(body != nullptr ? stek : nullptr),
    80001788:	00000913          	li	s2,0
    8000178c:	fbdff06f          	j	80001748 <_ZN3TCB12createThreadEPFvPvES0_Pc+0x48>
                            stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001790:	00000913          	li	s2,0
    80001794:	fd1ff06f          	j	80001764 <_ZN3TCB12createThreadEPFvPvES0_Pc+0x64>
    80001798:	00050913          	mv	s2,a0
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	150080e7          	jalr	336(ra) # 800018f0 <_ZdlPv>
    800017a8:	00090513          	mv	a0,s2
    800017ac:	0000a097          	auipc	ra,0xa
    800017b0:	cec080e7          	jalr	-788(ra) # 8000b498 <_Unwind_Resume>
}
    800017b4:	00048513          	mv	a0,s1
    800017b8:	02813083          	ld	ra,40(sp)
    800017bc:	02013403          	ld	s0,32(sp)
    800017c0:	01813483          	ld	s1,24(sp)
    800017c4:	01013903          	ld	s2,16(sp)
    800017c8:	00813983          	ld	s3,8(sp)
    800017cc:	00013a03          	ld	s4,0(sp)
    800017d0:	03010113          	addi	sp,sp,48
    800017d4:	00008067          	ret

00000000800017d8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    800017d8:	fe010113          	addi	sp,sp,-32
    800017dc:	00113c23          	sd	ra,24(sp)
    800017e0:	00813823          	sd	s0,16(sp)
    800017e4:	00913423          	sd	s1,8(sp)
    800017e8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800017ec:	00009497          	auipc	s1,0x9
    800017f0:	b744b483          	ld	s1,-1164(s1) # 8000a360 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800017f4:	0284c783          	lbu	a5,40(s1)
    800017f8:	0ff7f793          	andi	a5,a5,255
    if(!old->isFinished() && old->getActive()) { Scheduler::put(old); }
    800017fc:	00079663          	bnez	a5,80001808 <_ZN3TCB8dispatchEv+0x30>
    bool getActive () const { return active; }
    80001800:	0294c783          	lbu	a5,41(s1)
    80001804:	02079e63          	bnez	a5,80001840 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	6e0080e7          	jalr	1760(ra) # 80001ee8 <_ZN9Scheduler3getEv>
    80001810:	00009797          	auipc	a5,0x9
    80001814:	b4a7b823          	sd	a0,-1200(a5) # 8000a360 <_ZN3TCB7runningE>
    if (old != running) TCB::contextSwitch(&old->context, &running->context);
    80001818:	00a48a63          	beq	s1,a0,8000182c <_ZN3TCB8dispatchEv+0x54>
    8000181c:	01850593          	addi	a1,a0,24
    80001820:	01848513          	addi	a0,s1,24
    80001824:	00000097          	auipc	ra,0x0
    80001828:	8ec080e7          	jalr	-1812(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000182c:	01813083          	ld	ra,24(sp)
    80001830:	01013403          	ld	s0,16(sp)
    80001834:	00813483          	ld	s1,8(sp)
    80001838:	02010113          	addi	sp,sp,32
    8000183c:	00008067          	ret
    if(!old->isFinished() && old->getActive()) { Scheduler::put(old); }
    80001840:	00048513          	mv	a0,s1
    80001844:	00000097          	auipc	ra,0x0
    80001848:	70c080e7          	jalr	1804(ra) # 80001f50 <_ZN9Scheduler3putEP3TCB>
    8000184c:	fbdff06f          	j	80001808 <_ZN3TCB8dispatchEv+0x30>

0000000080001850 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
}


Thread::~Thread(){
    80001850:	ff010113          	addi	sp,sp,-16
    80001854:	00813423          	sd	s0,8(sp)
    80001858:	01010413          	addi	s0,sp,16

}
    8000185c:	00813403          	ld	s0,8(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00113423          	sd	ra,8(sp)
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	01010413          	addi	s0,sp,16
    80001878:	00009797          	auipc	a5,0x9
    8000187c:	8c878793          	addi	a5,a5,-1848 # 8000a140 <_ZTV9Semaphore+0x10>
    80001880:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001884:	00853503          	ld	a0,8(a0)
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	a8c080e7          	jalr	-1396(ra) # 80001314 <_Z9sem_closeP4_sem>
}
    80001890:	00813083          	ld	ra,8(sp)
    80001894:	00013403          	ld	s0,0(sp)
    80001898:	01010113          	addi	sp,sp,16
    8000189c:	00008067          	ret

00000000800018a0 <_Znwm>:
{
    800018a0:	ff010113          	addi	sp,sp,-16
    800018a4:	00113423          	sd	ra,8(sp)
    800018a8:	00813023          	sd	s0,0(sp)
    800018ac:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	8e0080e7          	jalr	-1824(ra) # 80001190 <_Z9mem_allocm>
}
    800018b8:	00813083          	ld	ra,8(sp)
    800018bc:	00013403          	ld	s0,0(sp)
    800018c0:	01010113          	addi	sp,sp,16
    800018c4:	00008067          	ret

00000000800018c8 <_Znam>:
{
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00113423          	sd	ra,8(sp)
    800018d0:	00813023          	sd	s0,0(sp)
    800018d4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	8b8080e7          	jalr	-1864(ra) # 80001190 <_Z9mem_allocm>
}
    800018e0:	00813083          	ld	ra,8(sp)
    800018e4:	00013403          	ld	s0,0(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <_ZdlPv>:
{
    800018f0:	ff010113          	addi	sp,sp,-16
    800018f4:	00113423          	sd	ra,8(sp)
    800018f8:	00813023          	sd	s0,0(sp)
    800018fc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001900:	00000097          	auipc	ra,0x0
    80001904:	8d0080e7          	jalr	-1840(ra) # 800011d0 <_Z8mem_freePv>
}
    80001908:	00813083          	ld	ra,8(sp)
    8000190c:	00013403          	ld	s0,0(sp)
    80001910:	01010113          	addi	sp,sp,16
    80001914:	00008067          	ret

0000000080001918 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    80001918:	ff010113          	addi	sp,sp,-16
    8000191c:	00113423          	sd	ra,8(sp)
    80001920:	00813023          	sd	s0,0(sp)
    80001924:	01010413          	addi	s0,sp,16
}
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	fc8080e7          	jalr	-56(ra) # 800018f0 <_ZdlPv>
    80001930:	00813083          	ld	ra,8(sp)
    80001934:	00013403          	ld	s0,0(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001940:	fe010113          	addi	sp,sp,-32
    80001944:	00113c23          	sd	ra,24(sp)
    80001948:	00813823          	sd	s0,16(sp)
    8000194c:	00913423          	sd	s1,8(sp)
    80001950:	02010413          	addi	s0,sp,32
    80001954:	00050493          	mv	s1,a0
}
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	f10080e7          	jalr	-240(ra) # 80001868 <_ZN9SemaphoreD1Ev>
    80001960:	00048513          	mv	a0,s1
    80001964:	00000097          	auipc	ra,0x0
    80001968:	f8c080e7          	jalr	-116(ra) # 800018f0 <_ZdlPv>
    8000196c:	01813083          	ld	ra,24(sp)
    80001970:	01013403          	ld	s0,16(sp)
    80001974:	00813483          	ld	s1,8(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <_ZdaPv>:
{
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00113423          	sd	ra,8(sp)
    80001988:	00813023          	sd	s0,0(sp)
    8000198c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001990:	00000097          	auipc	ra,0x0
    80001994:	840080e7          	jalr	-1984(ra) # 800011d0 <_Z8mem_freePv>
}
    80001998:	00813083          	ld	ra,8(sp)
    8000199c:	00013403          	ld	s0,0(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret

00000000800019a8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00813423          	sd	s0,8(sp)
    800019b0:	01010413          	addi	s0,sp,16
    800019b4:	00008797          	auipc	a5,0x8
    800019b8:	76478793          	addi	a5,a5,1892 # 8000a118 <_ZTV6Thread+0x10>
    800019bc:	00f53023          	sd	a5,0(a0)
    800019c0:	00b53823          	sd	a1,16(a0)
    800019c4:	00c53c23          	sd	a2,24(a0)
}
    800019c8:	00813403          	ld	s0,8(sp)
    800019cc:	01010113          	addi	sp,sp,16
    800019d0:	00008067          	ret

00000000800019d4 <_ZN6Thread5startEv>:
int Thread::start() {
    800019d4:	ff010113          	addi	sp,sp,-16
    800019d8:	00113423          	sd	ra,8(sp)
    800019dc:	00813023          	sd	s0,0(sp)
    800019e0:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    800019e4:	01853603          	ld	a2,24(a0)
    800019e8:	01053583          	ld	a1,16(a0)
    800019ec:	00850513          	addi	a0,a0,8
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	80c080e7          	jalr	-2036(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    800019f8:	00813083          	ld	ra,8(sp)
    800019fc:	00013403          	ld	s0,0(sp)
    80001a00:	01010113          	addi	sp,sp,16
    80001a04:	00008067          	ret

0000000080001a08 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00113423          	sd	ra,8(sp)
    80001a10:	00813023          	sd	s0,0(sp)
    80001a14:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	890080e7          	jalr	-1904(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80001a20:	00813083          	ld	ra,8(sp)
    80001a24:	00013403          	ld	s0,0(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN6ThreadC1Ev>:
Thread::Thread() : body(&runWrapper), arg(this){
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00813423          	sd	s0,8(sp)
    80001a38:	01010413          	addi	s0,sp,16
    80001a3c:	00008797          	auipc	a5,0x8
    80001a40:	6dc78793          	addi	a5,a5,1756 # 8000a118 <_ZTV6Thread+0x10>
    80001a44:	00f53023          	sd	a5,0(a0)
    80001a48:	00000797          	auipc	a5,0x0
    80001a4c:	16c78793          	addi	a5,a5,364 # 80001bb4 <_ZN6Thread10runWrapperEPv>
    80001a50:	00f53823          	sd	a5,16(a0)
    80001a54:	00a53c23          	sd	a0,24(a0)
}
    80001a58:	00813403          	ld	s0,8(sp)
    80001a5c:	01010113          	addi	sp,sp,16
    80001a60:	00008067          	ret

0000000080001a64 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001a64:	ff010113          	addi	sp,sp,-16
    80001a68:	00113423          	sd	ra,8(sp)
    80001a6c:	00813023          	sd	s0,0(sp)
    80001a70:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001a74:	00058513          	mv	a0,a1
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	850080e7          	jalr	-1968(ra) # 800012c8 <_Z10time_sleepm>
}
    80001a80:	00813083          	ld	ra,8(sp)
    80001a84:	00013403          	ld	s0,0(sp)
    80001a88:	01010113          	addi	sp,sp,16
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001a90:	ff010113          	addi	sp,sp,-16
    80001a94:	00113423          	sd	ra,8(sp)
    80001a98:	00813023          	sd	s0,0(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    80001aa0:	00008797          	auipc	a5,0x8
    80001aa4:	6a078793          	addi	a5,a5,1696 # 8000a140 <_ZTV9Semaphore+0x10>
    80001aa8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001aac:	00850513          	addi	a0,a0,8
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	834080e7          	jalr	-1996(ra) # 800012e4 <_Z8sem_openPP4_semj>
}
    80001ab8:	00813083          	ld	ra,8(sp)
    80001abc:	00013403          	ld	s0,0(sp)
    80001ac0:	01010113          	addi	sp,sp,16
    80001ac4:	00008067          	ret

0000000080001ac8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001ac8:	ff010113          	addi	sp,sp,-16
    80001acc:	00113423          	sd	ra,8(sp)
    80001ad0:	00813023          	sd	s0,0(sp)
    80001ad4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001ad8:	00853503          	ld	a0,8(a0)
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	864080e7          	jalr	-1948(ra) # 80001340 <_Z8sem_waitP4_sem>
}
    80001ae4:	00813083          	ld	ra,8(sp)
    80001ae8:	00013403          	ld	s0,0(sp)
    80001aec:	01010113          	addi	sp,sp,16
    80001af0:	00008067          	ret

0000000080001af4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	00813023          	sd	s0,0(sp)
    80001b00:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001b04:	00853503          	ld	a0,8(a0)
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	864080e7          	jalr	-1948(ra) # 8000136c <_Z10sem_signalP4_sem>
}
    80001b10:	00813083          	ld	ra,8(sp)
    80001b14:	00013403          	ld	s0,0(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	00813023          	sd	s0,0(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001b30:	00853503          	ld	a0,8(a0)
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	890080e7          	jalr	-1904(ra) # 800013c4 <_Z11sem_trywaitP4_sem>
}
    80001b3c:	00813083          	ld	ra,8(sp)
    80001b40:	00013403          	ld	s0,0(sp)
    80001b44:	01010113          	addi	sp,sp,16
    80001b48:	00008067          	ret

0000000080001b4c <_ZN7Console4getcEv>:


char Console::getc() {
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00113423          	sd	ra,8(sp)
    80001b54:	00813023          	sd	s0,0(sp)
    80001b58:	01010413          	addi	s0,sp,16
    return ::getc();
    80001b5c:	fffff097          	auipc	ra,0xfffff
    80001b60:	60c080e7          	jalr	1548(ra) # 80001168 <_Z4getcv>
}
    80001b64:	00813083          	ld	ra,8(sp)
    80001b68:	00013403          	ld	s0,0(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001b84:	fffff097          	auipc	ra,0xfffff
    80001b88:	5c0080e7          	jalr	1472(ra) # 80001144 <_Z4putcc>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_ZN6Thread3runEv>:
    static void dispatch ();

protected:

    Thread();
    virtual void run() {};
    80001b9c:	ff010113          	addi	sp,sp,-16
    80001ba0:	00813423          	sd	s0,8(sp)
    80001ba4:	01010413          	addi	s0,sp,16
    80001ba8:	00813403          	ld	s0,8(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN6Thread10runWrapperEPv>:

private:
    static void runWrapper(void* thread_p) {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00113423          	sd	ra,8(sp)
    80001bbc:	00813023          	sd	s0,0(sp)
    80001bc0:	01010413          	addi	s0,sp,16
        ((Thread*)thread_p)->run();
    80001bc4:	00053783          	ld	a5,0(a0)
    80001bc8:	0107b783          	ld	a5,16(a5)
    80001bcc:	000780e7          	jalr	a5
    }
    80001bd0:	00813083          	ld	ra,8(sp)
    80001bd4:	00013403          	ld	s0,0(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
#include "../h/Semafor.hpp"

void Riscv::popSppSpie() {
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813423          	sd	s0,8(sp)
    80001be8:	01010413          	addi	s0,sp,16
inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask){
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001bec:	20000793          	li	a5,512
    80001bf0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra"); // ra je lokacija sa koje je funkcija pozvana
    80001bf4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001bf8:	10200073          	sret
}
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001c08:	fb010113          	addi	sp,sp,-80
    80001c0c:	04113423          	sd	ra,72(sp)
    80001c10:	04813023          	sd	s0,64(sp)
    80001c14:	02913c23          	sd	s1,56(sp)
    80001c18:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c1c:	142027f3          	csrr	a5,scause
    80001c20:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001c24:	fc843483          	ld	s1,-56(s0)
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL ) {
    80001c28:	ff848713          	addi	a4,s1,-8
    80001c2c:	00100793          	li	a5,1
    80001c30:	08e7f463          	bgeu	a5,a4,80001cb8 <_ZN5Riscv20handleSupervisorTrapEv+0xb0>

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scause == 0x8000000000000001UL) {
    80001c34:	fff00793          	li	a5,-1
    80001c38:	03f79793          	slli	a5,a5,0x3f
    80001c3c:	00178793          	addi	a5,a5,1
    80001c40:	24f48863          	beq	s1,a5,80001e90 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
//            TCB::dispatch();
//            w_sepc(sepc); // restauriramo sepc od niti koja je ranije izgubila procesor
//
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    80001c44:	fff00793          	li	a5,-1
    80001c48:	03f79793          	slli	a5,a5,0x3f
    80001c4c:	00978793          	addi	a5,a5,9
    80001c50:	24f48663          	beq	s1,a5,80001e9c <_ZN5Riscv20handleSupervisorTrapEv+0x294>
        // interrupt: yes, cause code: supervisor external interrupt (console)
        console_handler();
    } else {
        //neocekivan prekid! unexpected trap cause
        _printString("\n");
    80001c54:	00007517          	auipc	a0,0x7
    80001c58:	83c50513          	addi	a0,a0,-1988 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	394080e7          	jalr	916(ra) # 80001ff0 <_Z12_printStringPKc>
        _printString("Unexpected trap cause!\n");
    80001c64:	00006517          	auipc	a0,0x6
    80001c68:	39c50513          	addi	a0,a0,924 # 80008000 <kvmincrease+0x470>
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	384080e7          	jalr	900(ra) # 80001ff0 <_Z12_printStringPKc>
        _printString("SCAUSE: ");
    80001c74:	00006517          	auipc	a0,0x6
    80001c78:	3a450513          	addi	a0,a0,932 # 80008018 <kvmincrease+0x488>
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	374080e7          	jalr	884(ra) # 80001ff0 <_Z12_printStringPKc>
        _printInteger(scause);
    80001c84:	00048513          	mv	a0,s1
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	3ac080e7          	jalr	940(ra) # 80002034 <_Z13_printIntegerm>
        _printString(", SEPC: ");
    80001c90:	00006517          	auipc	a0,0x6
    80001c94:	39850513          	addi	a0,a0,920 # 80008028 <kvmincrease+0x498>
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	358080e7          	jalr	856(ra) # 80001ff0 <_Z12_printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ca0:	141027f3          	csrr	a5,sepc
    80001ca4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ca8:	fd843503          	ld	a0,-40(s0)
        _printInteger(r_sepc());
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	388080e7          	jalr	904(ra) # 80002034 <_Z13_printIntegerm>
        while(true){ }
    80001cb4:	0000006f          	j	80001cb4 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cb8:	141027f3          	csrr	a5,sepc
    80001cbc:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001cc0:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001cc4:	00478793          	addi	a5,a5,4
    80001cc8:	faf43c23          	sd	a5,-72(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ccc:	100027f3          	csrr	a5,sstatus
    80001cd0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001cd4:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001cd8:	fcf43023          	sd	a5,-64(s0)
        asm volatile("ld %0, 8*10(fp)" : "=r"(sisPoziv));
    80001cdc:	05043783          	ld	a5,80(s0)
        switch (sisPoziv) {
    80001ce0:	04200713          	li	a4,66
    80001ce4:	02f76863          	bltu	a4,a5,80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    80001ce8:	00279793          	slli	a5,a5,0x2
    80001cec:	00006717          	auipc	a4,0x6
    80001cf0:	34870713          	addi	a4,a4,840 # 80008034 <kvmincrease+0x4a4>
    80001cf4:	00e787b3          	add	a5,a5,a4
    80001cf8:	0007a783          	lw	a5,0(a5)
    80001cfc:	00e787b3          	add	a5,a5,a4
    80001d00:	00078067          	jr	a5
                asm volatile ("ld %0, 8*11(fp)": "=r" (c));
    80001d04:	05843503          	ld	a0,88(s0)
                __putc(c);
    80001d08:	0ff57513          	andi	a0,a0,255
    80001d0c:	00006097          	auipc	ra,0x6
    80001d10:	d64080e7          	jalr	-668(ra) # 80007a70 <__putc>
        w_sstatus(sstatus);
    80001d14:	fc043783          	ld	a5,-64(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d18:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001d1c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d20:	14179073          	csrw	sepc,a5
    }
}
    80001d24:	04813083          	ld	ra,72(sp)
    80001d28:	04013403          	ld	s0,64(sp)
    80001d2c:	03813483          	ld	s1,56(sp)
    80001d30:	05010113          	addi	sp,sp,80
    80001d34:	00008067          	ret
                char c = __getc();
    80001d38:	00006097          	auipc	ra,0x6
    80001d3c:	d74080e7          	jalr	-652(ra) # 80007aac <__getc>
                asm volatile ("sd %0, 8*10(fp)" :: "r"(c)); //storuje u a0 nas c
    80001d40:	04a43823          	sd	a0,80(s0)
                break;
    80001d44:	fd1ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile ("ld %0, 8*11(fp)": "=r" (size));
    80001d48:	05843503          	ld	a0,88(s0)
                void* alocirano = __mem_alloc(size*MEM_BLOCK_SIZE);
    80001d4c:	00651513          	slli	a0,a0,0x6
    80001d50:	00006097          	auipc	ra,0x6
    80001d54:	bc8080e7          	jalr	-1080(ra) # 80007918 <__mem_alloc>
                asm volatile ("sd %0, 8*10(fp)" :: "r"(alocirano));
    80001d58:	04a43823          	sd	a0,80(s0)
                break;
    80001d5c:	fb9ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile("ld %0, 8*11(fp)": "=r"(arg));
    80001d60:	05843503          	ld	a0,88(s0)
                size_t rez = __mem_free(arg);
    80001d64:	00006097          	auipc	ra,0x6
    80001d68:	ae8080e7          	jalr	-1304(ra) # 8000784c <__mem_free>
                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));
    80001d6c:	04a43823          	sd	a0,80(s0)
                break;
    80001d70:	fa5ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
    80001d74:	05843483          	ld	s1,88(s0)
                asm volatile("ld %0, 8*12(fp)" : "=r"(body));
    80001d78:	06043503          	ld	a0,96(s0)
                asm volatile("ld %0, 8*13(fp)" : "=r"(args));
    80001d7c:	06843583          	ld	a1,104(s0)
                asm volatile("ld %0, 8*14(fp)" : "=r"(stack));
    80001d80:	07043603          	ld	a2,112(s0)
                *handle = TCB::createThread(body, args, stack);
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	97c080e7          	jalr	-1668(ra) # 80001700 <_ZN3TCB12createThreadEPFvPvES0_Pc>
    80001d8c:	00a4b023          	sd	a0,0(s1)
                if(*handle) rez = 0;
    80001d90:	00050863          	beqz	a0,80001da0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80001d94:	00000793          	li	a5,0
                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));
    80001d98:	04f43823          	sd	a5,80(s0)
                break;
    80001d9c:	f79ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                else rez = -1;
    80001da0:	fff00793          	li	a5,-1
    80001da4:	ff5ff06f          	j	80001d98 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
                TCB* tren = TCB::running;
    80001da8:	00008797          	auipc	a5,0x8
    80001dac:	5687b783          	ld	a5,1384(a5) # 8000a310 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001db0:	0007b483          	ld	s1,0(a5)
    void setFinished(bool flag) { finished = flag; }
    80001db4:	00100793          	li	a5,1
    80001db8:	02f48423          	sb	a5,40(s1)
                TCB::dispatch();
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	a1c080e7          	jalr	-1508(ra) # 800017d8 <_ZN3TCB8dispatchEv>
                delete pret;
    80001dc4:	f40488e3          	beqz	s1,80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    ~TCB(){ delete[] stack; }
    80001dc8:	0104b503          	ld	a0,16(s1)
    80001dcc:	00050663          	beqz	a0,80001dd8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	bb0080e7          	jalr	-1104(ra) # 80001980 <_ZdaPv>
    80001dd8:	00048513          	mv	a0,s1
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	b14080e7          	jalr	-1260(ra) # 800018f0 <_ZdlPv>
    80001de4:	f31ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                TCB::dispatch();
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	9f0080e7          	jalr	-1552(ra) # 800017d8 <_ZN3TCB8dispatchEv>
                break;
    80001df0:	f25ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
    80001df4:	05843483          	ld	s1,88(s0)
                asm volatile("ld %0, 8*12(fp)" : "=r"(val));
    80001df8:	06043503          	ld	a0,96(s0)
                *handle = Sem::sem_open(val);
    80001dfc:	0005051b          	sext.w	a0,a0
    80001e00:	fffff097          	auipc	ra,0xfffff
    80001e04:	5ec080e7          	jalr	1516(ra) # 800013ec <_ZN3Sem8sem_openEi>
    80001e08:	00a4b023          	sd	a0,0(s1)
                if(handle) rez = 0;
    80001e0c:	00048863          	beqz	s1,80001e1c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
    80001e10:	00000793          	li	a5,0
                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));
    80001e14:	04f43823          	sd	a5,80(s0)
                break;
    80001e18:	efdff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                else rez = -1;
    80001e1c:	fff00793          	li	a5,-1
    80001e20:	ff5ff06f          	j	80001e14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
    80001e24:	05843503          	ld	a0,88(s0)
                handle->sem_close();
    80001e28:	fffff097          	auipc	ra,0xfffff
    80001e2c:	608080e7          	jalr	1544(ra) # 80001430 <_ZN3Sem9sem_closeEv>
                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));
    80001e30:	00000793          	li	a5,0
    80001e34:	04f43823          	sd	a5,80(s0)
                break;
    80001e38:	eddff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
    80001e3c:	05843503          	ld	a0,88(s0)
                handle->sem_wait();
    80001e40:	fffff097          	auipc	ra,0xfffff
    80001e44:	664080e7          	jalr	1636(ra) # 800014a4 <_ZN3Sem8sem_waitEv>
                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));
    80001e48:	00000793          	li	a5,0
    80001e4c:	04f43823          	sd	a5,80(s0)
                break;
    80001e50:	ec5ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
    80001e54:	05843503          	ld	a0,88(s0)
                handle->sem_signal();
    80001e58:	fffff097          	auipc	ra,0xfffff
    80001e5c:	6e0080e7          	jalr	1760(ra) # 80001538 <_ZN3Sem10sem_signalEv>
                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));
    80001e60:	00000793          	li	a5,0
    80001e64:	04f43823          	sd	a5,80(s0)
                break;
    80001e68:	eadff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile("sd %0, 8*10(fp)" :: "r"(rez));
    80001e6c:	fff00793          	li	a5,-1
    80001e70:	04f43823          	sd	a5,80(s0)
                break;
    80001e74:	ea1ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
                asm volatile("ld %0, 8*11(fp)" : "=r"(handle));
    80001e78:	05843503          	ld	a0,88(s0)
                handle->sem_trywait();
    80001e7c:	fffff097          	auipc	ra,0xfffff
    80001e80:	754080e7          	jalr	1876(ra) # 800015d0 <_ZN3Sem11sem_trywaitEv>
                asm volatile("sd %0, 8*10(fp)" :: "r"(povratnaVrednost));
    80001e84:	00000793          	li	a5,0
    80001e88:	04f43823          	sd	a5,80(s0)
                break;
    80001e8c:	e89ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e90:	00200793          	li	a5,2
    80001e94:	1447b073          	csrc	sip,a5
}
    80001e98:	e8dff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
        console_handler();
    80001e9c:	00006097          	auipc	ra,0x6
    80001ea0:	c48080e7          	jalr	-952(ra) # 80007ae4 <console_handler>
    80001ea4:	e81ff06f          	j	80001d24 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>

0000000080001ea8 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadsQueue.removeFirst();
}

void Scheduler::put(TCB *ccb){
    readyThreadsQueue.addLast(ccb);
}
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00813423          	sd	s0,8(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    80001eb4:	00100793          	li	a5,1
    80001eb8:	00f50863          	beq	a0,a5,80001ec8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ebc:	00813403          	ld	s0,8(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret
    80001ec8:	000107b7          	lui	a5,0x10
    80001ecc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ed0:	fef596e3          	bne	a1,a5,80001ebc <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001ed4:	00008797          	auipc	a5,0x8
    80001ed8:	49478793          	addi	a5,a5,1172 # 8000a368 <_ZN9Scheduler17readyThreadsQueueE>
    80001edc:	0007b023          	sd	zero,0(a5)
    80001ee0:	0007b423          	sd	zero,8(a5)
    80001ee4:	fd9ff06f          	j	80001ebc <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001ee8 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get(){
    80001ee8:	fe010113          	addi	sp,sp,-32
    80001eec:	00113c23          	sd	ra,24(sp)
    80001ef0:	00813823          	sd	s0,16(sp)
    80001ef4:	00913423          	sd	s1,8(sp)
    80001ef8:	02010413          	addi	s0,sp,32
        if (!head) return 0;
    80001efc:	00008517          	auipc	a0,0x8
    80001f00:	46c53503          	ld	a0,1132(a0) # 8000a368 <_ZN9Scheduler17readyThreadsQueueE>
    80001f04:	04050263          	beqz	a0,80001f48 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001f08:	00853783          	ld	a5,8(a0)
    80001f0c:	00008717          	auipc	a4,0x8
    80001f10:	44f73e23          	sd	a5,1116(a4) # 8000a368 <_ZN9Scheduler17readyThreadsQueueE>
        if(!head) tail = 0;
    80001f14:	02078463          	beqz	a5,80001f3c <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80001f18:	00053483          	ld	s1,0(a0)
        delete elem;
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	9d4080e7          	jalr	-1580(ra) # 800018f0 <_ZdlPv>
}
    80001f24:	00048513          	mv	a0,s1
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	02010113          	addi	sp,sp,32
    80001f38:	00008067          	ret
        if(!head) tail = 0;
    80001f3c:	00008797          	auipc	a5,0x8
    80001f40:	4207ba23          	sd	zero,1076(a5) # 8000a370 <_ZN9Scheduler17readyThreadsQueueE+0x8>
    80001f44:	fd5ff06f          	j	80001f18 <_ZN9Scheduler3getEv+0x30>
        if (!head) return 0;
    80001f48:	00050493          	mv	s1,a0
    return readyThreadsQueue.removeFirst();
    80001f4c:	fd9ff06f          	j	80001f24 <_ZN9Scheduler3getEv+0x3c>

0000000080001f50 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *ccb){
    80001f50:	fe010113          	addi	sp,sp,-32
    80001f54:	00113c23          	sd	ra,24(sp)
    80001f58:	00813823          	sd	s0,16(sp)
    80001f5c:	00913423          	sd	s1,8(sp)
    80001f60:	02010413          	addi	s0,sp,32
    80001f64:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001f68:	01000513          	li	a0,16
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	934080e7          	jalr	-1740(ra) # 800018a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next){}
    80001f74:	00953023          	sd	s1,0(a0)
    80001f78:	00053423          	sd	zero,8(a0)
        if(tail){
    80001f7c:	00008797          	auipc	a5,0x8
    80001f80:	3f47b783          	ld	a5,1012(a5) # 8000a370 <_ZN9Scheduler17readyThreadsQueueE+0x8>
    80001f84:	02078263          	beqz	a5,80001fa8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001f88:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001f8c:	00008797          	auipc	a5,0x8
    80001f90:	3ea7b223          	sd	a0,996(a5) # 8000a370 <_ZN9Scheduler17readyThreadsQueueE+0x8>
}
    80001f94:	01813083          	ld	ra,24(sp)
    80001f98:	01013403          	ld	s0,16(sp)
    80001f9c:	00813483          	ld	s1,8(sp)
    80001fa0:	02010113          	addi	sp,sp,32
    80001fa4:	00008067          	ret
            head = tail = elem;
    80001fa8:	00008797          	auipc	a5,0x8
    80001fac:	3c078793          	addi	a5,a5,960 # 8000a368 <_ZN9Scheduler17readyThreadsQueueE>
    80001fb0:	00a7b423          	sd	a0,8(a5)
    80001fb4:	00a7b023          	sd	a0,0(a5)
    80001fb8:	fddff06f          	j	80001f94 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001fbc <_GLOBAL__sub_I__ZN9Scheduler17readyThreadsQueueE>:
    80001fbc:	ff010113          	addi	sp,sp,-16
    80001fc0:	00113423          	sd	ra,8(sp)
    80001fc4:	00813023          	sd	s0,0(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    80001fcc:	000105b7          	lui	a1,0x10
    80001fd0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001fd4:	00100513          	li	a0,1
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	ed0080e7          	jalr	-304(ra) # 80001ea8 <_Z41__static_initialization_and_destruction_0ii>
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_Z12_printStringPKc>:
#include "../h/print.hpp"
#include"../lib/console.h"
#include "../h/riscv.hpp"

void _printString(char const *string){
    80001ff0:	fe010113          	addi	sp,sp,-32
    80001ff4:	00113c23          	sd	ra,24(sp)
    80001ff8:	00813823          	sd	s0,16(sp)
    80001ffc:	00913423          	sd	s1,8(sp)
    80002000:	02010413          	addi	s0,sp,32
    80002004:	00050493          	mv	s1,a0

    while(*string != '\0'){
    80002008:	0004c503          	lbu	a0,0(s1)
    8000200c:	00050a63          	beqz	a0,80002020 <_Z12_printStringPKc+0x30>
        __putc(*string);
    80002010:	00006097          	auipc	ra,0x6
    80002014:	a60080e7          	jalr	-1440(ra) # 80007a70 <__putc>
        string++;
    80002018:	00148493          	addi	s1,s1,1
    while(*string != '\0'){
    8000201c:	fedff06f          	j	80002008 <_Z12_printStringPKc+0x18>
    }
}
    80002020:	01813083          	ld	ra,24(sp)
    80002024:	01013403          	ld	s0,16(sp)
    80002028:	00813483          	ld	s1,8(sp)
    8000202c:	02010113          	addi	sp,sp,32
    80002030:	00008067          	ret

0000000080002034 <_Z13_printIntegerm>:

void _printInteger(uint64 integer){
    80002034:	fd010113          	addi	sp,sp,-48
    80002038:	02113423          	sd	ra,40(sp)
    8000203c:	02813023          	sd	s0,32(sp)
    80002040:	00913c23          	sd	s1,24(sp)
    80002044:	03010413          	addi	s0,sp,48
    static char digits[] = "0123456789ABCDEF";
    char buf[16];
    int i;
    uint x;

    x = integer;
    80002048:	0005051b          	sext.w	a0,a0

    i = 0;
    8000204c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % 16];
    80002050:	00f57693          	andi	a3,a0,15
    80002054:	00006717          	auipc	a4,0x6
    80002058:	0ec70713          	addi	a4,a4,236 # 80008140 <_ZZ13_printIntegermE6digits>
    8000205c:	00d70733          	add	a4,a4,a3
    80002060:	00074703          	lbu	a4,0(a4)
    80002064:	fe040693          	addi	a3,s0,-32
    80002068:	009687b3          	add	a5,a3,s1
    8000206c:	0014849b          	addiw	s1,s1,1
    80002070:	fee78823          	sb	a4,-16(a5)
    } while((x/= 16) != 0);
    80002074:	0005071b          	sext.w	a4,a0
    80002078:	0045551b          	srliw	a0,a0,0x4
    8000207c:	00f00793          	li	a5,15
    80002080:	fce7e8e3          	bltu	a5,a4,80002050 <_Z13_printIntegerm+0x1c>

    while(--i >= 0) __putc(buf[i]);
    80002084:	fff4849b          	addiw	s1,s1,-1
    80002088:	0004ce63          	bltz	s1,800020a4 <_Z13_printIntegerm+0x70>
    8000208c:	fe040793          	addi	a5,s0,-32
    80002090:	009787b3          	add	a5,a5,s1
    80002094:	ff07c503          	lbu	a0,-16(a5)
    80002098:	00006097          	auipc	ra,0x6
    8000209c:	9d8080e7          	jalr	-1576(ra) # 80007a70 <__putc>
    800020a0:	fe5ff06f          	j	80002084 <_Z13_printIntegerm+0x50>
}
    800020a4:	02813083          	ld	ra,40(sp)
    800020a8:	02013403          	ld	s0,32(sp)
    800020ac:	01813483          	ld	s1,24(sp)
    800020b0:	03010113          	addi	sp,sp,48
    800020b4:	00008067          	ret

00000000800020b8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800020b8:	fe010113          	addi	sp,sp,-32
    800020bc:	00113c23          	sd	ra,24(sp)
    800020c0:	00813823          	sd	s0,16(sp)
    800020c4:	00913423          	sd	s1,8(sp)
    800020c8:	01213023          	sd	s2,0(sp)
    800020cc:	02010413          	addi	s0,sp,32
    800020d0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800020d4:	00000913          	li	s2,0
    800020d8:	00c0006f          	j	800020e4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	1cc080e7          	jalr	460(ra) # 800012a8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	084080e7          	jalr	132(ra) # 80001168 <_Z4getcv>
    800020ec:	0005059b          	sext.w	a1,a0
    800020f0:	01b00793          	li	a5,27
    800020f4:	02f58a63          	beq	a1,a5,80002128 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800020f8:	0084b503          	ld	a0,8(s1)
    800020fc:	00003097          	auipc	ra,0x3
    80002100:	404080e7          	jalr	1028(ra) # 80005500 <_ZN6Buffer3putEi>
        i++;
    80002104:	0019071b          	addiw	a4,s2,1
    80002108:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000210c:	0004a683          	lw	a3,0(s1)
    80002110:	0026979b          	slliw	a5,a3,0x2
    80002114:	00d787bb          	addw	a5,a5,a3
    80002118:	0017979b          	slliw	a5,a5,0x1
    8000211c:	02f767bb          	remw	a5,a4,a5
    80002120:	fc0792e3          	bnez	a5,800020e4 <_ZL16producerKeyboardPv+0x2c>
    80002124:	fb9ff06f          	j	800020dc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002128:	00100793          	li	a5,1
    8000212c:	00008717          	auipc	a4,0x8
    80002130:	24f72623          	sw	a5,588(a4) # 8000a378 <_ZL9threadEnd>
    data->buffer->put('!');
    80002134:	02100593          	li	a1,33
    80002138:	0084b503          	ld	a0,8(s1)
    8000213c:	00003097          	auipc	ra,0x3
    80002140:	3c4080e7          	jalr	964(ra) # 80005500 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002144:	0104b503          	ld	a0,16(s1)
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	224080e7          	jalr	548(ra) # 8000136c <_Z10sem_signalP4_sem>
}
    80002150:	01813083          	ld	ra,24(sp)
    80002154:	01013403          	ld	s0,16(sp)
    80002158:	00813483          	ld	s1,8(sp)
    8000215c:	00013903          	ld	s2,0(sp)
    80002160:	02010113          	addi	sp,sp,32
    80002164:	00008067          	ret

0000000080002168 <_ZL8producerPv>:

static void producer(void *arg) {
    80002168:	fe010113          	addi	sp,sp,-32
    8000216c:	00113c23          	sd	ra,24(sp)
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	01213023          	sd	s2,0(sp)
    8000217c:	02010413          	addi	s0,sp,32
    80002180:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002184:	00000913          	li	s2,0
    80002188:	00c0006f          	j	80002194 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	11c080e7          	jalr	284(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002194:	00008797          	auipc	a5,0x8
    80002198:	1e47a783          	lw	a5,484(a5) # 8000a378 <_ZL9threadEnd>
    8000219c:	02079e63          	bnez	a5,800021d8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800021a0:	0004a583          	lw	a1,0(s1)
    800021a4:	0305859b          	addiw	a1,a1,48
    800021a8:	0084b503          	ld	a0,8(s1)
    800021ac:	00003097          	auipc	ra,0x3
    800021b0:	354080e7          	jalr	852(ra) # 80005500 <_ZN6Buffer3putEi>
        i++;
    800021b4:	0019071b          	addiw	a4,s2,1
    800021b8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800021bc:	0004a683          	lw	a3,0(s1)
    800021c0:	0026979b          	slliw	a5,a3,0x2
    800021c4:	00d787bb          	addw	a5,a5,a3
    800021c8:	0017979b          	slliw	a5,a5,0x1
    800021cc:	02f767bb          	remw	a5,a4,a5
    800021d0:	fc0792e3          	bnez	a5,80002194 <_ZL8producerPv+0x2c>
    800021d4:	fb9ff06f          	j	8000218c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800021d8:	0104b503          	ld	a0,16(s1)
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	190080e7          	jalr	400(ra) # 8000136c <_Z10sem_signalP4_sem>
}
    800021e4:	01813083          	ld	ra,24(sp)
    800021e8:	01013403          	ld	s0,16(sp)
    800021ec:	00813483          	ld	s1,8(sp)
    800021f0:	00013903          	ld	s2,0(sp)
    800021f4:	02010113          	addi	sp,sp,32
    800021f8:	00008067          	ret

00000000800021fc <_ZL8consumerPv>:

static void consumer(void *arg) {
    800021fc:	fd010113          	addi	sp,sp,-48
    80002200:	02113423          	sd	ra,40(sp)
    80002204:	02813023          	sd	s0,32(sp)
    80002208:	00913c23          	sd	s1,24(sp)
    8000220c:	01213823          	sd	s2,16(sp)
    80002210:	01313423          	sd	s3,8(sp)
    80002214:	03010413          	addi	s0,sp,48
    80002218:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000221c:	00000993          	li	s3,0
    80002220:	01c0006f          	j	8000223c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002224:	fffff097          	auipc	ra,0xfffff
    80002228:	084080e7          	jalr	132(ra) # 800012a8 <_Z15thread_dispatchv>
    8000222c:	0500006f          	j	8000227c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002230:	00a00513          	li	a0,10
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	f10080e7          	jalr	-240(ra) # 80001144 <_Z4putcc>
    while (!threadEnd) {
    8000223c:	00008797          	auipc	a5,0x8
    80002240:	13c7a783          	lw	a5,316(a5) # 8000a378 <_ZL9threadEnd>
    80002244:	06079063          	bnez	a5,800022a4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002248:	00893503          	ld	a0,8(s2)
    8000224c:	00003097          	auipc	ra,0x3
    80002250:	344080e7          	jalr	836(ra) # 80005590 <_ZN6Buffer3getEv>
        i++;
    80002254:	0019849b          	addiw	s1,s3,1
    80002258:	0004899b          	sext.w	s3,s1
        putc(key);
    8000225c:	0ff57513          	andi	a0,a0,255
    80002260:	fffff097          	auipc	ra,0xfffff
    80002264:	ee4080e7          	jalr	-284(ra) # 80001144 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002268:	00092703          	lw	a4,0(s2)
    8000226c:	0027179b          	slliw	a5,a4,0x2
    80002270:	00e787bb          	addw	a5,a5,a4
    80002274:	02f4e7bb          	remw	a5,s1,a5
    80002278:	fa0786e3          	beqz	a5,80002224 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000227c:	05000793          	li	a5,80
    80002280:	02f4e4bb          	remw	s1,s1,a5
    80002284:	fa049ce3          	bnez	s1,8000223c <_ZL8consumerPv+0x40>
    80002288:	fa9ff06f          	j	80002230 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000228c:	00893503          	ld	a0,8(s2)
    80002290:	00003097          	auipc	ra,0x3
    80002294:	300080e7          	jalr	768(ra) # 80005590 <_ZN6Buffer3getEv>
        putc(key);
    80002298:	0ff57513          	andi	a0,a0,255
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	ea8080e7          	jalr	-344(ra) # 80001144 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800022a4:	00893503          	ld	a0,8(s2)
    800022a8:	00003097          	auipc	ra,0x3
    800022ac:	374080e7          	jalr	884(ra) # 8000561c <_ZN6Buffer6getCntEv>
    800022b0:	fca04ee3          	bgtz	a0,8000228c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800022b4:	01093503          	ld	a0,16(s2)
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	0b4080e7          	jalr	180(ra) # 8000136c <_Z10sem_signalP4_sem>
}
    800022c0:	02813083          	ld	ra,40(sp)
    800022c4:	02013403          	ld	s0,32(sp)
    800022c8:	01813483          	ld	s1,24(sp)
    800022cc:	01013903          	ld	s2,16(sp)
    800022d0:	00813983          	ld	s3,8(sp)
    800022d4:	03010113          	addi	sp,sp,48
    800022d8:	00008067          	ret

00000000800022dc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800022dc:	f9010113          	addi	sp,sp,-112
    800022e0:	06113423          	sd	ra,104(sp)
    800022e4:	06813023          	sd	s0,96(sp)
    800022e8:	04913c23          	sd	s1,88(sp)
    800022ec:	05213823          	sd	s2,80(sp)
    800022f0:	05313423          	sd	s3,72(sp)
    800022f4:	05413023          	sd	s4,64(sp)
    800022f8:	03513c23          	sd	s5,56(sp)
    800022fc:	03613823          	sd	s6,48(sp)
    80002300:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002304:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002308:	00006517          	auipc	a0,0x6
    8000230c:	e5050513          	addi	a0,a0,-432 # 80008158 <_ZZ13_printIntegermE6digits+0x18>
    80002310:	00002097          	auipc	ra,0x2
    80002314:	224080e7          	jalr	548(ra) # 80004534 <_Z11printStringPKc>
    getString(input, 30);
    80002318:	01e00593          	li	a1,30
    8000231c:	fa040493          	addi	s1,s0,-96
    80002320:	00048513          	mv	a0,s1
    80002324:	00002097          	auipc	ra,0x2
    80002328:	298080e7          	jalr	664(ra) # 800045bc <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000232c:	00048513          	mv	a0,s1
    80002330:	00002097          	auipc	ra,0x2
    80002334:	364080e7          	jalr	868(ra) # 80004694 <_Z11stringToIntPKc>
    80002338:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000233c:	00006517          	auipc	a0,0x6
    80002340:	e3c50513          	addi	a0,a0,-452 # 80008178 <_ZZ13_printIntegermE6digits+0x38>
    80002344:	00002097          	auipc	ra,0x2
    80002348:	1f0080e7          	jalr	496(ra) # 80004534 <_Z11printStringPKc>
    getString(input, 30);
    8000234c:	01e00593          	li	a1,30
    80002350:	00048513          	mv	a0,s1
    80002354:	00002097          	auipc	ra,0x2
    80002358:	268080e7          	jalr	616(ra) # 800045bc <_Z9getStringPci>
    n = stringToInt(input);
    8000235c:	00048513          	mv	a0,s1
    80002360:	00002097          	auipc	ra,0x2
    80002364:	334080e7          	jalr	820(ra) # 80004694 <_Z11stringToIntPKc>
    80002368:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000236c:	00006517          	auipc	a0,0x6
    80002370:	e2c50513          	addi	a0,a0,-468 # 80008198 <_ZZ13_printIntegermE6digits+0x58>
    80002374:	00002097          	auipc	ra,0x2
    80002378:	1c0080e7          	jalr	448(ra) # 80004534 <_Z11printStringPKc>
    8000237c:	00000613          	li	a2,0
    80002380:	00a00593          	li	a1,10
    80002384:	00090513          	mv	a0,s2
    80002388:	00002097          	auipc	ra,0x2
    8000238c:	35c080e7          	jalr	860(ra) # 800046e4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002390:	00006517          	auipc	a0,0x6
    80002394:	e2050513          	addi	a0,a0,-480 # 800081b0 <_ZZ13_printIntegermE6digits+0x70>
    80002398:	00002097          	auipc	ra,0x2
    8000239c:	19c080e7          	jalr	412(ra) # 80004534 <_Z11printStringPKc>
    800023a0:	00000613          	li	a2,0
    800023a4:	00a00593          	li	a1,10
    800023a8:	00048513          	mv	a0,s1
    800023ac:	00002097          	auipc	ra,0x2
    800023b0:	338080e7          	jalr	824(ra) # 800046e4 <_Z8printIntiii>
    printString(".\n");
    800023b4:	00006517          	auipc	a0,0x6
    800023b8:	e1450513          	addi	a0,a0,-492 # 800081c8 <_ZZ13_printIntegermE6digits+0x88>
    800023bc:	00002097          	auipc	ra,0x2
    800023c0:	178080e7          	jalr	376(ra) # 80004534 <_Z11printStringPKc>
    if(threadNum > n) {
    800023c4:	0324c463          	blt	s1,s2,800023ec <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800023c8:	03205c63          	blez	s2,80002400 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800023cc:	03800513          	li	a0,56
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	4d0080e7          	jalr	1232(ra) # 800018a0 <_Znwm>
    800023d8:	00050a13          	mv	s4,a0
    800023dc:	00048593          	mv	a1,s1
    800023e0:	00003097          	auipc	ra,0x3
    800023e4:	084080e7          	jalr	132(ra) # 80005464 <_ZN6BufferC1Ei>
    800023e8:	0300006f          	j	80002418 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800023ec:	00006517          	auipc	a0,0x6
    800023f0:	de450513          	addi	a0,a0,-540 # 800081d0 <_ZZ13_printIntegermE6digits+0x90>
    800023f4:	00002097          	auipc	ra,0x2
    800023f8:	140080e7          	jalr	320(ra) # 80004534 <_Z11printStringPKc>
        return;
    800023fc:	0140006f          	j	80002410 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002400:	00006517          	auipc	a0,0x6
    80002404:	e1050513          	addi	a0,a0,-496 # 80008210 <_ZZ13_printIntegermE6digits+0xd0>
    80002408:	00002097          	auipc	ra,0x2
    8000240c:	12c080e7          	jalr	300(ra) # 80004534 <_Z11printStringPKc>
        return;
    80002410:	000b0113          	mv	sp,s6
    80002414:	1500006f          	j	80002564 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002418:	00000593          	li	a1,0
    8000241c:	00008517          	auipc	a0,0x8
    80002420:	f6450513          	addi	a0,a0,-156 # 8000a380 <_ZL10waitForAll>
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	ec0080e7          	jalr	-320(ra) # 800012e4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    8000242c:	00391793          	slli	a5,s2,0x3
    80002430:	00f78793          	addi	a5,a5,15
    80002434:	ff07f793          	andi	a5,a5,-16
    80002438:	40f10133          	sub	sp,sp,a5
    8000243c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002440:	0019071b          	addiw	a4,s2,1
    80002444:	00171793          	slli	a5,a4,0x1
    80002448:	00e787b3          	add	a5,a5,a4
    8000244c:	00379793          	slli	a5,a5,0x3
    80002450:	00f78793          	addi	a5,a5,15
    80002454:	ff07f793          	andi	a5,a5,-16
    80002458:	40f10133          	sub	sp,sp,a5
    8000245c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002460:	00191613          	slli	a2,s2,0x1
    80002464:	012607b3          	add	a5,a2,s2
    80002468:	00379793          	slli	a5,a5,0x3
    8000246c:	00f987b3          	add	a5,s3,a5
    80002470:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002474:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002478:	00008717          	auipc	a4,0x8
    8000247c:	f0873703          	ld	a4,-248(a4) # 8000a380 <_ZL10waitForAll>
    80002480:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002484:	00078613          	mv	a2,a5
    80002488:	00000597          	auipc	a1,0x0
    8000248c:	d7458593          	addi	a1,a1,-652 # 800021fc <_ZL8consumerPv>
    80002490:	f9840513          	addi	a0,s0,-104
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	d68080e7          	jalr	-664(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000249c:	00000493          	li	s1,0
    800024a0:	0280006f          	j	800024c8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800024a4:	00000597          	auipc	a1,0x0
    800024a8:	c1458593          	addi	a1,a1,-1004 # 800020b8 <_ZL16producerKeyboardPv>
                      data + i);
    800024ac:	00179613          	slli	a2,a5,0x1
    800024b0:	00f60633          	add	a2,a2,a5
    800024b4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800024b8:	00c98633          	add	a2,s3,a2
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	d40080e7          	jalr	-704(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800024c4:	0014849b          	addiw	s1,s1,1
    800024c8:	0524d263          	bge	s1,s2,8000250c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800024cc:	00149793          	slli	a5,s1,0x1
    800024d0:	009787b3          	add	a5,a5,s1
    800024d4:	00379793          	slli	a5,a5,0x3
    800024d8:	00f987b3          	add	a5,s3,a5
    800024dc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800024e0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800024e4:	00008717          	auipc	a4,0x8
    800024e8:	e9c73703          	ld	a4,-356(a4) # 8000a380 <_ZL10waitForAll>
    800024ec:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800024f0:	00048793          	mv	a5,s1
    800024f4:	00349513          	slli	a0,s1,0x3
    800024f8:	00aa8533          	add	a0,s5,a0
    800024fc:	fa9054e3          	blez	s1,800024a4 <_Z22producerConsumer_C_APIv+0x1c8>
    80002500:	00000597          	auipc	a1,0x0
    80002504:	c6858593          	addi	a1,a1,-920 # 80002168 <_ZL8producerPv>
    80002508:	fa5ff06f          	j	800024ac <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	d9c080e7          	jalr	-612(ra) # 800012a8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002514:	00000493          	li	s1,0
    80002518:	00994e63          	blt	s2,s1,80002534 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000251c:	00008517          	auipc	a0,0x8
    80002520:	e6453503          	ld	a0,-412(a0) # 8000a380 <_ZL10waitForAll>
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	e1c080e7          	jalr	-484(ra) # 80001340 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    8000252c:	0014849b          	addiw	s1,s1,1
    80002530:	fe9ff06f          	j	80002518 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002534:	00008517          	auipc	a0,0x8
    80002538:	e4c53503          	ld	a0,-436(a0) # 8000a380 <_ZL10waitForAll>
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	dd8080e7          	jalr	-552(ra) # 80001314 <_Z9sem_closeP4_sem>
    delete buffer;
    80002544:	000a0e63          	beqz	s4,80002560 <_Z22producerConsumer_C_APIv+0x284>
    80002548:	000a0513          	mv	a0,s4
    8000254c:	00003097          	auipc	ra,0x3
    80002550:	158080e7          	jalr	344(ra) # 800056a4 <_ZN6BufferD1Ev>
    80002554:	000a0513          	mv	a0,s4
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	398080e7          	jalr	920(ra) # 800018f0 <_ZdlPv>
    80002560:	000b0113          	mv	sp,s6

}
    80002564:	f9040113          	addi	sp,s0,-112
    80002568:	06813083          	ld	ra,104(sp)
    8000256c:	06013403          	ld	s0,96(sp)
    80002570:	05813483          	ld	s1,88(sp)
    80002574:	05013903          	ld	s2,80(sp)
    80002578:	04813983          	ld	s3,72(sp)
    8000257c:	04013a03          	ld	s4,64(sp)
    80002580:	03813a83          	ld	s5,56(sp)
    80002584:	03013b03          	ld	s6,48(sp)
    80002588:	07010113          	addi	sp,sp,112
    8000258c:	00008067          	ret
    80002590:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002594:	000a0513          	mv	a0,s4
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	358080e7          	jalr	856(ra) # 800018f0 <_ZdlPv>
    800025a0:	00048513          	mv	a0,s1
    800025a4:	00009097          	auipc	ra,0x9
    800025a8:	ef4080e7          	jalr	-268(ra) # 8000b498 <_Unwind_Resume>

00000000800025ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800025ac:	fe010113          	addi	sp,sp,-32
    800025b0:	00113c23          	sd	ra,24(sp)
    800025b4:	00813823          	sd	s0,16(sp)
    800025b8:	00913423          	sd	s1,8(sp)
    800025bc:	01213023          	sd	s2,0(sp)
    800025c0:	02010413          	addi	s0,sp,32
    800025c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800025c8:	00100793          	li	a5,1
    800025cc:	02a7f863          	bgeu	a5,a0,800025fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800025d0:	00a00793          	li	a5,10
    800025d4:	02f577b3          	remu	a5,a0,a5
    800025d8:	02078e63          	beqz	a5,80002614 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800025dc:	fff48513          	addi	a0,s1,-1
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	fcc080e7          	jalr	-52(ra) # 800025ac <_ZL9fibonaccim>
    800025e8:	00050913          	mv	s2,a0
    800025ec:	ffe48513          	addi	a0,s1,-2
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	fbc080e7          	jalr	-68(ra) # 800025ac <_ZL9fibonaccim>
    800025f8:	00a90533          	add	a0,s2,a0
}
    800025fc:	01813083          	ld	ra,24(sp)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	00813483          	ld	s1,8(sp)
    80002608:	00013903          	ld	s2,0(sp)
    8000260c:	02010113          	addi	sp,sp,32
    80002610:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	c94080e7          	jalr	-876(ra) # 800012a8 <_Z15thread_dispatchv>
    8000261c:	fc1ff06f          	j	800025dc <_ZL9fibonaccim+0x30>

0000000080002620 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002620:	fe010113          	addi	sp,sp,-32
    80002624:	00113c23          	sd	ra,24(sp)
    80002628:	00813823          	sd	s0,16(sp)
    8000262c:	00913423          	sd	s1,8(sp)
    80002630:	01213023          	sd	s2,0(sp)
    80002634:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002638:	00000913          	li	s2,0
    8000263c:	0380006f          	j	80002674 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	c68080e7          	jalr	-920(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002648:	00148493          	addi	s1,s1,1
    8000264c:	000027b7          	lui	a5,0x2
    80002650:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002654:	0097ee63          	bltu	a5,s1,80002670 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002658:	00000713          	li	a4,0
    8000265c:	000077b7          	lui	a5,0x7
    80002660:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002664:	fce7eee3          	bltu	a5,a4,80002640 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002668:	00170713          	addi	a4,a4,1
    8000266c:	ff1ff06f          	j	8000265c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002670:	00190913          	addi	s2,s2,1
    80002674:	00900793          	li	a5,9
    80002678:	0527e063          	bltu	a5,s2,800026b8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000267c:	00006517          	auipc	a0,0x6
    80002680:	bc450513          	addi	a0,a0,-1084 # 80008240 <_ZZ13_printIntegermE6digits+0x100>
    80002684:	00002097          	auipc	ra,0x2
    80002688:	eb0080e7          	jalr	-336(ra) # 80004534 <_Z11printStringPKc>
    8000268c:	00000613          	li	a2,0
    80002690:	00a00593          	li	a1,10
    80002694:	0009051b          	sext.w	a0,s2
    80002698:	00002097          	auipc	ra,0x2
    8000269c:	04c080e7          	jalr	76(ra) # 800046e4 <_Z8printIntiii>
    800026a0:	00006517          	auipc	a0,0x6
    800026a4:	df050513          	addi	a0,a0,-528 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    800026a8:	00002097          	auipc	ra,0x2
    800026ac:	e8c080e7          	jalr	-372(ra) # 80004534 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800026b0:	00000493          	li	s1,0
    800026b4:	f99ff06f          	j	8000264c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800026b8:	00006517          	auipc	a0,0x6
    800026bc:	b9050513          	addi	a0,a0,-1136 # 80008248 <_ZZ13_printIntegermE6digits+0x108>
    800026c0:	00002097          	auipc	ra,0x2
    800026c4:	e74080e7          	jalr	-396(ra) # 80004534 <_Z11printStringPKc>
    finishedA = true;
    800026c8:	00100793          	li	a5,1
    800026cc:	00008717          	auipc	a4,0x8
    800026d0:	caf70e23          	sb	a5,-836(a4) # 8000a388 <_ZL9finishedA>
}
    800026d4:	01813083          	ld	ra,24(sp)
    800026d8:	01013403          	ld	s0,16(sp)
    800026dc:	00813483          	ld	s1,8(sp)
    800026e0:	00013903          	ld	s2,0(sp)
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00008067          	ret

00000000800026ec <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800026ec:	fe010113          	addi	sp,sp,-32
    800026f0:	00113c23          	sd	ra,24(sp)
    800026f4:	00813823          	sd	s0,16(sp)
    800026f8:	00913423          	sd	s1,8(sp)
    800026fc:	01213023          	sd	s2,0(sp)
    80002700:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002704:	00000913          	li	s2,0
    80002708:	0380006f          	j	80002740 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	b9c080e7          	jalr	-1124(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002714:	00148493          	addi	s1,s1,1
    80002718:	000027b7          	lui	a5,0x2
    8000271c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002720:	0097ee63          	bltu	a5,s1,8000273c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002724:	00000713          	li	a4,0
    80002728:	000077b7          	lui	a5,0x7
    8000272c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002730:	fce7eee3          	bltu	a5,a4,8000270c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002734:	00170713          	addi	a4,a4,1
    80002738:	ff1ff06f          	j	80002728 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000273c:	00190913          	addi	s2,s2,1
    80002740:	00f00793          	li	a5,15
    80002744:	0527e063          	bltu	a5,s2,80002784 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002748:	00006517          	auipc	a0,0x6
    8000274c:	b1050513          	addi	a0,a0,-1264 # 80008258 <_ZZ13_printIntegermE6digits+0x118>
    80002750:	00002097          	auipc	ra,0x2
    80002754:	de4080e7          	jalr	-540(ra) # 80004534 <_Z11printStringPKc>
    80002758:	00000613          	li	a2,0
    8000275c:	00a00593          	li	a1,10
    80002760:	0009051b          	sext.w	a0,s2
    80002764:	00002097          	auipc	ra,0x2
    80002768:	f80080e7          	jalr	-128(ra) # 800046e4 <_Z8printIntiii>
    8000276c:	00006517          	auipc	a0,0x6
    80002770:	d2450513          	addi	a0,a0,-732 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80002774:	00002097          	auipc	ra,0x2
    80002778:	dc0080e7          	jalr	-576(ra) # 80004534 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000277c:	00000493          	li	s1,0
    80002780:	f99ff06f          	j	80002718 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002784:	00006517          	auipc	a0,0x6
    80002788:	adc50513          	addi	a0,a0,-1316 # 80008260 <_ZZ13_printIntegermE6digits+0x120>
    8000278c:	00002097          	auipc	ra,0x2
    80002790:	da8080e7          	jalr	-600(ra) # 80004534 <_Z11printStringPKc>
    finishedB = true;
    80002794:	00100793          	li	a5,1
    80002798:	00008717          	auipc	a4,0x8
    8000279c:	bef708a3          	sb	a5,-1039(a4) # 8000a389 <_ZL9finishedB>
    thread_dispatch();
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	b08080e7          	jalr	-1272(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800027a8:	01813083          	ld	ra,24(sp)
    800027ac:	01013403          	ld	s0,16(sp)
    800027b0:	00813483          	ld	s1,8(sp)
    800027b4:	00013903          	ld	s2,0(sp)
    800027b8:	02010113          	addi	sp,sp,32
    800027bc:	00008067          	ret

00000000800027c0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800027c0:	fe010113          	addi	sp,sp,-32
    800027c4:	00113c23          	sd	ra,24(sp)
    800027c8:	00813823          	sd	s0,16(sp)
    800027cc:	00913423          	sd	s1,8(sp)
    800027d0:	01213023          	sd	s2,0(sp)
    800027d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800027d8:	00000493          	li	s1,0
    800027dc:	0400006f          	j	8000281c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800027e0:	00006517          	auipc	a0,0x6
    800027e4:	a9050513          	addi	a0,a0,-1392 # 80008270 <_ZZ13_printIntegermE6digits+0x130>
    800027e8:	00002097          	auipc	ra,0x2
    800027ec:	d4c080e7          	jalr	-692(ra) # 80004534 <_Z11printStringPKc>
    800027f0:	00000613          	li	a2,0
    800027f4:	00a00593          	li	a1,10
    800027f8:	00048513          	mv	a0,s1
    800027fc:	00002097          	auipc	ra,0x2
    80002800:	ee8080e7          	jalr	-280(ra) # 800046e4 <_Z8printIntiii>
    80002804:	00006517          	auipc	a0,0x6
    80002808:	c8c50513          	addi	a0,a0,-884 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    8000280c:	00002097          	auipc	ra,0x2
    80002810:	d28080e7          	jalr	-728(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002814:	0014849b          	addiw	s1,s1,1
    80002818:	0ff4f493          	andi	s1,s1,255
    8000281c:	00200793          	li	a5,2
    80002820:	fc97f0e3          	bgeu	a5,s1,800027e0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002824:	00006517          	auipc	a0,0x6
    80002828:	a5450513          	addi	a0,a0,-1452 # 80008278 <_ZZ13_printIntegermE6digits+0x138>
    8000282c:	00002097          	auipc	ra,0x2
    80002830:	d08080e7          	jalr	-760(ra) # 80004534 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002834:	00700313          	li	t1,7
    thread_dispatch();
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	a70080e7          	jalr	-1424(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002840:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002844:	00006517          	auipc	a0,0x6
    80002848:	a4450513          	addi	a0,a0,-1468 # 80008288 <_ZZ13_printIntegermE6digits+0x148>
    8000284c:	00002097          	auipc	ra,0x2
    80002850:	ce8080e7          	jalr	-792(ra) # 80004534 <_Z11printStringPKc>
    80002854:	00000613          	li	a2,0
    80002858:	00a00593          	li	a1,10
    8000285c:	0009051b          	sext.w	a0,s2
    80002860:	00002097          	auipc	ra,0x2
    80002864:	e84080e7          	jalr	-380(ra) # 800046e4 <_Z8printIntiii>
    80002868:	00006517          	auipc	a0,0x6
    8000286c:	c2850513          	addi	a0,a0,-984 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80002870:	00002097          	auipc	ra,0x2
    80002874:	cc4080e7          	jalr	-828(ra) # 80004534 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002878:	00c00513          	li	a0,12
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	d30080e7          	jalr	-720(ra) # 800025ac <_ZL9fibonaccim>
    80002884:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002888:	00006517          	auipc	a0,0x6
    8000288c:	a0850513          	addi	a0,a0,-1528 # 80008290 <_ZZ13_printIntegermE6digits+0x150>
    80002890:	00002097          	auipc	ra,0x2
    80002894:	ca4080e7          	jalr	-860(ra) # 80004534 <_Z11printStringPKc>
    80002898:	00000613          	li	a2,0
    8000289c:	00a00593          	li	a1,10
    800028a0:	0009051b          	sext.w	a0,s2
    800028a4:	00002097          	auipc	ra,0x2
    800028a8:	e40080e7          	jalr	-448(ra) # 800046e4 <_Z8printIntiii>
    800028ac:	00006517          	auipc	a0,0x6
    800028b0:	be450513          	addi	a0,a0,-1052 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    800028b4:	00002097          	auipc	ra,0x2
    800028b8:	c80080e7          	jalr	-896(ra) # 80004534 <_Z11printStringPKc>
    800028bc:	0400006f          	j	800028fc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800028c0:	00006517          	auipc	a0,0x6
    800028c4:	9b050513          	addi	a0,a0,-1616 # 80008270 <_ZZ13_printIntegermE6digits+0x130>
    800028c8:	00002097          	auipc	ra,0x2
    800028cc:	c6c080e7          	jalr	-916(ra) # 80004534 <_Z11printStringPKc>
    800028d0:	00000613          	li	a2,0
    800028d4:	00a00593          	li	a1,10
    800028d8:	00048513          	mv	a0,s1
    800028dc:	00002097          	auipc	ra,0x2
    800028e0:	e08080e7          	jalr	-504(ra) # 800046e4 <_Z8printIntiii>
    800028e4:	00006517          	auipc	a0,0x6
    800028e8:	bac50513          	addi	a0,a0,-1108 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    800028ec:	00002097          	auipc	ra,0x2
    800028f0:	c48080e7          	jalr	-952(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800028f4:	0014849b          	addiw	s1,s1,1
    800028f8:	0ff4f493          	andi	s1,s1,255
    800028fc:	00500793          	li	a5,5
    80002900:	fc97f0e3          	bgeu	a5,s1,800028c0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002904:	00006517          	auipc	a0,0x6
    80002908:	94450513          	addi	a0,a0,-1724 # 80008248 <_ZZ13_printIntegermE6digits+0x108>
    8000290c:	00002097          	auipc	ra,0x2
    80002910:	c28080e7          	jalr	-984(ra) # 80004534 <_Z11printStringPKc>
    finishedC = true;
    80002914:	00100793          	li	a5,1
    80002918:	00008717          	auipc	a4,0x8
    8000291c:	a6f70923          	sb	a5,-1422(a4) # 8000a38a <_ZL9finishedC>
    thread_dispatch();
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	988080e7          	jalr	-1656(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002928:	01813083          	ld	ra,24(sp)
    8000292c:	01013403          	ld	s0,16(sp)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	00013903          	ld	s2,0(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret

0000000080002940 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002940:	fe010113          	addi	sp,sp,-32
    80002944:	00113c23          	sd	ra,24(sp)
    80002948:	00813823          	sd	s0,16(sp)
    8000294c:	00913423          	sd	s1,8(sp)
    80002950:	01213023          	sd	s2,0(sp)
    80002954:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002958:	00a00493          	li	s1,10
    8000295c:	0400006f          	j	8000299c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002960:	00006517          	auipc	a0,0x6
    80002964:	94050513          	addi	a0,a0,-1728 # 800082a0 <_ZZ13_printIntegermE6digits+0x160>
    80002968:	00002097          	auipc	ra,0x2
    8000296c:	bcc080e7          	jalr	-1076(ra) # 80004534 <_Z11printStringPKc>
    80002970:	00000613          	li	a2,0
    80002974:	00a00593          	li	a1,10
    80002978:	00048513          	mv	a0,s1
    8000297c:	00002097          	auipc	ra,0x2
    80002980:	d68080e7          	jalr	-664(ra) # 800046e4 <_Z8printIntiii>
    80002984:	00006517          	auipc	a0,0x6
    80002988:	b0c50513          	addi	a0,a0,-1268 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    8000298c:	00002097          	auipc	ra,0x2
    80002990:	ba8080e7          	jalr	-1112(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002994:	0014849b          	addiw	s1,s1,1
    80002998:	0ff4f493          	andi	s1,s1,255
    8000299c:	00c00793          	li	a5,12
    800029a0:	fc97f0e3          	bgeu	a5,s1,80002960 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800029a4:	00006517          	auipc	a0,0x6
    800029a8:	90450513          	addi	a0,a0,-1788 # 800082a8 <_ZZ13_printIntegermE6digits+0x168>
    800029ac:	00002097          	auipc	ra,0x2
    800029b0:	b88080e7          	jalr	-1144(ra) # 80004534 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800029b4:	00500313          	li	t1,5
    thread_dispatch();
    800029b8:	fffff097          	auipc	ra,0xfffff
    800029bc:	8f0080e7          	jalr	-1808(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800029c0:	01000513          	li	a0,16
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	be8080e7          	jalr	-1048(ra) # 800025ac <_ZL9fibonaccim>
    800029cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800029d0:	00006517          	auipc	a0,0x6
    800029d4:	8e850513          	addi	a0,a0,-1816 # 800082b8 <_ZZ13_printIntegermE6digits+0x178>
    800029d8:	00002097          	auipc	ra,0x2
    800029dc:	b5c080e7          	jalr	-1188(ra) # 80004534 <_Z11printStringPKc>
    800029e0:	00000613          	li	a2,0
    800029e4:	00a00593          	li	a1,10
    800029e8:	0009051b          	sext.w	a0,s2
    800029ec:	00002097          	auipc	ra,0x2
    800029f0:	cf8080e7          	jalr	-776(ra) # 800046e4 <_Z8printIntiii>
    800029f4:	00006517          	auipc	a0,0x6
    800029f8:	a9c50513          	addi	a0,a0,-1380 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    800029fc:	00002097          	auipc	ra,0x2
    80002a00:	b38080e7          	jalr	-1224(ra) # 80004534 <_Z11printStringPKc>
    80002a04:	0400006f          	j	80002a44 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a08:	00006517          	auipc	a0,0x6
    80002a0c:	89850513          	addi	a0,a0,-1896 # 800082a0 <_ZZ13_printIntegermE6digits+0x160>
    80002a10:	00002097          	auipc	ra,0x2
    80002a14:	b24080e7          	jalr	-1244(ra) # 80004534 <_Z11printStringPKc>
    80002a18:	00000613          	li	a2,0
    80002a1c:	00a00593          	li	a1,10
    80002a20:	00048513          	mv	a0,s1
    80002a24:	00002097          	auipc	ra,0x2
    80002a28:	cc0080e7          	jalr	-832(ra) # 800046e4 <_Z8printIntiii>
    80002a2c:	00006517          	auipc	a0,0x6
    80002a30:	a6450513          	addi	a0,a0,-1436 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80002a34:	00002097          	auipc	ra,0x2
    80002a38:	b00080e7          	jalr	-1280(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002a3c:	0014849b          	addiw	s1,s1,1
    80002a40:	0ff4f493          	andi	s1,s1,255
    80002a44:	00f00793          	li	a5,15
    80002a48:	fc97f0e3          	bgeu	a5,s1,80002a08 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002a4c:	00006517          	auipc	a0,0x6
    80002a50:	87c50513          	addi	a0,a0,-1924 # 800082c8 <_ZZ13_printIntegermE6digits+0x188>
    80002a54:	00002097          	auipc	ra,0x2
    80002a58:	ae0080e7          	jalr	-1312(ra) # 80004534 <_Z11printStringPKc>
    finishedD = true;
    80002a5c:	00100793          	li	a5,1
    80002a60:	00008717          	auipc	a4,0x8
    80002a64:	92f705a3          	sb	a5,-1749(a4) # 8000a38b <_ZL9finishedD>
    thread_dispatch();
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	840080e7          	jalr	-1984(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	01013403          	ld	s0,16(sp)
    80002a78:	00813483          	ld	s1,8(sp)
    80002a7c:	00013903          	ld	s2,0(sp)
    80002a80:	02010113          	addi	sp,sp,32
    80002a84:	00008067          	ret

0000000080002a88 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002a88:	fc010113          	addi	sp,sp,-64
    80002a8c:	02113c23          	sd	ra,56(sp)
    80002a90:	02813823          	sd	s0,48(sp)
    80002a94:	02913423          	sd	s1,40(sp)
    80002a98:	03213023          	sd	s2,32(sp)
    80002a9c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002aa0:	02000513          	li	a0,32
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	dfc080e7          	jalr	-516(ra) # 800018a0 <_Znwm>
    80002aac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	f80080e7          	jalr	-128(ra) # 80001a30 <_ZN6ThreadC1Ev>
    80002ab8:	00007797          	auipc	a5,0x7
    80002abc:	6a878793          	addi	a5,a5,1704 # 8000a160 <_ZTV7WorkerA+0x10>
    80002ac0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002ac4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002ac8:	00006517          	auipc	a0,0x6
    80002acc:	81050513          	addi	a0,a0,-2032 # 800082d8 <_ZZ13_printIntegermE6digits+0x198>
    80002ad0:	00002097          	auipc	ra,0x2
    80002ad4:	a64080e7          	jalr	-1436(ra) # 80004534 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002ad8:	02000513          	li	a0,32
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	dc4080e7          	jalr	-572(ra) # 800018a0 <_Znwm>
    80002ae4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	f48080e7          	jalr	-184(ra) # 80001a30 <_ZN6ThreadC1Ev>
    80002af0:	00007797          	auipc	a5,0x7
    80002af4:	69878793          	addi	a5,a5,1688 # 8000a188 <_ZTV7WorkerB+0x10>
    80002af8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002afc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002b00:	00005517          	auipc	a0,0x5
    80002b04:	7f050513          	addi	a0,a0,2032 # 800082f0 <_ZZ13_printIntegermE6digits+0x1b0>
    80002b08:	00002097          	auipc	ra,0x2
    80002b0c:	a2c080e7          	jalr	-1492(ra) # 80004534 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002b10:	02000513          	li	a0,32
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	d8c080e7          	jalr	-628(ra) # 800018a0 <_Znwm>
    80002b1c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	f10080e7          	jalr	-240(ra) # 80001a30 <_ZN6ThreadC1Ev>
    80002b28:	00007797          	auipc	a5,0x7
    80002b2c:	68878793          	addi	a5,a5,1672 # 8000a1b0 <_ZTV7WorkerC+0x10>
    80002b30:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002b34:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002b38:	00005517          	auipc	a0,0x5
    80002b3c:	7d050513          	addi	a0,a0,2000 # 80008308 <_ZZ13_printIntegermE6digits+0x1c8>
    80002b40:	00002097          	auipc	ra,0x2
    80002b44:	9f4080e7          	jalr	-1548(ra) # 80004534 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002b48:	02000513          	li	a0,32
    80002b4c:	fffff097          	auipc	ra,0xfffff
    80002b50:	d54080e7          	jalr	-684(ra) # 800018a0 <_Znwm>
    80002b54:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	ed8080e7          	jalr	-296(ra) # 80001a30 <_ZN6ThreadC1Ev>
    80002b60:	00007797          	auipc	a5,0x7
    80002b64:	67878793          	addi	a5,a5,1656 # 8000a1d8 <_ZTV7WorkerD+0x10>
    80002b68:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002b6c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002b70:	00005517          	auipc	a0,0x5
    80002b74:	7b050513          	addi	a0,a0,1968 # 80008320 <_ZZ13_printIntegermE6digits+0x1e0>
    80002b78:	00002097          	auipc	ra,0x2
    80002b7c:	9bc080e7          	jalr	-1604(ra) # 80004534 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002b80:	00000493          	li	s1,0
    80002b84:	00300793          	li	a5,3
    80002b88:	0297c663          	blt	a5,s1,80002bb4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002b8c:	00349793          	slli	a5,s1,0x3
    80002b90:	fe040713          	addi	a4,s0,-32
    80002b94:	00f707b3          	add	a5,a4,a5
    80002b98:	fe07b503          	ld	a0,-32(a5)
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	e38080e7          	jalr	-456(ra) # 800019d4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002ba4:	0014849b          	addiw	s1,s1,1
    80002ba8:	fddff06f          	j	80002b84 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	e5c080e7          	jalr	-420(ra) # 80001a08 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002bb4:	00007797          	auipc	a5,0x7
    80002bb8:	7d47c783          	lbu	a5,2004(a5) # 8000a388 <_ZL9finishedA>
    80002bbc:	fe0788e3          	beqz	a5,80002bac <_Z20Threads_CPP_API_testv+0x124>
    80002bc0:	00007797          	auipc	a5,0x7
    80002bc4:	7c97c783          	lbu	a5,1993(a5) # 8000a389 <_ZL9finishedB>
    80002bc8:	fe0782e3          	beqz	a5,80002bac <_Z20Threads_CPP_API_testv+0x124>
    80002bcc:	00007797          	auipc	a5,0x7
    80002bd0:	7be7c783          	lbu	a5,1982(a5) # 8000a38a <_ZL9finishedC>
    80002bd4:	fc078ce3          	beqz	a5,80002bac <_Z20Threads_CPP_API_testv+0x124>
    80002bd8:	00007797          	auipc	a5,0x7
    80002bdc:	7b37c783          	lbu	a5,1971(a5) # 8000a38b <_ZL9finishedD>
    80002be0:	fc0786e3          	beqz	a5,80002bac <_Z20Threads_CPP_API_testv+0x124>
    80002be4:	fc040493          	addi	s1,s0,-64
    80002be8:	0080006f          	j	80002bf0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002bec:	00848493          	addi	s1,s1,8
    80002bf0:	fe040793          	addi	a5,s0,-32
    80002bf4:	08f48663          	beq	s1,a5,80002c80 <_Z20Threads_CPP_API_testv+0x1f8>
    80002bf8:	0004b503          	ld	a0,0(s1)
    80002bfc:	fe0508e3          	beqz	a0,80002bec <_Z20Threads_CPP_API_testv+0x164>
    80002c00:	00053783          	ld	a5,0(a0)
    80002c04:	0087b783          	ld	a5,8(a5)
    80002c08:	000780e7          	jalr	a5
    80002c0c:	fe1ff06f          	j	80002bec <_Z20Threads_CPP_API_testv+0x164>
    80002c10:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002c14:	00048513          	mv	a0,s1
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	cd8080e7          	jalr	-808(ra) # 800018f0 <_ZdlPv>
    80002c20:	00090513          	mv	a0,s2
    80002c24:	00009097          	auipc	ra,0x9
    80002c28:	874080e7          	jalr	-1932(ra) # 8000b498 <_Unwind_Resume>
    80002c2c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002c30:	00048513          	mv	a0,s1
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	cbc080e7          	jalr	-836(ra) # 800018f0 <_ZdlPv>
    80002c3c:	00090513          	mv	a0,s2
    80002c40:	00009097          	auipc	ra,0x9
    80002c44:	858080e7          	jalr	-1960(ra) # 8000b498 <_Unwind_Resume>
    80002c48:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	fffff097          	auipc	ra,0xfffff
    80002c54:	ca0080e7          	jalr	-864(ra) # 800018f0 <_ZdlPv>
    80002c58:	00090513          	mv	a0,s2
    80002c5c:	00009097          	auipc	ra,0x9
    80002c60:	83c080e7          	jalr	-1988(ra) # 8000b498 <_Unwind_Resume>
    80002c64:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002c68:	00048513          	mv	a0,s1
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	c84080e7          	jalr	-892(ra) # 800018f0 <_ZdlPv>
    80002c74:	00090513          	mv	a0,s2
    80002c78:	00009097          	auipc	ra,0x9
    80002c7c:	820080e7          	jalr	-2016(ra) # 8000b498 <_Unwind_Resume>
}
    80002c80:	03813083          	ld	ra,56(sp)
    80002c84:	03013403          	ld	s0,48(sp)
    80002c88:	02813483          	ld	s1,40(sp)
    80002c8c:	02013903          	ld	s2,32(sp)
    80002c90:	04010113          	addi	sp,sp,64
    80002c94:	00008067          	ret

0000000080002c98 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00113423          	sd	ra,8(sp)
    80002ca0:	00813023          	sd	s0,0(sp)
    80002ca4:	01010413          	addi	s0,sp,16
    80002ca8:	00007797          	auipc	a5,0x7
    80002cac:	4b878793          	addi	a5,a5,1208 # 8000a160 <_ZTV7WorkerA+0x10>
    80002cb0:	00f53023          	sd	a5,0(a0)
    80002cb4:	fffff097          	auipc	ra,0xfffff
    80002cb8:	b9c080e7          	jalr	-1124(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002cbc:	00813083          	ld	ra,8(sp)
    80002cc0:	00013403          	ld	s0,0(sp)
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00008067          	ret

0000000080002ccc <_ZN7WorkerAD0Ev>:
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00113c23          	sd	ra,24(sp)
    80002cd4:	00813823          	sd	s0,16(sp)
    80002cd8:	00913423          	sd	s1,8(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    80002ce0:	00050493          	mv	s1,a0
    80002ce4:	00007797          	auipc	a5,0x7
    80002ce8:	47c78793          	addi	a5,a5,1148 # 8000a160 <_ZTV7WorkerA+0x10>
    80002cec:	00f53023          	sd	a5,0(a0)
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	b60080e7          	jalr	-1184(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002cf8:	00048513          	mv	a0,s1
    80002cfc:	fffff097          	auipc	ra,0xfffff
    80002d00:	bf4080e7          	jalr	-1036(ra) # 800018f0 <_ZdlPv>
    80002d04:	01813083          	ld	ra,24(sp)
    80002d08:	01013403          	ld	s0,16(sp)
    80002d0c:	00813483          	ld	s1,8(sp)
    80002d10:	02010113          	addi	sp,sp,32
    80002d14:	00008067          	ret

0000000080002d18 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002d18:	ff010113          	addi	sp,sp,-16
    80002d1c:	00113423          	sd	ra,8(sp)
    80002d20:	00813023          	sd	s0,0(sp)
    80002d24:	01010413          	addi	s0,sp,16
    80002d28:	00007797          	auipc	a5,0x7
    80002d2c:	46078793          	addi	a5,a5,1120 # 8000a188 <_ZTV7WorkerB+0x10>
    80002d30:	00f53023          	sd	a5,0(a0)
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	b1c080e7          	jalr	-1252(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002d3c:	00813083          	ld	ra,8(sp)
    80002d40:	00013403          	ld	s0,0(sp)
    80002d44:	01010113          	addi	sp,sp,16
    80002d48:	00008067          	ret

0000000080002d4c <_ZN7WorkerBD0Ev>:
    80002d4c:	fe010113          	addi	sp,sp,-32
    80002d50:	00113c23          	sd	ra,24(sp)
    80002d54:	00813823          	sd	s0,16(sp)
    80002d58:	00913423          	sd	s1,8(sp)
    80002d5c:	02010413          	addi	s0,sp,32
    80002d60:	00050493          	mv	s1,a0
    80002d64:	00007797          	auipc	a5,0x7
    80002d68:	42478793          	addi	a5,a5,1060 # 8000a188 <_ZTV7WorkerB+0x10>
    80002d6c:	00f53023          	sd	a5,0(a0)
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	ae0080e7          	jalr	-1312(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	b74080e7          	jalr	-1164(ra) # 800018f0 <_ZdlPv>
    80002d84:	01813083          	ld	ra,24(sp)
    80002d88:	01013403          	ld	s0,16(sp)
    80002d8c:	00813483          	ld	s1,8(sp)
    80002d90:	02010113          	addi	sp,sp,32
    80002d94:	00008067          	ret

0000000080002d98 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00113423          	sd	ra,8(sp)
    80002da0:	00813023          	sd	s0,0(sp)
    80002da4:	01010413          	addi	s0,sp,16
    80002da8:	00007797          	auipc	a5,0x7
    80002dac:	40878793          	addi	a5,a5,1032 # 8000a1b0 <_ZTV7WorkerC+0x10>
    80002db0:	00f53023          	sd	a5,0(a0)
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	a9c080e7          	jalr	-1380(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002dbc:	00813083          	ld	ra,8(sp)
    80002dc0:	00013403          	ld	s0,0(sp)
    80002dc4:	01010113          	addi	sp,sp,16
    80002dc8:	00008067          	ret

0000000080002dcc <_ZN7WorkerCD0Ev>:
    80002dcc:	fe010113          	addi	sp,sp,-32
    80002dd0:	00113c23          	sd	ra,24(sp)
    80002dd4:	00813823          	sd	s0,16(sp)
    80002dd8:	00913423          	sd	s1,8(sp)
    80002ddc:	02010413          	addi	s0,sp,32
    80002de0:	00050493          	mv	s1,a0
    80002de4:	00007797          	auipc	a5,0x7
    80002de8:	3cc78793          	addi	a5,a5,972 # 8000a1b0 <_ZTV7WorkerC+0x10>
    80002dec:	00f53023          	sd	a5,0(a0)
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	a60080e7          	jalr	-1440(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002df8:	00048513          	mv	a0,s1
    80002dfc:	fffff097          	auipc	ra,0xfffff
    80002e00:	af4080e7          	jalr	-1292(ra) # 800018f0 <_ZdlPv>
    80002e04:	01813083          	ld	ra,24(sp)
    80002e08:	01013403          	ld	s0,16(sp)
    80002e0c:	00813483          	ld	s1,8(sp)
    80002e10:	02010113          	addi	sp,sp,32
    80002e14:	00008067          	ret

0000000080002e18 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00113423          	sd	ra,8(sp)
    80002e20:	00813023          	sd	s0,0(sp)
    80002e24:	01010413          	addi	s0,sp,16
    80002e28:	00007797          	auipc	a5,0x7
    80002e2c:	3b078793          	addi	a5,a5,944 # 8000a1d8 <_ZTV7WorkerD+0x10>
    80002e30:	00f53023          	sd	a5,0(a0)
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	a1c080e7          	jalr	-1508(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002e3c:	00813083          	ld	ra,8(sp)
    80002e40:	00013403          	ld	s0,0(sp)
    80002e44:	01010113          	addi	sp,sp,16
    80002e48:	00008067          	ret

0000000080002e4c <_ZN7WorkerDD0Ev>:
    80002e4c:	fe010113          	addi	sp,sp,-32
    80002e50:	00113c23          	sd	ra,24(sp)
    80002e54:	00813823          	sd	s0,16(sp)
    80002e58:	00913423          	sd	s1,8(sp)
    80002e5c:	02010413          	addi	s0,sp,32
    80002e60:	00050493          	mv	s1,a0
    80002e64:	00007797          	auipc	a5,0x7
    80002e68:	37478793          	addi	a5,a5,884 # 8000a1d8 <_ZTV7WorkerD+0x10>
    80002e6c:	00f53023          	sd	a5,0(a0)
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	9e0080e7          	jalr	-1568(ra) # 80001850 <_ZN6ThreadD1Ev>
    80002e78:	00048513          	mv	a0,s1
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	a74080e7          	jalr	-1420(ra) # 800018f0 <_ZdlPv>
    80002e84:	01813083          	ld	ra,24(sp)
    80002e88:	01013403          	ld	s0,16(sp)
    80002e8c:	00813483          	ld	s1,8(sp)
    80002e90:	02010113          	addi	sp,sp,32
    80002e94:	00008067          	ret

0000000080002e98 <_ZN7WorkerA3runEv>:
    void run() override {
    80002e98:	ff010113          	addi	sp,sp,-16
    80002e9c:	00113423          	sd	ra,8(sp)
    80002ea0:	00813023          	sd	s0,0(sp)
    80002ea4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002ea8:	00000593          	li	a1,0
    80002eac:	fffff097          	auipc	ra,0xfffff
    80002eb0:	774080e7          	jalr	1908(ra) # 80002620 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002eb4:	00813083          	ld	ra,8(sp)
    80002eb8:	00013403          	ld	s0,0(sp)
    80002ebc:	01010113          	addi	sp,sp,16
    80002ec0:	00008067          	ret

0000000080002ec4 <_ZN7WorkerB3runEv>:
    void run() override {
    80002ec4:	ff010113          	addi	sp,sp,-16
    80002ec8:	00113423          	sd	ra,8(sp)
    80002ecc:	00813023          	sd	s0,0(sp)
    80002ed0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002ed4:	00000593          	li	a1,0
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	814080e7          	jalr	-2028(ra) # 800026ec <_ZN7WorkerB11workerBodyBEPv>
    }
    80002ee0:	00813083          	ld	ra,8(sp)
    80002ee4:	00013403          	ld	s0,0(sp)
    80002ee8:	01010113          	addi	sp,sp,16
    80002eec:	00008067          	ret

0000000080002ef0 <_ZN7WorkerC3runEv>:
    void run() override {
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00113423          	sd	ra,8(sp)
    80002ef8:	00813023          	sd	s0,0(sp)
    80002efc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002f00:	00000593          	li	a1,0
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	8bc080e7          	jalr	-1860(ra) # 800027c0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80002f0c:	00813083          	ld	ra,8(sp)
    80002f10:	00013403          	ld	s0,0(sp)
    80002f14:	01010113          	addi	sp,sp,16
    80002f18:	00008067          	ret

0000000080002f1c <_ZN7WorkerD3runEv>:
    void run() override {
    80002f1c:	ff010113          	addi	sp,sp,-16
    80002f20:	00113423          	sd	ra,8(sp)
    80002f24:	00813023          	sd	s0,0(sp)
    80002f28:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002f2c:	00000593          	li	a1,0
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	a10080e7          	jalr	-1520(ra) # 80002940 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002f38:	00813083          	ld	ra,8(sp)
    80002f3c:	00013403          	ld	s0,0(sp)
    80002f40:	01010113          	addi	sp,sp,16
    80002f44:	00008067          	ret

0000000080002f48 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80002f48:	f8010113          	addi	sp,sp,-128
    80002f4c:	06113c23          	sd	ra,120(sp)
    80002f50:	06813823          	sd	s0,112(sp)
    80002f54:	06913423          	sd	s1,104(sp)
    80002f58:	07213023          	sd	s2,96(sp)
    80002f5c:	05313c23          	sd	s3,88(sp)
    80002f60:	05413823          	sd	s4,80(sp)
    80002f64:	05513423          	sd	s5,72(sp)
    80002f68:	05613023          	sd	s6,64(sp)
    80002f6c:	03713c23          	sd	s7,56(sp)
    80002f70:	03813823          	sd	s8,48(sp)
    80002f74:	03913423          	sd	s9,40(sp)
    80002f78:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80002f7c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80002f80:	00005517          	auipc	a0,0x5
    80002f84:	1d850513          	addi	a0,a0,472 # 80008158 <_ZZ13_printIntegermE6digits+0x18>
    80002f88:	00001097          	auipc	ra,0x1
    80002f8c:	5ac080e7          	jalr	1452(ra) # 80004534 <_Z11printStringPKc>
    getString(input, 30);
    80002f90:	01e00593          	li	a1,30
    80002f94:	f8040493          	addi	s1,s0,-128
    80002f98:	00048513          	mv	a0,s1
    80002f9c:	00001097          	auipc	ra,0x1
    80002fa0:	620080e7          	jalr	1568(ra) # 800045bc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002fa4:	00048513          	mv	a0,s1
    80002fa8:	00001097          	auipc	ra,0x1
    80002fac:	6ec080e7          	jalr	1772(ra) # 80004694 <_Z11stringToIntPKc>
    80002fb0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80002fb4:	00005517          	auipc	a0,0x5
    80002fb8:	1c450513          	addi	a0,a0,452 # 80008178 <_ZZ13_printIntegermE6digits+0x38>
    80002fbc:	00001097          	auipc	ra,0x1
    80002fc0:	578080e7          	jalr	1400(ra) # 80004534 <_Z11printStringPKc>
    getString(input, 30);
    80002fc4:	01e00593          	li	a1,30
    80002fc8:	00048513          	mv	a0,s1
    80002fcc:	00001097          	auipc	ra,0x1
    80002fd0:	5f0080e7          	jalr	1520(ra) # 800045bc <_Z9getStringPci>
    n = stringToInt(input);
    80002fd4:	00048513          	mv	a0,s1
    80002fd8:	00001097          	auipc	ra,0x1
    80002fdc:	6bc080e7          	jalr	1724(ra) # 80004694 <_Z11stringToIntPKc>
    80002fe0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80002fe4:	00005517          	auipc	a0,0x5
    80002fe8:	1b450513          	addi	a0,a0,436 # 80008198 <_ZZ13_printIntegermE6digits+0x58>
    80002fec:	00001097          	auipc	ra,0x1
    80002ff0:	548080e7          	jalr	1352(ra) # 80004534 <_Z11printStringPKc>
    printInt(threadNum);
    80002ff4:	00000613          	li	a2,0
    80002ff8:	00a00593          	li	a1,10
    80002ffc:	00098513          	mv	a0,s3
    80003000:	00001097          	auipc	ra,0x1
    80003004:	6e4080e7          	jalr	1764(ra) # 800046e4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003008:	00005517          	auipc	a0,0x5
    8000300c:	1a850513          	addi	a0,a0,424 # 800081b0 <_ZZ13_printIntegermE6digits+0x70>
    80003010:	00001097          	auipc	ra,0x1
    80003014:	524080e7          	jalr	1316(ra) # 80004534 <_Z11printStringPKc>
    printInt(n);
    80003018:	00000613          	li	a2,0
    8000301c:	00a00593          	li	a1,10
    80003020:	00048513          	mv	a0,s1
    80003024:	00001097          	auipc	ra,0x1
    80003028:	6c0080e7          	jalr	1728(ra) # 800046e4 <_Z8printIntiii>
    printString(".\n");
    8000302c:	00005517          	auipc	a0,0x5
    80003030:	19c50513          	addi	a0,a0,412 # 800081c8 <_ZZ13_printIntegermE6digits+0x88>
    80003034:	00001097          	auipc	ra,0x1
    80003038:	500080e7          	jalr	1280(ra) # 80004534 <_Z11printStringPKc>
    if (threadNum > n) {
    8000303c:	0334c463          	blt	s1,s3,80003064 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003040:	03305c63          	blez	s3,80003078 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003044:	03800513          	li	a0,56
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	858080e7          	jalr	-1960(ra) # 800018a0 <_Znwm>
    80003050:	00050a93          	mv	s5,a0
    80003054:	00048593          	mv	a1,s1
    80003058:	00001097          	auipc	ra,0x1
    8000305c:	7ac080e7          	jalr	1964(ra) # 80004804 <_ZN9BufferCPPC1Ei>
    80003060:	0300006f          	j	80003090 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003064:	00005517          	auipc	a0,0x5
    80003068:	16c50513          	addi	a0,a0,364 # 800081d0 <_ZZ13_printIntegermE6digits+0x90>
    8000306c:	00001097          	auipc	ra,0x1
    80003070:	4c8080e7          	jalr	1224(ra) # 80004534 <_Z11printStringPKc>
        return;
    80003074:	0140006f          	j	80003088 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003078:	00005517          	auipc	a0,0x5
    8000307c:	19850513          	addi	a0,a0,408 # 80008210 <_ZZ13_printIntegermE6digits+0xd0>
    80003080:	00001097          	auipc	ra,0x1
    80003084:	4b4080e7          	jalr	1204(ra) # 80004534 <_Z11printStringPKc>
        return;
    80003088:	000c0113          	mv	sp,s8
    8000308c:	2140006f          	j	800032a0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003090:	01000513          	li	a0,16
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	80c080e7          	jalr	-2036(ra) # 800018a0 <_Znwm>
    8000309c:	00050913          	mv	s2,a0
    800030a0:	00000593          	li	a1,0
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	9ec080e7          	jalr	-1556(ra) # 80001a90 <_ZN9SemaphoreC1Ej>
    800030ac:	00007797          	auipc	a5,0x7
    800030b0:	2f27b623          	sd	s2,748(a5) # 8000a398 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800030b4:	00399793          	slli	a5,s3,0x3
    800030b8:	00f78793          	addi	a5,a5,15
    800030bc:	ff07f793          	andi	a5,a5,-16
    800030c0:	40f10133          	sub	sp,sp,a5
    800030c4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800030c8:	0019871b          	addiw	a4,s3,1
    800030cc:	00171793          	slli	a5,a4,0x1
    800030d0:	00e787b3          	add	a5,a5,a4
    800030d4:	00379793          	slli	a5,a5,0x3
    800030d8:	00f78793          	addi	a5,a5,15
    800030dc:	ff07f793          	andi	a5,a5,-16
    800030e0:	40f10133          	sub	sp,sp,a5
    800030e4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800030e8:	00199493          	slli	s1,s3,0x1
    800030ec:	013484b3          	add	s1,s1,s3
    800030f0:	00349493          	slli	s1,s1,0x3
    800030f4:	009b04b3          	add	s1,s6,s1
    800030f8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800030fc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003100:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003104:	02800513          	li	a0,40
    80003108:	ffffe097          	auipc	ra,0xffffe
    8000310c:	798080e7          	jalr	1944(ra) # 800018a0 <_Znwm>
    80003110:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003114:	fffff097          	auipc	ra,0xfffff
    80003118:	91c080e7          	jalr	-1764(ra) # 80001a30 <_ZN6ThreadC1Ev>
    8000311c:	00007797          	auipc	a5,0x7
    80003120:	13478793          	addi	a5,a5,308 # 8000a250 <_ZTV8Consumer+0x10>
    80003124:	00fbb023          	sd	a5,0(s7)
    80003128:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000312c:	000b8513          	mv	a0,s7
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	8a4080e7          	jalr	-1884(ra) # 800019d4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003138:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000313c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003140:	00007797          	auipc	a5,0x7
    80003144:	2587b783          	ld	a5,600(a5) # 8000a398 <_ZL10waitForAll>
    80003148:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000314c:	02800513          	li	a0,40
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	750080e7          	jalr	1872(ra) # 800018a0 <_Znwm>
    80003158:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	8d4080e7          	jalr	-1836(ra) # 80001a30 <_ZN6ThreadC1Ev>
    80003164:	00007797          	auipc	a5,0x7
    80003168:	09c78793          	addi	a5,a5,156 # 8000a200 <_ZTV16ProducerKeyborad+0x10>
    8000316c:	00f4b023          	sd	a5,0(s1)
    80003170:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003174:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003178:	00048513          	mv	a0,s1
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	858080e7          	jalr	-1960(ra) # 800019d4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003184:	00100913          	li	s2,1
    80003188:	0300006f          	j	800031b8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000318c:	00007797          	auipc	a5,0x7
    80003190:	09c78793          	addi	a5,a5,156 # 8000a228 <_ZTV8Producer+0x10>
    80003194:	00fcb023          	sd	a5,0(s9)
    80003198:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000319c:	00391793          	slli	a5,s2,0x3
    800031a0:	00fa07b3          	add	a5,s4,a5
    800031a4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800031a8:	000c8513          	mv	a0,s9
    800031ac:	fffff097          	auipc	ra,0xfffff
    800031b0:	828080e7          	jalr	-2008(ra) # 800019d4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800031b4:	0019091b          	addiw	s2,s2,1
    800031b8:	05395263          	bge	s2,s3,800031fc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800031bc:	00191493          	slli	s1,s2,0x1
    800031c0:	012484b3          	add	s1,s1,s2
    800031c4:	00349493          	slli	s1,s1,0x3
    800031c8:	009b04b3          	add	s1,s6,s1
    800031cc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800031d0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800031d4:	00007797          	auipc	a5,0x7
    800031d8:	1c47b783          	ld	a5,452(a5) # 8000a398 <_ZL10waitForAll>
    800031dc:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800031e0:	02800513          	li	a0,40
    800031e4:	ffffe097          	auipc	ra,0xffffe
    800031e8:	6bc080e7          	jalr	1724(ra) # 800018a0 <_Znwm>
    800031ec:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	840080e7          	jalr	-1984(ra) # 80001a30 <_ZN6ThreadC1Ev>
    800031f8:	f95ff06f          	j	8000318c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800031fc:	fffff097          	auipc	ra,0xfffff
    80003200:	80c080e7          	jalr	-2036(ra) # 80001a08 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003204:	00000493          	li	s1,0
    80003208:	0099ce63          	blt	s3,s1,80003224 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000320c:	00007517          	auipc	a0,0x7
    80003210:	18c53503          	ld	a0,396(a0) # 8000a398 <_ZL10waitForAll>
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	8b4080e7          	jalr	-1868(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000321c:	0014849b          	addiw	s1,s1,1
    80003220:	fe9ff06f          	j	80003208 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003224:	00007517          	auipc	a0,0x7
    80003228:	17453503          	ld	a0,372(a0) # 8000a398 <_ZL10waitForAll>
    8000322c:	00050863          	beqz	a0,8000323c <_Z20testConsumerProducerv+0x2f4>
    80003230:	00053783          	ld	a5,0(a0)
    80003234:	0087b783          	ld	a5,8(a5)
    80003238:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000323c:	00000493          	li	s1,0
    80003240:	0080006f          	j	80003248 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003244:	0014849b          	addiw	s1,s1,1
    80003248:	0334d263          	bge	s1,s3,8000326c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000324c:	00349793          	slli	a5,s1,0x3
    80003250:	00fa07b3          	add	a5,s4,a5
    80003254:	0007b503          	ld	a0,0(a5)
    80003258:	fe0506e3          	beqz	a0,80003244 <_Z20testConsumerProducerv+0x2fc>
    8000325c:	00053783          	ld	a5,0(a0)
    80003260:	0087b783          	ld	a5,8(a5)
    80003264:	000780e7          	jalr	a5
    80003268:	fddff06f          	j	80003244 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000326c:	000b8a63          	beqz	s7,80003280 <_Z20testConsumerProducerv+0x338>
    80003270:	000bb783          	ld	a5,0(s7)
    80003274:	0087b783          	ld	a5,8(a5)
    80003278:	000b8513          	mv	a0,s7
    8000327c:	000780e7          	jalr	a5
    delete buffer;
    80003280:	000a8e63          	beqz	s5,8000329c <_Z20testConsumerProducerv+0x354>
    80003284:	000a8513          	mv	a0,s5
    80003288:	00002097          	auipc	ra,0x2
    8000328c:	874080e7          	jalr	-1932(ra) # 80004afc <_ZN9BufferCPPD1Ev>
    80003290:	000a8513          	mv	a0,s5
    80003294:	ffffe097          	auipc	ra,0xffffe
    80003298:	65c080e7          	jalr	1628(ra) # 800018f0 <_ZdlPv>
    8000329c:	000c0113          	mv	sp,s8
}
    800032a0:	f8040113          	addi	sp,s0,-128
    800032a4:	07813083          	ld	ra,120(sp)
    800032a8:	07013403          	ld	s0,112(sp)
    800032ac:	06813483          	ld	s1,104(sp)
    800032b0:	06013903          	ld	s2,96(sp)
    800032b4:	05813983          	ld	s3,88(sp)
    800032b8:	05013a03          	ld	s4,80(sp)
    800032bc:	04813a83          	ld	s5,72(sp)
    800032c0:	04013b03          	ld	s6,64(sp)
    800032c4:	03813b83          	ld	s7,56(sp)
    800032c8:	03013c03          	ld	s8,48(sp)
    800032cc:	02813c83          	ld	s9,40(sp)
    800032d0:	08010113          	addi	sp,sp,128
    800032d4:	00008067          	ret
    800032d8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800032dc:	000a8513          	mv	a0,s5
    800032e0:	ffffe097          	auipc	ra,0xffffe
    800032e4:	610080e7          	jalr	1552(ra) # 800018f0 <_ZdlPv>
    800032e8:	00048513          	mv	a0,s1
    800032ec:	00008097          	auipc	ra,0x8
    800032f0:	1ac080e7          	jalr	428(ra) # 8000b498 <_Unwind_Resume>
    800032f4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800032f8:	00090513          	mv	a0,s2
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	5f4080e7          	jalr	1524(ra) # 800018f0 <_ZdlPv>
    80003304:	00048513          	mv	a0,s1
    80003308:	00008097          	auipc	ra,0x8
    8000330c:	190080e7          	jalr	400(ra) # 8000b498 <_Unwind_Resume>
    80003310:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003314:	000b8513          	mv	a0,s7
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	5d8080e7          	jalr	1496(ra) # 800018f0 <_ZdlPv>
    80003320:	00048513          	mv	a0,s1
    80003324:	00008097          	auipc	ra,0x8
    80003328:	174080e7          	jalr	372(ra) # 8000b498 <_Unwind_Resume>
    8000332c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003330:	00048513          	mv	a0,s1
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	5bc080e7          	jalr	1468(ra) # 800018f0 <_ZdlPv>
    8000333c:	00090513          	mv	a0,s2
    80003340:	00008097          	auipc	ra,0x8
    80003344:	158080e7          	jalr	344(ra) # 8000b498 <_Unwind_Resume>
    80003348:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000334c:	000c8513          	mv	a0,s9
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	5a0080e7          	jalr	1440(ra) # 800018f0 <_ZdlPv>
    80003358:	00048513          	mv	a0,s1
    8000335c:	00008097          	auipc	ra,0x8
    80003360:	13c080e7          	jalr	316(ra) # 8000b498 <_Unwind_Resume>

0000000080003364 <_ZN8Consumer3runEv>:
    void run() override {
    80003364:	fd010113          	addi	sp,sp,-48
    80003368:	02113423          	sd	ra,40(sp)
    8000336c:	02813023          	sd	s0,32(sp)
    80003370:	00913c23          	sd	s1,24(sp)
    80003374:	01213823          	sd	s2,16(sp)
    80003378:	01313423          	sd	s3,8(sp)
    8000337c:	03010413          	addi	s0,sp,48
    80003380:	00050913          	mv	s2,a0
        int i = 0;
    80003384:	00000993          	li	s3,0
    80003388:	0100006f          	j	80003398 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000338c:	00a00513          	li	a0,10
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	7e4080e7          	jalr	2020(ra) # 80001b74 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003398:	00007797          	auipc	a5,0x7
    8000339c:	ff87a783          	lw	a5,-8(a5) # 8000a390 <_ZL9threadEnd>
    800033a0:	04079a63          	bnez	a5,800033f4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800033a4:	02093783          	ld	a5,32(s2)
    800033a8:	0087b503          	ld	a0,8(a5)
    800033ac:	00001097          	auipc	ra,0x1
    800033b0:	63c080e7          	jalr	1596(ra) # 800049e8 <_ZN9BufferCPP3getEv>
            i++;
    800033b4:	0019849b          	addiw	s1,s3,1
    800033b8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800033bc:	0ff57513          	andi	a0,a0,255
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	7b4080e7          	jalr	1972(ra) # 80001b74 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800033c8:	05000793          	li	a5,80
    800033cc:	02f4e4bb          	remw	s1,s1,a5
    800033d0:	fc0494e3          	bnez	s1,80003398 <_ZN8Consumer3runEv+0x34>
    800033d4:	fb9ff06f          	j	8000338c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800033d8:	02093783          	ld	a5,32(s2)
    800033dc:	0087b503          	ld	a0,8(a5)
    800033e0:	00001097          	auipc	ra,0x1
    800033e4:	608080e7          	jalr	1544(ra) # 800049e8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800033e8:	0ff57513          	andi	a0,a0,255
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	788080e7          	jalr	1928(ra) # 80001b74 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800033f4:	02093783          	ld	a5,32(s2)
    800033f8:	0087b503          	ld	a0,8(a5)
    800033fc:	00001097          	auipc	ra,0x1
    80003400:	678080e7          	jalr	1656(ra) # 80004a74 <_ZN9BufferCPP6getCntEv>
    80003404:	fca04ae3          	bgtz	a0,800033d8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003408:	02093783          	ld	a5,32(s2)
    8000340c:	0107b503          	ld	a0,16(a5)
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	6e4080e7          	jalr	1764(ra) # 80001af4 <_ZN9Semaphore6signalEv>
    }
    80003418:	02813083          	ld	ra,40(sp)
    8000341c:	02013403          	ld	s0,32(sp)
    80003420:	01813483          	ld	s1,24(sp)
    80003424:	01013903          	ld	s2,16(sp)
    80003428:	00813983          	ld	s3,8(sp)
    8000342c:	03010113          	addi	sp,sp,48
    80003430:	00008067          	ret

0000000080003434 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00113423          	sd	ra,8(sp)
    8000343c:	00813023          	sd	s0,0(sp)
    80003440:	01010413          	addi	s0,sp,16
    80003444:	00007797          	auipc	a5,0x7
    80003448:	e0c78793          	addi	a5,a5,-500 # 8000a250 <_ZTV8Consumer+0x10>
    8000344c:	00f53023          	sd	a5,0(a0)
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	400080e7          	jalr	1024(ra) # 80001850 <_ZN6ThreadD1Ev>
    80003458:	00813083          	ld	ra,8(sp)
    8000345c:	00013403          	ld	s0,0(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	00008067          	ret

0000000080003468 <_ZN8ConsumerD0Ev>:
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	00813823          	sd	s0,16(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	02010413          	addi	s0,sp,32
    8000347c:	00050493          	mv	s1,a0
    80003480:	00007797          	auipc	a5,0x7
    80003484:	dd078793          	addi	a5,a5,-560 # 8000a250 <_ZTV8Consumer+0x10>
    80003488:	00f53023          	sd	a5,0(a0)
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	3c4080e7          	jalr	964(ra) # 80001850 <_ZN6ThreadD1Ev>
    80003494:	00048513          	mv	a0,s1
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	458080e7          	jalr	1112(ra) # 800018f0 <_ZdlPv>
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	01013403          	ld	s0,16(sp)
    800034a8:	00813483          	ld	s1,8(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret

00000000800034b4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800034b4:	ff010113          	addi	sp,sp,-16
    800034b8:	00113423          	sd	ra,8(sp)
    800034bc:	00813023          	sd	s0,0(sp)
    800034c0:	01010413          	addi	s0,sp,16
    800034c4:	00007797          	auipc	a5,0x7
    800034c8:	d3c78793          	addi	a5,a5,-708 # 8000a200 <_ZTV16ProducerKeyborad+0x10>
    800034cc:	00f53023          	sd	a5,0(a0)
    800034d0:	ffffe097          	auipc	ra,0xffffe
    800034d4:	380080e7          	jalr	896(ra) # 80001850 <_ZN6ThreadD1Ev>
    800034d8:	00813083          	ld	ra,8(sp)
    800034dc:	00013403          	ld	s0,0(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret

00000000800034e8 <_ZN16ProducerKeyboradD0Ev>:
    800034e8:	fe010113          	addi	sp,sp,-32
    800034ec:	00113c23          	sd	ra,24(sp)
    800034f0:	00813823          	sd	s0,16(sp)
    800034f4:	00913423          	sd	s1,8(sp)
    800034f8:	02010413          	addi	s0,sp,32
    800034fc:	00050493          	mv	s1,a0
    80003500:	00007797          	auipc	a5,0x7
    80003504:	d0078793          	addi	a5,a5,-768 # 8000a200 <_ZTV16ProducerKeyborad+0x10>
    80003508:	00f53023          	sd	a5,0(a0)
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	344080e7          	jalr	836(ra) # 80001850 <_ZN6ThreadD1Ev>
    80003514:	00048513          	mv	a0,s1
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	3d8080e7          	jalr	984(ra) # 800018f0 <_ZdlPv>
    80003520:	01813083          	ld	ra,24(sp)
    80003524:	01013403          	ld	s0,16(sp)
    80003528:	00813483          	ld	s1,8(sp)
    8000352c:	02010113          	addi	sp,sp,32
    80003530:	00008067          	ret

0000000080003534 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003534:	ff010113          	addi	sp,sp,-16
    80003538:	00113423          	sd	ra,8(sp)
    8000353c:	00813023          	sd	s0,0(sp)
    80003540:	01010413          	addi	s0,sp,16
    80003544:	00007797          	auipc	a5,0x7
    80003548:	ce478793          	addi	a5,a5,-796 # 8000a228 <_ZTV8Producer+0x10>
    8000354c:	00f53023          	sd	a5,0(a0)
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	300080e7          	jalr	768(ra) # 80001850 <_ZN6ThreadD1Ev>
    80003558:	00813083          	ld	ra,8(sp)
    8000355c:	00013403          	ld	s0,0(sp)
    80003560:	01010113          	addi	sp,sp,16
    80003564:	00008067          	ret

0000000080003568 <_ZN8ProducerD0Ev>:
    80003568:	fe010113          	addi	sp,sp,-32
    8000356c:	00113c23          	sd	ra,24(sp)
    80003570:	00813823          	sd	s0,16(sp)
    80003574:	00913423          	sd	s1,8(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00050493          	mv	s1,a0
    80003580:	00007797          	auipc	a5,0x7
    80003584:	ca878793          	addi	a5,a5,-856 # 8000a228 <_ZTV8Producer+0x10>
    80003588:	00f53023          	sd	a5,0(a0)
    8000358c:	ffffe097          	auipc	ra,0xffffe
    80003590:	2c4080e7          	jalr	708(ra) # 80001850 <_ZN6ThreadD1Ev>
    80003594:	00048513          	mv	a0,s1
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	358080e7          	jalr	856(ra) # 800018f0 <_ZdlPv>
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	00813483          	ld	s1,8(sp)
    800035ac:	02010113          	addi	sp,sp,32
    800035b0:	00008067          	ret

00000000800035b4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800035b4:	fe010113          	addi	sp,sp,-32
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00813823          	sd	s0,16(sp)
    800035c0:	00913423          	sd	s1,8(sp)
    800035c4:	02010413          	addi	s0,sp,32
    800035c8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	b9c080e7          	jalr	-1124(ra) # 80001168 <_Z4getcv>
    800035d4:	0005059b          	sext.w	a1,a0
    800035d8:	01b00793          	li	a5,27
    800035dc:	00f58c63          	beq	a1,a5,800035f4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800035e0:	0204b783          	ld	a5,32(s1)
    800035e4:	0087b503          	ld	a0,8(a5)
    800035e8:	00001097          	auipc	ra,0x1
    800035ec:	370080e7          	jalr	880(ra) # 80004958 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800035f0:	fddff06f          	j	800035cc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800035f4:	00100793          	li	a5,1
    800035f8:	00007717          	auipc	a4,0x7
    800035fc:	d8f72c23          	sw	a5,-616(a4) # 8000a390 <_ZL9threadEnd>
        td->buffer->put('!');
    80003600:	0204b783          	ld	a5,32(s1)
    80003604:	02100593          	li	a1,33
    80003608:	0087b503          	ld	a0,8(a5)
    8000360c:	00001097          	auipc	ra,0x1
    80003610:	34c080e7          	jalr	844(ra) # 80004958 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003614:	0204b783          	ld	a5,32(s1)
    80003618:	0107b503          	ld	a0,16(a5)
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	4d8080e7          	jalr	1240(ra) # 80001af4 <_ZN9Semaphore6signalEv>
    }
    80003624:	01813083          	ld	ra,24(sp)
    80003628:	01013403          	ld	s0,16(sp)
    8000362c:	00813483          	ld	s1,8(sp)
    80003630:	02010113          	addi	sp,sp,32
    80003634:	00008067          	ret

0000000080003638 <_ZN8Producer3runEv>:
    void run() override {
    80003638:	fe010113          	addi	sp,sp,-32
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	00813823          	sd	s0,16(sp)
    80003644:	00913423          	sd	s1,8(sp)
    80003648:	01213023          	sd	s2,0(sp)
    8000364c:	02010413          	addi	s0,sp,32
    80003650:	00050493          	mv	s1,a0
        int i = 0;
    80003654:	00000913          	li	s2,0
        while (!threadEnd) {
    80003658:	00007797          	auipc	a5,0x7
    8000365c:	d387a783          	lw	a5,-712(a5) # 8000a390 <_ZL9threadEnd>
    80003660:	04079463          	bnez	a5,800036a8 <_ZN8Producer3runEv+0x70>
            td->buffer->put(td->id + '0');
    80003664:	0204b783          	ld	a5,32(s1)
    80003668:	0007a583          	lw	a1,0(a5)
    8000366c:	0305859b          	addiw	a1,a1,48
    80003670:	0087b503          	ld	a0,8(a5)
    80003674:	00001097          	auipc	ra,0x1
    80003678:	2e4080e7          	jalr	740(ra) # 80004958 <_ZN9BufferCPP3putEi>
            i++;
    8000367c:	0019059b          	addiw	a1,s2,1
    80003680:	0005891b          	sext.w	s2,a1
            Thread::sleep((i + td->id) % 5);
    80003684:	0204b783          	ld	a5,32(s1)
    80003688:	0007a783          	lw	a5,0(a5)
    8000368c:	00b787bb          	addw	a5,a5,a1
    80003690:	00500593          	li	a1,5
    80003694:	02b7e5bb          	remw	a1,a5,a1
    80003698:	00048513          	mv	a0,s1
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	3c8080e7          	jalr	968(ra) # 80001a64 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800036a4:	fb5ff06f          	j	80003658 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800036a8:	0204b783          	ld	a5,32(s1)
    800036ac:	0107b503          	ld	a0,16(a5)
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	444080e7          	jalr	1092(ra) # 80001af4 <_ZN9Semaphore6signalEv>
    }
    800036b8:	01813083          	ld	ra,24(sp)
    800036bc:	01013403          	ld	s0,16(sp)
    800036c0:	00813483          	ld	s1,8(sp)
    800036c4:	00013903          	ld	s2,0(sp)
    800036c8:	02010113          	addi	sp,sp,32
    800036cc:	00008067          	ret

00000000800036d0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800036d0:	fe010113          	addi	sp,sp,-32
    800036d4:	00113c23          	sd	ra,24(sp)
    800036d8:	00813823          	sd	s0,16(sp)
    800036dc:	00913423          	sd	s1,8(sp)
    800036e0:	01213023          	sd	s2,0(sp)
    800036e4:	02010413          	addi	s0,sp,32
    800036e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800036ec:	00100793          	li	a5,1
    800036f0:	02a7f863          	bgeu	a5,a0,80003720 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800036f4:	00a00793          	li	a5,10
    800036f8:	02f577b3          	remu	a5,a0,a5
    800036fc:	02078e63          	beqz	a5,80003738 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003700:	fff48513          	addi	a0,s1,-1
    80003704:	00000097          	auipc	ra,0x0
    80003708:	fcc080e7          	jalr	-52(ra) # 800036d0 <_ZL9fibonaccim>
    8000370c:	00050913          	mv	s2,a0
    80003710:	ffe48513          	addi	a0,s1,-2
    80003714:	00000097          	auipc	ra,0x0
    80003718:	fbc080e7          	jalr	-68(ra) # 800036d0 <_ZL9fibonaccim>
    8000371c:	00a90533          	add	a0,s2,a0
}
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	01013403          	ld	s0,16(sp)
    80003728:	00813483          	ld	s1,8(sp)
    8000372c:	00013903          	ld	s2,0(sp)
    80003730:	02010113          	addi	sp,sp,32
    80003734:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	b70080e7          	jalr	-1168(ra) # 800012a8 <_Z15thread_dispatchv>
    80003740:	fc1ff06f          	j	80003700 <_ZL9fibonaccim+0x30>

0000000080003744 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003744:	fe010113          	addi	sp,sp,-32
    80003748:	00113c23          	sd	ra,24(sp)
    8000374c:	00813823          	sd	s0,16(sp)
    80003750:	00913423          	sd	s1,8(sp)
    80003754:	01213023          	sd	s2,0(sp)
    80003758:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000375c:	00a00493          	li	s1,10
    80003760:	0400006f          	j	800037a0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003764:	00005517          	auipc	a0,0x5
    80003768:	b3c50513          	addi	a0,a0,-1220 # 800082a0 <_ZZ13_printIntegermE6digits+0x160>
    8000376c:	00001097          	auipc	ra,0x1
    80003770:	dc8080e7          	jalr	-568(ra) # 80004534 <_Z11printStringPKc>
    80003774:	00000613          	li	a2,0
    80003778:	00a00593          	li	a1,10
    8000377c:	00048513          	mv	a0,s1
    80003780:	00001097          	auipc	ra,0x1
    80003784:	f64080e7          	jalr	-156(ra) # 800046e4 <_Z8printIntiii>
    80003788:	00005517          	auipc	a0,0x5
    8000378c:	d0850513          	addi	a0,a0,-760 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80003790:	00001097          	auipc	ra,0x1
    80003794:	da4080e7          	jalr	-604(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003798:	0014849b          	addiw	s1,s1,1
    8000379c:	0ff4f493          	andi	s1,s1,255
    800037a0:	00c00793          	li	a5,12
    800037a4:	fc97f0e3          	bgeu	a5,s1,80003764 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800037a8:	00005517          	auipc	a0,0x5
    800037ac:	b0050513          	addi	a0,a0,-1280 # 800082a8 <_ZZ13_printIntegermE6digits+0x168>
    800037b0:	00001097          	auipc	ra,0x1
    800037b4:	d84080e7          	jalr	-636(ra) # 80004534 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800037b8:	00500313          	li	t1,5
    thread_dispatch();
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	aec080e7          	jalr	-1300(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800037c4:	01000513          	li	a0,16
    800037c8:	00000097          	auipc	ra,0x0
    800037cc:	f08080e7          	jalr	-248(ra) # 800036d0 <_ZL9fibonaccim>
    800037d0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800037d4:	00005517          	auipc	a0,0x5
    800037d8:	ae450513          	addi	a0,a0,-1308 # 800082b8 <_ZZ13_printIntegermE6digits+0x178>
    800037dc:	00001097          	auipc	ra,0x1
    800037e0:	d58080e7          	jalr	-680(ra) # 80004534 <_Z11printStringPKc>
    800037e4:	00000613          	li	a2,0
    800037e8:	00a00593          	li	a1,10
    800037ec:	0009051b          	sext.w	a0,s2
    800037f0:	00001097          	auipc	ra,0x1
    800037f4:	ef4080e7          	jalr	-268(ra) # 800046e4 <_Z8printIntiii>
    800037f8:	00005517          	auipc	a0,0x5
    800037fc:	c9850513          	addi	a0,a0,-872 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80003800:	00001097          	auipc	ra,0x1
    80003804:	d34080e7          	jalr	-716(ra) # 80004534 <_Z11printStringPKc>
    80003808:	0400006f          	j	80003848 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000380c:	00005517          	auipc	a0,0x5
    80003810:	a9450513          	addi	a0,a0,-1388 # 800082a0 <_ZZ13_printIntegermE6digits+0x160>
    80003814:	00001097          	auipc	ra,0x1
    80003818:	d20080e7          	jalr	-736(ra) # 80004534 <_Z11printStringPKc>
    8000381c:	00000613          	li	a2,0
    80003820:	00a00593          	li	a1,10
    80003824:	00048513          	mv	a0,s1
    80003828:	00001097          	auipc	ra,0x1
    8000382c:	ebc080e7          	jalr	-324(ra) # 800046e4 <_Z8printIntiii>
    80003830:	00005517          	auipc	a0,0x5
    80003834:	c6050513          	addi	a0,a0,-928 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80003838:	00001097          	auipc	ra,0x1
    8000383c:	cfc080e7          	jalr	-772(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003840:	0014849b          	addiw	s1,s1,1
    80003844:	0ff4f493          	andi	s1,s1,255
    80003848:	00f00793          	li	a5,15
    8000384c:	fc97f0e3          	bgeu	a5,s1,8000380c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003850:	00005517          	auipc	a0,0x5
    80003854:	a7850513          	addi	a0,a0,-1416 # 800082c8 <_ZZ13_printIntegermE6digits+0x188>
    80003858:	00001097          	auipc	ra,0x1
    8000385c:	cdc080e7          	jalr	-804(ra) # 80004534 <_Z11printStringPKc>
    finishedD = true;
    80003860:	00100793          	li	a5,1
    80003864:	00007717          	auipc	a4,0x7
    80003868:	b2f70e23          	sb	a5,-1220(a4) # 8000a3a0 <_ZL9finishedD>
    thread_dispatch();
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	a3c080e7          	jalr	-1476(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003874:	01813083          	ld	ra,24(sp)
    80003878:	01013403          	ld	s0,16(sp)
    8000387c:	00813483          	ld	s1,8(sp)
    80003880:	00013903          	ld	s2,0(sp)
    80003884:	02010113          	addi	sp,sp,32
    80003888:	00008067          	ret

000000008000388c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00113c23          	sd	ra,24(sp)
    80003894:	00813823          	sd	s0,16(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	01213023          	sd	s2,0(sp)
    800038a0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800038a4:	00000493          	li	s1,0
    800038a8:	0400006f          	j	800038e8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800038ac:	00005517          	auipc	a0,0x5
    800038b0:	9c450513          	addi	a0,a0,-1596 # 80008270 <_ZZ13_printIntegermE6digits+0x130>
    800038b4:	00001097          	auipc	ra,0x1
    800038b8:	c80080e7          	jalr	-896(ra) # 80004534 <_Z11printStringPKc>
    800038bc:	00000613          	li	a2,0
    800038c0:	00a00593          	li	a1,10
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00001097          	auipc	ra,0x1
    800038cc:	e1c080e7          	jalr	-484(ra) # 800046e4 <_Z8printIntiii>
    800038d0:	00005517          	auipc	a0,0x5
    800038d4:	bc050513          	addi	a0,a0,-1088 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    800038d8:	00001097          	auipc	ra,0x1
    800038dc:	c5c080e7          	jalr	-932(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800038e0:	0014849b          	addiw	s1,s1,1
    800038e4:	0ff4f493          	andi	s1,s1,255
    800038e8:	00200793          	li	a5,2
    800038ec:	fc97f0e3          	bgeu	a5,s1,800038ac <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800038f0:	00005517          	auipc	a0,0x5
    800038f4:	98850513          	addi	a0,a0,-1656 # 80008278 <_ZZ13_printIntegermE6digits+0x138>
    800038f8:	00001097          	auipc	ra,0x1
    800038fc:	c3c080e7          	jalr	-964(ra) # 80004534 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003900:	00700313          	li	t1,7
    thread_dispatch();
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	9a4080e7          	jalr	-1628(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000390c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003910:	00005517          	auipc	a0,0x5
    80003914:	97850513          	addi	a0,a0,-1672 # 80008288 <_ZZ13_printIntegermE6digits+0x148>
    80003918:	00001097          	auipc	ra,0x1
    8000391c:	c1c080e7          	jalr	-996(ra) # 80004534 <_Z11printStringPKc>
    80003920:	00000613          	li	a2,0
    80003924:	00a00593          	li	a1,10
    80003928:	0009051b          	sext.w	a0,s2
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	db8080e7          	jalr	-584(ra) # 800046e4 <_Z8printIntiii>
    80003934:	00005517          	auipc	a0,0x5
    80003938:	b5c50513          	addi	a0,a0,-1188 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    8000393c:	00001097          	auipc	ra,0x1
    80003940:	bf8080e7          	jalr	-1032(ra) # 80004534 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003944:	00c00513          	li	a0,12
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	d88080e7          	jalr	-632(ra) # 800036d0 <_ZL9fibonaccim>
    80003950:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003954:	00005517          	auipc	a0,0x5
    80003958:	93c50513          	addi	a0,a0,-1732 # 80008290 <_ZZ13_printIntegermE6digits+0x150>
    8000395c:	00001097          	auipc	ra,0x1
    80003960:	bd8080e7          	jalr	-1064(ra) # 80004534 <_Z11printStringPKc>
    80003964:	00000613          	li	a2,0
    80003968:	00a00593          	li	a1,10
    8000396c:	0009051b          	sext.w	a0,s2
    80003970:	00001097          	auipc	ra,0x1
    80003974:	d74080e7          	jalr	-652(ra) # 800046e4 <_Z8printIntiii>
    80003978:	00005517          	auipc	a0,0x5
    8000397c:	b1850513          	addi	a0,a0,-1256 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80003980:	00001097          	auipc	ra,0x1
    80003984:	bb4080e7          	jalr	-1100(ra) # 80004534 <_Z11printStringPKc>
    80003988:	0400006f          	j	800039c8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000398c:	00005517          	auipc	a0,0x5
    80003990:	8e450513          	addi	a0,a0,-1820 # 80008270 <_ZZ13_printIntegermE6digits+0x130>
    80003994:	00001097          	auipc	ra,0x1
    80003998:	ba0080e7          	jalr	-1120(ra) # 80004534 <_Z11printStringPKc>
    8000399c:	00000613          	li	a2,0
    800039a0:	00a00593          	li	a1,10
    800039a4:	00048513          	mv	a0,s1
    800039a8:	00001097          	auipc	ra,0x1
    800039ac:	d3c080e7          	jalr	-708(ra) # 800046e4 <_Z8printIntiii>
    800039b0:	00005517          	auipc	a0,0x5
    800039b4:	ae050513          	addi	a0,a0,-1312 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    800039b8:	00001097          	auipc	ra,0x1
    800039bc:	b7c080e7          	jalr	-1156(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800039c0:	0014849b          	addiw	s1,s1,1
    800039c4:	0ff4f493          	andi	s1,s1,255
    800039c8:	00500793          	li	a5,5
    800039cc:	fc97f0e3          	bgeu	a5,s1,8000398c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800039d0:	00005517          	auipc	a0,0x5
    800039d4:	87850513          	addi	a0,a0,-1928 # 80008248 <_ZZ13_printIntegermE6digits+0x108>
    800039d8:	00001097          	auipc	ra,0x1
    800039dc:	b5c080e7          	jalr	-1188(ra) # 80004534 <_Z11printStringPKc>
    finishedC = true;
    800039e0:	00100793          	li	a5,1
    800039e4:	00007717          	auipc	a4,0x7
    800039e8:	9af70ea3          	sb	a5,-1603(a4) # 8000a3a1 <_ZL9finishedC>
    thread_dispatch();
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	8bc080e7          	jalr	-1860(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800039f4:	01813083          	ld	ra,24(sp)
    800039f8:	01013403          	ld	s0,16(sp)
    800039fc:	00813483          	ld	s1,8(sp)
    80003a00:	00013903          	ld	s2,0(sp)
    80003a04:	02010113          	addi	sp,sp,32
    80003a08:	00008067          	ret

0000000080003a0c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	01213023          	sd	s2,0(sp)
    80003a20:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003a24:	00000913          	li	s2,0
    80003a28:	0380006f          	j	80003a60 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	87c080e7          	jalr	-1924(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a34:	00148493          	addi	s1,s1,1
    80003a38:	000027b7          	lui	a5,0x2
    80003a3c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a40:	0097ee63          	bltu	a5,s1,80003a5c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a44:	00000713          	li	a4,0
    80003a48:	000077b7          	lui	a5,0x7
    80003a4c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a50:	fce7eee3          	bltu	a5,a4,80003a2c <_ZL11workerBodyBPv+0x20>
    80003a54:	00170713          	addi	a4,a4,1
    80003a58:	ff1ff06f          	j	80003a48 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003a5c:	00190913          	addi	s2,s2,1
    80003a60:	00f00793          	li	a5,15
    80003a64:	0527e063          	bltu	a5,s2,80003aa4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003a68:	00004517          	auipc	a0,0x4
    80003a6c:	7f050513          	addi	a0,a0,2032 # 80008258 <_ZZ13_printIntegermE6digits+0x118>
    80003a70:	00001097          	auipc	ra,0x1
    80003a74:	ac4080e7          	jalr	-1340(ra) # 80004534 <_Z11printStringPKc>
    80003a78:	00000613          	li	a2,0
    80003a7c:	00a00593          	li	a1,10
    80003a80:	0009051b          	sext.w	a0,s2
    80003a84:	00001097          	auipc	ra,0x1
    80003a88:	c60080e7          	jalr	-928(ra) # 800046e4 <_Z8printIntiii>
    80003a8c:	00005517          	auipc	a0,0x5
    80003a90:	a0450513          	addi	a0,a0,-1532 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80003a94:	00001097          	auipc	ra,0x1
    80003a98:	aa0080e7          	jalr	-1376(ra) # 80004534 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a9c:	00000493          	li	s1,0
    80003aa0:	f99ff06f          	j	80003a38 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003aa4:	00004517          	auipc	a0,0x4
    80003aa8:	7bc50513          	addi	a0,a0,1980 # 80008260 <_ZZ13_printIntegermE6digits+0x120>
    80003aac:	00001097          	auipc	ra,0x1
    80003ab0:	a88080e7          	jalr	-1400(ra) # 80004534 <_Z11printStringPKc>
    finishedB = true;
    80003ab4:	00100793          	li	a5,1
    80003ab8:	00007717          	auipc	a4,0x7
    80003abc:	8ef70523          	sb	a5,-1814(a4) # 8000a3a2 <_ZL9finishedB>
    thread_dispatch();
    80003ac0:	ffffd097          	auipc	ra,0xffffd
    80003ac4:	7e8080e7          	jalr	2024(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80003ac8:	01813083          	ld	ra,24(sp)
    80003acc:	01013403          	ld	s0,16(sp)
    80003ad0:	00813483          	ld	s1,8(sp)
    80003ad4:	00013903          	ld	s2,0(sp)
    80003ad8:	02010113          	addi	sp,sp,32
    80003adc:	00008067          	ret

0000000080003ae0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003ae0:	fe010113          	addi	sp,sp,-32
    80003ae4:	00113c23          	sd	ra,24(sp)
    80003ae8:	00813823          	sd	s0,16(sp)
    80003aec:	00913423          	sd	s1,8(sp)
    80003af0:	01213023          	sd	s2,0(sp)
    80003af4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003af8:	00000913          	li	s2,0
    80003afc:	0380006f          	j	80003b34 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003b00:	ffffd097          	auipc	ra,0xffffd
    80003b04:	7a8080e7          	jalr	1960(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b08:	00148493          	addi	s1,s1,1
    80003b0c:	000027b7          	lui	a5,0x2
    80003b10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b14:	0097ee63          	bltu	a5,s1,80003b30 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b18:	00000713          	li	a4,0
    80003b1c:	000077b7          	lui	a5,0x7
    80003b20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b24:	fce7eee3          	bltu	a5,a4,80003b00 <_ZL11workerBodyAPv+0x20>
    80003b28:	00170713          	addi	a4,a4,1
    80003b2c:	ff1ff06f          	j	80003b1c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b30:	00190913          	addi	s2,s2,1
    80003b34:	00900793          	li	a5,9
    80003b38:	0527e063          	bltu	a5,s2,80003b78 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003b3c:	00004517          	auipc	a0,0x4
    80003b40:	70450513          	addi	a0,a0,1796 # 80008240 <_ZZ13_printIntegermE6digits+0x100>
    80003b44:	00001097          	auipc	ra,0x1
    80003b48:	9f0080e7          	jalr	-1552(ra) # 80004534 <_Z11printStringPKc>
    80003b4c:	00000613          	li	a2,0
    80003b50:	00a00593          	li	a1,10
    80003b54:	0009051b          	sext.w	a0,s2
    80003b58:	00001097          	auipc	ra,0x1
    80003b5c:	b8c080e7          	jalr	-1140(ra) # 800046e4 <_Z8printIntiii>
    80003b60:	00005517          	auipc	a0,0x5
    80003b64:	93050513          	addi	a0,a0,-1744 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	9cc080e7          	jalr	-1588(ra) # 80004534 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b70:	00000493          	li	s1,0
    80003b74:	f99ff06f          	j	80003b0c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003b78:	00004517          	auipc	a0,0x4
    80003b7c:	6d050513          	addi	a0,a0,1744 # 80008248 <_ZZ13_printIntegermE6digits+0x108>
    80003b80:	00001097          	auipc	ra,0x1
    80003b84:	9b4080e7          	jalr	-1612(ra) # 80004534 <_Z11printStringPKc>
    finishedA = true;
    80003b88:	00100793          	li	a5,1
    80003b8c:	00007717          	auipc	a4,0x7
    80003b90:	80f70ba3          	sb	a5,-2025(a4) # 8000a3a3 <_ZL9finishedA>
}
    80003b94:	01813083          	ld	ra,24(sp)
    80003b98:	01013403          	ld	s0,16(sp)
    80003b9c:	00813483          	ld	s1,8(sp)
    80003ba0:	00013903          	ld	s2,0(sp)
    80003ba4:	02010113          	addi	sp,sp,32
    80003ba8:	00008067          	ret

0000000080003bac <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003bac:	fd010113          	addi	sp,sp,-48
    80003bb0:	02113423          	sd	ra,40(sp)
    80003bb4:	02813023          	sd	s0,32(sp)
    80003bb8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003bbc:	00000613          	li	a2,0
    80003bc0:	00000597          	auipc	a1,0x0
    80003bc4:	f2058593          	addi	a1,a1,-224 # 80003ae0 <_ZL11workerBodyAPv>
    80003bc8:	fd040513          	addi	a0,s0,-48
    80003bcc:	ffffd097          	auipc	ra,0xffffd
    80003bd0:	630080e7          	jalr	1584(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003bd4:	00004517          	auipc	a0,0x4
    80003bd8:	70450513          	addi	a0,a0,1796 # 800082d8 <_ZZ13_printIntegermE6digits+0x198>
    80003bdc:	00001097          	auipc	ra,0x1
    80003be0:	958080e7          	jalr	-1704(ra) # 80004534 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003be4:	00000613          	li	a2,0
    80003be8:	00000597          	auipc	a1,0x0
    80003bec:	e2458593          	addi	a1,a1,-476 # 80003a0c <_ZL11workerBodyBPv>
    80003bf0:	fd840513          	addi	a0,s0,-40
    80003bf4:	ffffd097          	auipc	ra,0xffffd
    80003bf8:	608080e7          	jalr	1544(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003bfc:	00004517          	auipc	a0,0x4
    80003c00:	6f450513          	addi	a0,a0,1780 # 800082f0 <_ZZ13_printIntegermE6digits+0x1b0>
    80003c04:	00001097          	auipc	ra,0x1
    80003c08:	930080e7          	jalr	-1744(ra) # 80004534 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003c0c:	00000613          	li	a2,0
    80003c10:	00000597          	auipc	a1,0x0
    80003c14:	c7c58593          	addi	a1,a1,-900 # 8000388c <_ZL11workerBodyCPv>
    80003c18:	fe040513          	addi	a0,s0,-32
    80003c1c:	ffffd097          	auipc	ra,0xffffd
    80003c20:	5e0080e7          	jalr	1504(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003c24:	00004517          	auipc	a0,0x4
    80003c28:	6e450513          	addi	a0,a0,1764 # 80008308 <_ZZ13_printIntegermE6digits+0x1c8>
    80003c2c:	00001097          	auipc	ra,0x1
    80003c30:	908080e7          	jalr	-1784(ra) # 80004534 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003c34:	00000613          	li	a2,0
    80003c38:	00000597          	auipc	a1,0x0
    80003c3c:	b0c58593          	addi	a1,a1,-1268 # 80003744 <_ZL11workerBodyDPv>
    80003c40:	fe840513          	addi	a0,s0,-24
    80003c44:	ffffd097          	auipc	ra,0xffffd
    80003c48:	5b8080e7          	jalr	1464(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003c4c:	00004517          	auipc	a0,0x4
    80003c50:	6d450513          	addi	a0,a0,1748 # 80008320 <_ZZ13_printIntegermE6digits+0x1e0>
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	8e0080e7          	jalr	-1824(ra) # 80004534 <_Z11printStringPKc>
    80003c5c:	00c0006f          	j	80003c68 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003c60:	ffffd097          	auipc	ra,0xffffd
    80003c64:	648080e7          	jalr	1608(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003c68:	00006797          	auipc	a5,0x6
    80003c6c:	73b7c783          	lbu	a5,1851(a5) # 8000a3a3 <_ZL9finishedA>
    80003c70:	fe0788e3          	beqz	a5,80003c60 <_Z18Threads_C_API_testv+0xb4>
    80003c74:	00006797          	auipc	a5,0x6
    80003c78:	72e7c783          	lbu	a5,1838(a5) # 8000a3a2 <_ZL9finishedB>
    80003c7c:	fe0782e3          	beqz	a5,80003c60 <_Z18Threads_C_API_testv+0xb4>
    80003c80:	00006797          	auipc	a5,0x6
    80003c84:	7217c783          	lbu	a5,1825(a5) # 8000a3a1 <_ZL9finishedC>
    80003c88:	fc078ce3          	beqz	a5,80003c60 <_Z18Threads_C_API_testv+0xb4>
    80003c8c:	00006797          	auipc	a5,0x6
    80003c90:	7147c783          	lbu	a5,1812(a5) # 8000a3a0 <_ZL9finishedD>
    80003c94:	fc0786e3          	beqz	a5,80003c60 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003c98:	02813083          	ld	ra,40(sp)
    80003c9c:	02013403          	ld	s0,32(sp)
    80003ca0:	03010113          	addi	sp,sp,48
    80003ca4:	00008067          	ret

0000000080003ca8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003ca8:	fd010113          	addi	sp,sp,-48
    80003cac:	02113423          	sd	ra,40(sp)
    80003cb0:	02813023          	sd	s0,32(sp)
    80003cb4:	00913c23          	sd	s1,24(sp)
    80003cb8:	01213823          	sd	s2,16(sp)
    80003cbc:	01313423          	sd	s3,8(sp)
    80003cc0:	03010413          	addi	s0,sp,48
    80003cc4:	00050993          	mv	s3,a0
    80003cc8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003ccc:	00000913          	li	s2,0
    80003cd0:	00c0006f          	j	80003cdc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	d34080e7          	jalr	-716(ra) # 80001a08 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80003cdc:	ffffd097          	auipc	ra,0xffffd
    80003ce0:	48c080e7          	jalr	1164(ra) # 80001168 <_Z4getcv>
    80003ce4:	0005059b          	sext.w	a1,a0
    80003ce8:	01b00793          	li	a5,27
    80003cec:	02f58a63          	beq	a1,a5,80003d20 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003cf0:	0084b503          	ld	a0,8(s1)
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	c64080e7          	jalr	-924(ra) # 80004958 <_ZN9BufferCPP3putEi>
        i++;
    80003cfc:	0019071b          	addiw	a4,s2,1
    80003d00:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003d04:	0004a683          	lw	a3,0(s1)
    80003d08:	0026979b          	slliw	a5,a3,0x2
    80003d0c:	00d787bb          	addw	a5,a5,a3
    80003d10:	0017979b          	slliw	a5,a5,0x1
    80003d14:	02f767bb          	remw	a5,a4,a5
    80003d18:	fc0792e3          	bnez	a5,80003cdc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003d1c:	fb9ff06f          	j	80003cd4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80003d20:	00100793          	li	a5,1
    80003d24:	00006717          	auipc	a4,0x6
    80003d28:	68f72223          	sw	a5,1668(a4) # 8000a3a8 <_ZL9threadEnd>
    td->buffer->put('!');
    80003d2c:	0209b783          	ld	a5,32(s3)
    80003d30:	02100593          	li	a1,33
    80003d34:	0087b503          	ld	a0,8(a5)
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	c20080e7          	jalr	-992(ra) # 80004958 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003d40:	0104b503          	ld	a0,16(s1)
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	db0080e7          	jalr	-592(ra) # 80001af4 <_ZN9Semaphore6signalEv>
}
    80003d4c:	02813083          	ld	ra,40(sp)
    80003d50:	02013403          	ld	s0,32(sp)
    80003d54:	01813483          	ld	s1,24(sp)
    80003d58:	01013903          	ld	s2,16(sp)
    80003d5c:	00813983          	ld	s3,8(sp)
    80003d60:	03010113          	addi	sp,sp,48
    80003d64:	00008067          	ret

0000000080003d68 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80003d68:	fe010113          	addi	sp,sp,-32
    80003d6c:	00113c23          	sd	ra,24(sp)
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00913423          	sd	s1,8(sp)
    80003d78:	01213023          	sd	s2,0(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    80003d80:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003d84:	00000913          	li	s2,0
    80003d88:	00c0006f          	j	80003d94 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	c7c080e7          	jalr	-900(ra) # 80001a08 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80003d94:	00006797          	auipc	a5,0x6
    80003d98:	6147a783          	lw	a5,1556(a5) # 8000a3a8 <_ZL9threadEnd>
    80003d9c:	02079e63          	bnez	a5,80003dd8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80003da0:	0004a583          	lw	a1,0(s1)
    80003da4:	0305859b          	addiw	a1,a1,48
    80003da8:	0084b503          	ld	a0,8(s1)
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	bac080e7          	jalr	-1108(ra) # 80004958 <_ZN9BufferCPP3putEi>
        i++;
    80003db4:	0019071b          	addiw	a4,s2,1
    80003db8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003dbc:	0004a683          	lw	a3,0(s1)
    80003dc0:	0026979b          	slliw	a5,a3,0x2
    80003dc4:	00d787bb          	addw	a5,a5,a3
    80003dc8:	0017979b          	slliw	a5,a5,0x1
    80003dcc:	02f767bb          	remw	a5,a4,a5
    80003dd0:	fc0792e3          	bnez	a5,80003d94 <_ZN12ProducerSync8producerEPv+0x2c>
    80003dd4:	fb9ff06f          	j	80003d8c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80003dd8:	0104b503          	ld	a0,16(s1)
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	d18080e7          	jalr	-744(ra) # 80001af4 <_ZN9Semaphore6signalEv>
}
    80003de4:	01813083          	ld	ra,24(sp)
    80003de8:	01013403          	ld	s0,16(sp)
    80003dec:	00813483          	ld	s1,8(sp)
    80003df0:	00013903          	ld	s2,0(sp)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	00008067          	ret

0000000080003dfc <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80003dfc:	fd010113          	addi	sp,sp,-48
    80003e00:	02113423          	sd	ra,40(sp)
    80003e04:	02813023          	sd	s0,32(sp)
    80003e08:	00913c23          	sd	s1,24(sp)
    80003e0c:	01213823          	sd	s2,16(sp)
    80003e10:	01313423          	sd	s3,8(sp)
    80003e14:	01413023          	sd	s4,0(sp)
    80003e18:	03010413          	addi	s0,sp,48
    80003e1c:	00050993          	mv	s3,a0
    80003e20:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003e24:	00000a13          	li	s4,0
    80003e28:	01c0006f          	j	80003e44 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	bdc080e7          	jalr	-1060(ra) # 80001a08 <_ZN6Thread8dispatchEv>
    80003e34:	0500006f          	j	80003e84 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003e38:	00a00513          	li	a0,10
    80003e3c:	ffffd097          	auipc	ra,0xffffd
    80003e40:	308080e7          	jalr	776(ra) # 80001144 <_Z4putcc>
    while (!threadEnd) {
    80003e44:	00006797          	auipc	a5,0x6
    80003e48:	5647a783          	lw	a5,1380(a5) # 8000a3a8 <_ZL9threadEnd>
    80003e4c:	06079263          	bnez	a5,80003eb0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80003e50:	00893503          	ld	a0,8(s2)
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	b94080e7          	jalr	-1132(ra) # 800049e8 <_ZN9BufferCPP3getEv>
        i++;
    80003e5c:	001a049b          	addiw	s1,s4,1
    80003e60:	00048a1b          	sext.w	s4,s1
        putc(key);
    80003e64:	0ff57513          	andi	a0,a0,255
    80003e68:	ffffd097          	auipc	ra,0xffffd
    80003e6c:	2dc080e7          	jalr	732(ra) # 80001144 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003e70:	00092703          	lw	a4,0(s2)
    80003e74:	0027179b          	slliw	a5,a4,0x2
    80003e78:	00e787bb          	addw	a5,a5,a4
    80003e7c:	02f4e7bb          	remw	a5,s1,a5
    80003e80:	fa0786e3          	beqz	a5,80003e2c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80003e84:	05000793          	li	a5,80
    80003e88:	02f4e4bb          	remw	s1,s1,a5
    80003e8c:	fa049ce3          	bnez	s1,80003e44 <_ZN12ConsumerSync8consumerEPv+0x48>
    80003e90:	fa9ff06f          	j	80003e38 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003e94:	0209b783          	ld	a5,32(s3)
    80003e98:	0087b503          	ld	a0,8(a5)
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	b4c080e7          	jalr	-1204(ra) # 800049e8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003ea4:	0ff57513          	andi	a0,a0,255
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	ccc080e7          	jalr	-820(ra) # 80001b74 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80003eb0:	0209b783          	ld	a5,32(s3)
    80003eb4:	0087b503          	ld	a0,8(a5)
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	bbc080e7          	jalr	-1092(ra) # 80004a74 <_ZN9BufferCPP6getCntEv>
    80003ec0:	fca04ae3          	bgtz	a0,80003e94 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80003ec4:	01093503          	ld	a0,16(s2)
    80003ec8:	ffffe097          	auipc	ra,0xffffe
    80003ecc:	c2c080e7          	jalr	-980(ra) # 80001af4 <_ZN9Semaphore6signalEv>
}
    80003ed0:	02813083          	ld	ra,40(sp)
    80003ed4:	02013403          	ld	s0,32(sp)
    80003ed8:	01813483          	ld	s1,24(sp)
    80003edc:	01013903          	ld	s2,16(sp)
    80003ee0:	00813983          	ld	s3,8(sp)
    80003ee4:	00013a03          	ld	s4,0(sp)
    80003ee8:	03010113          	addi	sp,sp,48
    80003eec:	00008067          	ret

0000000080003ef0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003ef0:	f8010113          	addi	sp,sp,-128
    80003ef4:	06113c23          	sd	ra,120(sp)
    80003ef8:	06813823          	sd	s0,112(sp)
    80003efc:	06913423          	sd	s1,104(sp)
    80003f00:	07213023          	sd	s2,96(sp)
    80003f04:	05313c23          	sd	s3,88(sp)
    80003f08:	05413823          	sd	s4,80(sp)
    80003f0c:	05513423          	sd	s5,72(sp)
    80003f10:	05613023          	sd	s6,64(sp)
    80003f14:	03713c23          	sd	s7,56(sp)
    80003f18:	03813823          	sd	s8,48(sp)
    80003f1c:	03913423          	sd	s9,40(sp)
    80003f20:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003f24:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f28:	00004517          	auipc	a0,0x4
    80003f2c:	23050513          	addi	a0,a0,560 # 80008158 <_ZZ13_printIntegermE6digits+0x18>
    80003f30:	00000097          	auipc	ra,0x0
    80003f34:	604080e7          	jalr	1540(ra) # 80004534 <_Z11printStringPKc>
    getString(input, 30);
    80003f38:	01e00593          	li	a1,30
    80003f3c:	f8040493          	addi	s1,s0,-128
    80003f40:	00048513          	mv	a0,s1
    80003f44:	00000097          	auipc	ra,0x0
    80003f48:	678080e7          	jalr	1656(ra) # 800045bc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	744080e7          	jalr	1860(ra) # 80004694 <_Z11stringToIntPKc>
    80003f58:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003f5c:	00004517          	auipc	a0,0x4
    80003f60:	21c50513          	addi	a0,a0,540 # 80008178 <_ZZ13_printIntegermE6digits+0x38>
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	5d0080e7          	jalr	1488(ra) # 80004534 <_Z11printStringPKc>
    getString(input, 30);
    80003f6c:	01e00593          	li	a1,30
    80003f70:	00048513          	mv	a0,s1
    80003f74:	00000097          	auipc	ra,0x0
    80003f78:	648080e7          	jalr	1608(ra) # 800045bc <_Z9getStringPci>
    n = stringToInt(input);
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	714080e7          	jalr	1812(ra) # 80004694 <_Z11stringToIntPKc>
    80003f88:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003f8c:	00004517          	auipc	a0,0x4
    80003f90:	20c50513          	addi	a0,a0,524 # 80008198 <_ZZ13_printIntegermE6digits+0x58>
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	5a0080e7          	jalr	1440(ra) # 80004534 <_Z11printStringPKc>
    80003f9c:	00000613          	li	a2,0
    80003fa0:	00a00593          	li	a1,10
    80003fa4:	00090513          	mv	a0,s2
    80003fa8:	00000097          	auipc	ra,0x0
    80003fac:	73c080e7          	jalr	1852(ra) # 800046e4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003fb0:	00004517          	auipc	a0,0x4
    80003fb4:	20050513          	addi	a0,a0,512 # 800081b0 <_ZZ13_printIntegermE6digits+0x70>
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	57c080e7          	jalr	1404(ra) # 80004534 <_Z11printStringPKc>
    80003fc0:	00000613          	li	a2,0
    80003fc4:	00a00593          	li	a1,10
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	00000097          	auipc	ra,0x0
    80003fd0:	718080e7          	jalr	1816(ra) # 800046e4 <_Z8printIntiii>
    printString(".\n");
    80003fd4:	00004517          	auipc	a0,0x4
    80003fd8:	1f450513          	addi	a0,a0,500 # 800081c8 <_ZZ13_printIntegermE6digits+0x88>
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	558080e7          	jalr	1368(ra) # 80004534 <_Z11printStringPKc>
    if(threadNum > n) {
    80003fe4:	0324c463          	blt	s1,s2,8000400c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80003fe8:	03205c63          	blez	s2,80004020 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003fec:	03800513          	li	a0,56
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	8b0080e7          	jalr	-1872(ra) # 800018a0 <_Znwm>
    80003ff8:	00050a93          	mv	s5,a0
    80003ffc:	00048593          	mv	a1,s1
    80004000:	00001097          	auipc	ra,0x1
    80004004:	804080e7          	jalr	-2044(ra) # 80004804 <_ZN9BufferCPPC1Ei>
    80004008:	0300006f          	j	80004038 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000400c:	00004517          	auipc	a0,0x4
    80004010:	1c450513          	addi	a0,a0,452 # 800081d0 <_ZZ13_printIntegermE6digits+0x90>
    80004014:	00000097          	auipc	ra,0x0
    80004018:	520080e7          	jalr	1312(ra) # 80004534 <_Z11printStringPKc>
        return;
    8000401c:	0140006f          	j	80004030 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004020:	00004517          	auipc	a0,0x4
    80004024:	1f050513          	addi	a0,a0,496 # 80008210 <_ZZ13_printIntegermE6digits+0xd0>
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	50c080e7          	jalr	1292(ra) # 80004534 <_Z11printStringPKc>
        return;
    80004030:	000b8113          	mv	sp,s7
    80004034:	2380006f          	j	8000426c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004038:	01000513          	li	a0,16
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	864080e7          	jalr	-1948(ra) # 800018a0 <_Znwm>
    80004044:	00050493          	mv	s1,a0
    80004048:	00000593          	li	a1,0
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	a44080e7          	jalr	-1468(ra) # 80001a90 <_ZN9SemaphoreC1Ej>
    80004054:	00006797          	auipc	a5,0x6
    80004058:	3497be23          	sd	s1,860(a5) # 8000a3b0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000405c:	00391793          	slli	a5,s2,0x3
    80004060:	00f78793          	addi	a5,a5,15
    80004064:	ff07f793          	andi	a5,a5,-16
    80004068:	40f10133          	sub	sp,sp,a5
    8000406c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004070:	0019071b          	addiw	a4,s2,1
    80004074:	00171793          	slli	a5,a4,0x1
    80004078:	00e787b3          	add	a5,a5,a4
    8000407c:	00379793          	slli	a5,a5,0x3
    80004080:	00f78793          	addi	a5,a5,15
    80004084:	ff07f793          	andi	a5,a5,-16
    80004088:	40f10133          	sub	sp,sp,a5
    8000408c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004090:	00191c13          	slli	s8,s2,0x1
    80004094:	012c07b3          	add	a5,s8,s2
    80004098:	00379793          	slli	a5,a5,0x3
    8000409c:	00fa07b3          	add	a5,s4,a5
    800040a0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800040a4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800040a8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800040ac:	02800513          	li	a0,40
    800040b0:	ffffd097          	auipc	ra,0xffffd
    800040b4:	7f0080e7          	jalr	2032(ra) # 800018a0 <_Znwm>
    800040b8:	00050b13          	mv	s6,a0
    800040bc:	012c0c33          	add	s8,s8,s2
    800040c0:	003c1c13          	slli	s8,s8,0x3
    800040c4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	968080e7          	jalr	-1688(ra) # 80001a30 <_ZN6ThreadC1Ev>
    800040d0:	00006797          	auipc	a5,0x6
    800040d4:	1f878793          	addi	a5,a5,504 # 8000a2c8 <_ZTV12ConsumerSync+0x10>
    800040d8:	00fb3023          	sd	a5,0(s6)
    800040dc:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800040e0:	000b0513          	mv	a0,s6
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	8f0080e7          	jalr	-1808(ra) # 800019d4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800040ec:	00000493          	li	s1,0
    800040f0:	0380006f          	j	80004128 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800040f4:	00006797          	auipc	a5,0x6
    800040f8:	1ac78793          	addi	a5,a5,428 # 8000a2a0 <_ZTV12ProducerSync+0x10>
    800040fc:	00fcb023          	sd	a5,0(s9)
    80004100:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004104:	00349793          	slli	a5,s1,0x3
    80004108:	00f987b3          	add	a5,s3,a5
    8000410c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004110:	00349793          	slli	a5,s1,0x3
    80004114:	00f987b3          	add	a5,s3,a5
    80004118:	0007b503          	ld	a0,0(a5)
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	8b8080e7          	jalr	-1864(ra) # 800019d4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004124:	0014849b          	addiw	s1,s1,1
    80004128:	0b24d063          	bge	s1,s2,800041c8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000412c:	00149793          	slli	a5,s1,0x1
    80004130:	009787b3          	add	a5,a5,s1
    80004134:	00379793          	slli	a5,a5,0x3
    80004138:	00fa07b3          	add	a5,s4,a5
    8000413c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004140:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004144:	00006717          	auipc	a4,0x6
    80004148:	26c73703          	ld	a4,620(a4) # 8000a3b0 <_ZL10waitForAll>
    8000414c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004150:	02905863          	blez	s1,80004180 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004154:	02800513          	li	a0,40
    80004158:	ffffd097          	auipc	ra,0xffffd
    8000415c:	748080e7          	jalr	1864(ra) # 800018a0 <_Znwm>
    80004160:	00050c93          	mv	s9,a0
    80004164:	00149c13          	slli	s8,s1,0x1
    80004168:	009c0c33          	add	s8,s8,s1
    8000416c:	003c1c13          	slli	s8,s8,0x3
    80004170:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	8bc080e7          	jalr	-1860(ra) # 80001a30 <_ZN6ThreadC1Ev>
    8000417c:	f79ff06f          	j	800040f4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004180:	02800513          	li	a0,40
    80004184:	ffffd097          	auipc	ra,0xffffd
    80004188:	71c080e7          	jalr	1820(ra) # 800018a0 <_Znwm>
    8000418c:	00050c93          	mv	s9,a0
    80004190:	00149c13          	slli	s8,s1,0x1
    80004194:	009c0c33          	add	s8,s8,s1
    80004198:	003c1c13          	slli	s8,s8,0x3
    8000419c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	890080e7          	jalr	-1904(ra) # 80001a30 <_ZN6ThreadC1Ev>
    800041a8:	00006797          	auipc	a5,0x6
    800041ac:	0d078793          	addi	a5,a5,208 # 8000a278 <_ZTV16ProducerKeyboard+0x10>
    800041b0:	00fcb023          	sd	a5,0(s9)
    800041b4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800041b8:	00349793          	slli	a5,s1,0x3
    800041bc:	00f987b3          	add	a5,s3,a5
    800041c0:	0197b023          	sd	s9,0(a5)
    800041c4:	f4dff06f          	j	80004110 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	840080e7          	jalr	-1984(ra) # 80001a08 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800041d0:	00000493          	li	s1,0
    800041d4:	00994e63          	blt	s2,s1,800041f0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800041d8:	00006517          	auipc	a0,0x6
    800041dc:	1d853503          	ld	a0,472(a0) # 8000a3b0 <_ZL10waitForAll>
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	8e8080e7          	jalr	-1816(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041e8:	0014849b          	addiw	s1,s1,1
    800041ec:	fe9ff06f          	j	800041d4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800041f0:	00000493          	li	s1,0
    800041f4:	0080006f          	j	800041fc <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800041f8:	0014849b          	addiw	s1,s1,1
    800041fc:	0324d263          	bge	s1,s2,80004220 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004200:	00349793          	slli	a5,s1,0x3
    80004204:	00f987b3          	add	a5,s3,a5
    80004208:	0007b503          	ld	a0,0(a5)
    8000420c:	fe0506e3          	beqz	a0,800041f8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004210:	00053783          	ld	a5,0(a0)
    80004214:	0087b783          	ld	a5,8(a5)
    80004218:	000780e7          	jalr	a5
    8000421c:	fddff06f          	j	800041f8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004220:	000b0a63          	beqz	s6,80004234 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004224:	000b3783          	ld	a5,0(s6)
    80004228:	0087b783          	ld	a5,8(a5)
    8000422c:	000b0513          	mv	a0,s6
    80004230:	000780e7          	jalr	a5
    delete waitForAll;
    80004234:	00006517          	auipc	a0,0x6
    80004238:	17c53503          	ld	a0,380(a0) # 8000a3b0 <_ZL10waitForAll>
    8000423c:	00050863          	beqz	a0,8000424c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004240:	00053783          	ld	a5,0(a0)
    80004244:	0087b783          	ld	a5,8(a5)
    80004248:	000780e7          	jalr	a5
    delete buffer;
    8000424c:	000a8e63          	beqz	s5,80004268 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004250:	000a8513          	mv	a0,s5
    80004254:	00001097          	auipc	ra,0x1
    80004258:	8a8080e7          	jalr	-1880(ra) # 80004afc <_ZN9BufferCPPD1Ev>
    8000425c:	000a8513          	mv	a0,s5
    80004260:	ffffd097          	auipc	ra,0xffffd
    80004264:	690080e7          	jalr	1680(ra) # 800018f0 <_ZdlPv>
    80004268:	000b8113          	mv	sp,s7

}
    8000426c:	f8040113          	addi	sp,s0,-128
    80004270:	07813083          	ld	ra,120(sp)
    80004274:	07013403          	ld	s0,112(sp)
    80004278:	06813483          	ld	s1,104(sp)
    8000427c:	06013903          	ld	s2,96(sp)
    80004280:	05813983          	ld	s3,88(sp)
    80004284:	05013a03          	ld	s4,80(sp)
    80004288:	04813a83          	ld	s5,72(sp)
    8000428c:	04013b03          	ld	s6,64(sp)
    80004290:	03813b83          	ld	s7,56(sp)
    80004294:	03013c03          	ld	s8,48(sp)
    80004298:	02813c83          	ld	s9,40(sp)
    8000429c:	08010113          	addi	sp,sp,128
    800042a0:	00008067          	ret
    800042a4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800042a8:	000a8513          	mv	a0,s5
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	644080e7          	jalr	1604(ra) # 800018f0 <_ZdlPv>
    800042b4:	00048513          	mv	a0,s1
    800042b8:	00007097          	auipc	ra,0x7
    800042bc:	1e0080e7          	jalr	480(ra) # 8000b498 <_Unwind_Resume>
    800042c0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800042c4:	00048513          	mv	a0,s1
    800042c8:	ffffd097          	auipc	ra,0xffffd
    800042cc:	628080e7          	jalr	1576(ra) # 800018f0 <_ZdlPv>
    800042d0:	00090513          	mv	a0,s2
    800042d4:	00007097          	auipc	ra,0x7
    800042d8:	1c4080e7          	jalr	452(ra) # 8000b498 <_Unwind_Resume>
    800042dc:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800042e0:	000b0513          	mv	a0,s6
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	60c080e7          	jalr	1548(ra) # 800018f0 <_ZdlPv>
    800042ec:	00048513          	mv	a0,s1
    800042f0:	00007097          	auipc	ra,0x7
    800042f4:	1a8080e7          	jalr	424(ra) # 8000b498 <_Unwind_Resume>
    800042f8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800042fc:	000c8513          	mv	a0,s9
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	5f0080e7          	jalr	1520(ra) # 800018f0 <_ZdlPv>
    80004308:	00048513          	mv	a0,s1
    8000430c:	00007097          	auipc	ra,0x7
    80004310:	18c080e7          	jalr	396(ra) # 8000b498 <_Unwind_Resume>
    80004314:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004318:	000c8513          	mv	a0,s9
    8000431c:	ffffd097          	auipc	ra,0xffffd
    80004320:	5d4080e7          	jalr	1492(ra) # 800018f0 <_ZdlPv>
    80004324:	00048513          	mv	a0,s1
    80004328:	00007097          	auipc	ra,0x7
    8000432c:	170080e7          	jalr	368(ra) # 8000b498 <_Unwind_Resume>

0000000080004330 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004330:	ff010113          	addi	sp,sp,-16
    80004334:	00113423          	sd	ra,8(sp)
    80004338:	00813023          	sd	s0,0(sp)
    8000433c:	01010413          	addi	s0,sp,16
    80004340:	00006797          	auipc	a5,0x6
    80004344:	f8878793          	addi	a5,a5,-120 # 8000a2c8 <_ZTV12ConsumerSync+0x10>
    80004348:	00f53023          	sd	a5,0(a0)
    8000434c:	ffffd097          	auipc	ra,0xffffd
    80004350:	504080e7          	jalr	1284(ra) # 80001850 <_ZN6ThreadD1Ev>
    80004354:	00813083          	ld	ra,8(sp)
    80004358:	00013403          	ld	s0,0(sp)
    8000435c:	01010113          	addi	sp,sp,16
    80004360:	00008067          	ret

0000000080004364 <_ZN12ConsumerSyncD0Ev>:
    80004364:	fe010113          	addi	sp,sp,-32
    80004368:	00113c23          	sd	ra,24(sp)
    8000436c:	00813823          	sd	s0,16(sp)
    80004370:	00913423          	sd	s1,8(sp)
    80004374:	02010413          	addi	s0,sp,32
    80004378:	00050493          	mv	s1,a0
    8000437c:	00006797          	auipc	a5,0x6
    80004380:	f4c78793          	addi	a5,a5,-180 # 8000a2c8 <_ZTV12ConsumerSync+0x10>
    80004384:	00f53023          	sd	a5,0(a0)
    80004388:	ffffd097          	auipc	ra,0xffffd
    8000438c:	4c8080e7          	jalr	1224(ra) # 80001850 <_ZN6ThreadD1Ev>
    80004390:	00048513          	mv	a0,s1
    80004394:	ffffd097          	auipc	ra,0xffffd
    80004398:	55c080e7          	jalr	1372(ra) # 800018f0 <_ZdlPv>
    8000439c:	01813083          	ld	ra,24(sp)
    800043a0:	01013403          	ld	s0,16(sp)
    800043a4:	00813483          	ld	s1,8(sp)
    800043a8:	02010113          	addi	sp,sp,32
    800043ac:	00008067          	ret

00000000800043b0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800043b0:	ff010113          	addi	sp,sp,-16
    800043b4:	00113423          	sd	ra,8(sp)
    800043b8:	00813023          	sd	s0,0(sp)
    800043bc:	01010413          	addi	s0,sp,16
    800043c0:	00006797          	auipc	a5,0x6
    800043c4:	ee078793          	addi	a5,a5,-288 # 8000a2a0 <_ZTV12ProducerSync+0x10>
    800043c8:	00f53023          	sd	a5,0(a0)
    800043cc:	ffffd097          	auipc	ra,0xffffd
    800043d0:	484080e7          	jalr	1156(ra) # 80001850 <_ZN6ThreadD1Ev>
    800043d4:	00813083          	ld	ra,8(sp)
    800043d8:	00013403          	ld	s0,0(sp)
    800043dc:	01010113          	addi	sp,sp,16
    800043e0:	00008067          	ret

00000000800043e4 <_ZN12ProducerSyncD0Ev>:
    800043e4:	fe010113          	addi	sp,sp,-32
    800043e8:	00113c23          	sd	ra,24(sp)
    800043ec:	00813823          	sd	s0,16(sp)
    800043f0:	00913423          	sd	s1,8(sp)
    800043f4:	02010413          	addi	s0,sp,32
    800043f8:	00050493          	mv	s1,a0
    800043fc:	00006797          	auipc	a5,0x6
    80004400:	ea478793          	addi	a5,a5,-348 # 8000a2a0 <_ZTV12ProducerSync+0x10>
    80004404:	00f53023          	sd	a5,0(a0)
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	448080e7          	jalr	1096(ra) # 80001850 <_ZN6ThreadD1Ev>
    80004410:	00048513          	mv	a0,s1
    80004414:	ffffd097          	auipc	ra,0xffffd
    80004418:	4dc080e7          	jalr	1244(ra) # 800018f0 <_ZdlPv>
    8000441c:	01813083          	ld	ra,24(sp)
    80004420:	01013403          	ld	s0,16(sp)
    80004424:	00813483          	ld	s1,8(sp)
    80004428:	02010113          	addi	sp,sp,32
    8000442c:	00008067          	ret

0000000080004430 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004430:	ff010113          	addi	sp,sp,-16
    80004434:	00113423          	sd	ra,8(sp)
    80004438:	00813023          	sd	s0,0(sp)
    8000443c:	01010413          	addi	s0,sp,16
    80004440:	00006797          	auipc	a5,0x6
    80004444:	e3878793          	addi	a5,a5,-456 # 8000a278 <_ZTV16ProducerKeyboard+0x10>
    80004448:	00f53023          	sd	a5,0(a0)
    8000444c:	ffffd097          	auipc	ra,0xffffd
    80004450:	404080e7          	jalr	1028(ra) # 80001850 <_ZN6ThreadD1Ev>
    80004454:	00813083          	ld	ra,8(sp)
    80004458:	00013403          	ld	s0,0(sp)
    8000445c:	01010113          	addi	sp,sp,16
    80004460:	00008067          	ret

0000000080004464 <_ZN16ProducerKeyboardD0Ev>:
    80004464:	fe010113          	addi	sp,sp,-32
    80004468:	00113c23          	sd	ra,24(sp)
    8000446c:	00813823          	sd	s0,16(sp)
    80004470:	00913423          	sd	s1,8(sp)
    80004474:	02010413          	addi	s0,sp,32
    80004478:	00050493          	mv	s1,a0
    8000447c:	00006797          	auipc	a5,0x6
    80004480:	dfc78793          	addi	a5,a5,-516 # 8000a278 <_ZTV16ProducerKeyboard+0x10>
    80004484:	00f53023          	sd	a5,0(a0)
    80004488:	ffffd097          	auipc	ra,0xffffd
    8000448c:	3c8080e7          	jalr	968(ra) # 80001850 <_ZN6ThreadD1Ev>
    80004490:	00048513          	mv	a0,s1
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	45c080e7          	jalr	1116(ra) # 800018f0 <_ZdlPv>
    8000449c:	01813083          	ld	ra,24(sp)
    800044a0:	01013403          	ld	s0,16(sp)
    800044a4:	00813483          	ld	s1,8(sp)
    800044a8:	02010113          	addi	sp,sp,32
    800044ac:	00008067          	ret

00000000800044b0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800044b0:	ff010113          	addi	sp,sp,-16
    800044b4:	00113423          	sd	ra,8(sp)
    800044b8:	00813023          	sd	s0,0(sp)
    800044bc:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800044c0:	02053583          	ld	a1,32(a0)
    800044c4:	fffff097          	auipc	ra,0xfffff
    800044c8:	7e4080e7          	jalr	2020(ra) # 80003ca8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800044cc:	00813083          	ld	ra,8(sp)
    800044d0:	00013403          	ld	s0,0(sp)
    800044d4:	01010113          	addi	sp,sp,16
    800044d8:	00008067          	ret

00000000800044dc <_ZN12ProducerSync3runEv>:
    void run() override {
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00113423          	sd	ra,8(sp)
    800044e4:	00813023          	sd	s0,0(sp)
    800044e8:	01010413          	addi	s0,sp,16
        producer(td);
    800044ec:	02053583          	ld	a1,32(a0)
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	878080e7          	jalr	-1928(ra) # 80003d68 <_ZN12ProducerSync8producerEPv>
    }
    800044f8:	00813083          	ld	ra,8(sp)
    800044fc:	00013403          	ld	s0,0(sp)
    80004500:	01010113          	addi	sp,sp,16
    80004504:	00008067          	ret

0000000080004508 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004508:	ff010113          	addi	sp,sp,-16
    8000450c:	00113423          	sd	ra,8(sp)
    80004510:	00813023          	sd	s0,0(sp)
    80004514:	01010413          	addi	s0,sp,16
        consumer(td);
    80004518:	02053583          	ld	a1,32(a0)
    8000451c:	00000097          	auipc	ra,0x0
    80004520:	8e0080e7          	jalr	-1824(ra) # 80003dfc <_ZN12ConsumerSync8consumerEPv>
    }
    80004524:	00813083          	ld	ra,8(sp)
    80004528:	00013403          	ld	s0,0(sp)
    8000452c:	01010113          	addi	sp,sp,16
    80004530:	00008067          	ret

0000000080004534 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004534:	fe010113          	addi	sp,sp,-32
    80004538:	00113c23          	sd	ra,24(sp)
    8000453c:	00813823          	sd	s0,16(sp)
    80004540:	00913423          	sd	s1,8(sp)
    80004544:	02010413          	addi	s0,sp,32
    80004548:	00050493          	mv	s1,a0
    LOCK();
    8000454c:	00100613          	li	a2,1
    80004550:	00000593          	li	a1,0
    80004554:	00006517          	auipc	a0,0x6
    80004558:	e6450513          	addi	a0,a0,-412 # 8000a3b8 <lockPrint>
    8000455c:	ffffd097          	auipc	ra,0xffffd
    80004560:	bc8080e7          	jalr	-1080(ra) # 80001124 <copy_and_swap>
    80004564:	00050863          	beqz	a0,80004574 <_Z11printStringPKc+0x40>
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	d40080e7          	jalr	-704(ra) # 800012a8 <_Z15thread_dispatchv>
    80004570:	fddff06f          	j	8000454c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004574:	0004c503          	lbu	a0,0(s1)
    80004578:	00050a63          	beqz	a0,8000458c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000457c:	ffffd097          	auipc	ra,0xffffd
    80004580:	bc8080e7          	jalr	-1080(ra) # 80001144 <_Z4putcc>
        string++;
    80004584:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004588:	fedff06f          	j	80004574 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000458c:	00000613          	li	a2,0
    80004590:	00100593          	li	a1,1
    80004594:	00006517          	auipc	a0,0x6
    80004598:	e2450513          	addi	a0,a0,-476 # 8000a3b8 <lockPrint>
    8000459c:	ffffd097          	auipc	ra,0xffffd
    800045a0:	b88080e7          	jalr	-1144(ra) # 80001124 <copy_and_swap>
    800045a4:	fe0514e3          	bnez	a0,8000458c <_Z11printStringPKc+0x58>
}
    800045a8:	01813083          	ld	ra,24(sp)
    800045ac:	01013403          	ld	s0,16(sp)
    800045b0:	00813483          	ld	s1,8(sp)
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00008067          	ret

00000000800045bc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800045bc:	fd010113          	addi	sp,sp,-48
    800045c0:	02113423          	sd	ra,40(sp)
    800045c4:	02813023          	sd	s0,32(sp)
    800045c8:	00913c23          	sd	s1,24(sp)
    800045cc:	01213823          	sd	s2,16(sp)
    800045d0:	01313423          	sd	s3,8(sp)
    800045d4:	01413023          	sd	s4,0(sp)
    800045d8:	03010413          	addi	s0,sp,48
    800045dc:	00050993          	mv	s3,a0
    800045e0:	00058a13          	mv	s4,a1
    LOCK();
    800045e4:	00100613          	li	a2,1
    800045e8:	00000593          	li	a1,0
    800045ec:	00006517          	auipc	a0,0x6
    800045f0:	dcc50513          	addi	a0,a0,-564 # 8000a3b8 <lockPrint>
    800045f4:	ffffd097          	auipc	ra,0xffffd
    800045f8:	b30080e7          	jalr	-1232(ra) # 80001124 <copy_and_swap>
    800045fc:	00050863          	beqz	a0,8000460c <_Z9getStringPci+0x50>
    80004600:	ffffd097          	auipc	ra,0xffffd
    80004604:	ca8080e7          	jalr	-856(ra) # 800012a8 <_Z15thread_dispatchv>
    80004608:	fddff06f          	j	800045e4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000460c:	00000913          	li	s2,0
    80004610:	00090493          	mv	s1,s2
    80004614:	0019091b          	addiw	s2,s2,1
    80004618:	03495a63          	bge	s2,s4,8000464c <_Z9getStringPci+0x90>
        cc = getc();
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	b4c080e7          	jalr	-1204(ra) # 80001168 <_Z4getcv>
        if(cc < 1)
    80004624:	02050463          	beqz	a0,8000464c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004628:	009984b3          	add	s1,s3,s1
    8000462c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004630:	00a00793          	li	a5,10
    80004634:	00f50a63          	beq	a0,a5,80004648 <_Z9getStringPci+0x8c>
    80004638:	00d00793          	li	a5,13
    8000463c:	fcf51ae3          	bne	a0,a5,80004610 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004640:	00090493          	mv	s1,s2
    80004644:	0080006f          	j	8000464c <_Z9getStringPci+0x90>
    80004648:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000464c:	009984b3          	add	s1,s3,s1
    80004650:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004654:	00000613          	li	a2,0
    80004658:	00100593          	li	a1,1
    8000465c:	00006517          	auipc	a0,0x6
    80004660:	d5c50513          	addi	a0,a0,-676 # 8000a3b8 <lockPrint>
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	ac0080e7          	jalr	-1344(ra) # 80001124 <copy_and_swap>
    8000466c:	fe0514e3          	bnez	a0,80004654 <_Z9getStringPci+0x98>
    return buf;
}
    80004670:	00098513          	mv	a0,s3
    80004674:	02813083          	ld	ra,40(sp)
    80004678:	02013403          	ld	s0,32(sp)
    8000467c:	01813483          	ld	s1,24(sp)
    80004680:	01013903          	ld	s2,16(sp)
    80004684:	00813983          	ld	s3,8(sp)
    80004688:	00013a03          	ld	s4,0(sp)
    8000468c:	03010113          	addi	sp,sp,48
    80004690:	00008067          	ret

0000000080004694 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004694:	ff010113          	addi	sp,sp,-16
    80004698:	00813423          	sd	s0,8(sp)
    8000469c:	01010413          	addi	s0,sp,16
    800046a0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800046a4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800046a8:	0006c603          	lbu	a2,0(a3)
    800046ac:	fd06071b          	addiw	a4,a2,-48
    800046b0:	0ff77713          	andi	a4,a4,255
    800046b4:	00900793          	li	a5,9
    800046b8:	02e7e063          	bltu	a5,a4,800046d8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800046bc:	0025179b          	slliw	a5,a0,0x2
    800046c0:	00a787bb          	addw	a5,a5,a0
    800046c4:	0017979b          	slliw	a5,a5,0x1
    800046c8:	00168693          	addi	a3,a3,1
    800046cc:	00c787bb          	addw	a5,a5,a2
    800046d0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800046d4:	fd5ff06f          	j	800046a8 <_Z11stringToIntPKc+0x14>
    return n;
}
    800046d8:	00813403          	ld	s0,8(sp)
    800046dc:	01010113          	addi	sp,sp,16
    800046e0:	00008067          	ret

00000000800046e4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800046e4:	fc010113          	addi	sp,sp,-64
    800046e8:	02113c23          	sd	ra,56(sp)
    800046ec:	02813823          	sd	s0,48(sp)
    800046f0:	02913423          	sd	s1,40(sp)
    800046f4:	03213023          	sd	s2,32(sp)
    800046f8:	01313c23          	sd	s3,24(sp)
    800046fc:	04010413          	addi	s0,sp,64
    80004700:	00050493          	mv	s1,a0
    80004704:	00058913          	mv	s2,a1
    80004708:	00060993          	mv	s3,a2
    LOCK();
    8000470c:	00100613          	li	a2,1
    80004710:	00000593          	li	a1,0
    80004714:	00006517          	auipc	a0,0x6
    80004718:	ca450513          	addi	a0,a0,-860 # 8000a3b8 <lockPrint>
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	a08080e7          	jalr	-1528(ra) # 80001124 <copy_and_swap>
    80004724:	00050863          	beqz	a0,80004734 <_Z8printIntiii+0x50>
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	b80080e7          	jalr	-1152(ra) # 800012a8 <_Z15thread_dispatchv>
    80004730:	fddff06f          	j	8000470c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004734:	00098463          	beqz	s3,8000473c <_Z8printIntiii+0x58>
    80004738:	0804c463          	bltz	s1,800047c0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000473c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004740:	00000593          	li	a1,0
    }

    i = 0;
    80004744:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004748:	0009079b          	sext.w	a5,s2
    8000474c:	0325773b          	remuw	a4,a0,s2
    80004750:	00048613          	mv	a2,s1
    80004754:	0014849b          	addiw	s1,s1,1
    80004758:	02071693          	slli	a3,a4,0x20
    8000475c:	0206d693          	srli	a3,a3,0x20
    80004760:	00006717          	auipc	a4,0x6
    80004764:	b8070713          	addi	a4,a4,-1152 # 8000a2e0 <digits>
    80004768:	00d70733          	add	a4,a4,a3
    8000476c:	00074683          	lbu	a3,0(a4)
    80004770:	fd040713          	addi	a4,s0,-48
    80004774:	00c70733          	add	a4,a4,a2
    80004778:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000477c:	0005071b          	sext.w	a4,a0
    80004780:	0325553b          	divuw	a0,a0,s2
    80004784:	fcf772e3          	bgeu	a4,a5,80004748 <_Z8printIntiii+0x64>
    if(neg)
    80004788:	00058c63          	beqz	a1,800047a0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000478c:	fd040793          	addi	a5,s0,-48
    80004790:	009784b3          	add	s1,a5,s1
    80004794:	02d00793          	li	a5,45
    80004798:	fef48823          	sb	a5,-16(s1)
    8000479c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800047a0:	fff4849b          	addiw	s1,s1,-1
    800047a4:	0204c463          	bltz	s1,800047cc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800047a8:	fd040793          	addi	a5,s0,-48
    800047ac:	009787b3          	add	a5,a5,s1
    800047b0:	ff07c503          	lbu	a0,-16(a5)
    800047b4:	ffffd097          	auipc	ra,0xffffd
    800047b8:	990080e7          	jalr	-1648(ra) # 80001144 <_Z4putcc>
    800047bc:	fe5ff06f          	j	800047a0 <_Z8printIntiii+0xbc>
        x = -xx;
    800047c0:	4090053b          	negw	a0,s1
        neg = 1;
    800047c4:	00100593          	li	a1,1
        x = -xx;
    800047c8:	f7dff06f          	j	80004744 <_Z8printIntiii+0x60>

    UNLOCK();
    800047cc:	00000613          	li	a2,0
    800047d0:	00100593          	li	a1,1
    800047d4:	00006517          	auipc	a0,0x6
    800047d8:	be450513          	addi	a0,a0,-1052 # 8000a3b8 <lockPrint>
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	948080e7          	jalr	-1720(ra) # 80001124 <copy_and_swap>
    800047e4:	fe0514e3          	bnez	a0,800047cc <_Z8printIntiii+0xe8>
    800047e8:	03813083          	ld	ra,56(sp)
    800047ec:	03013403          	ld	s0,48(sp)
    800047f0:	02813483          	ld	s1,40(sp)
    800047f4:	02013903          	ld	s2,32(sp)
    800047f8:	01813983          	ld	s3,24(sp)
    800047fc:	04010113          	addi	sp,sp,64
    80004800:	00008067          	ret

0000000080004804 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004804:	fd010113          	addi	sp,sp,-48
    80004808:	02113423          	sd	ra,40(sp)
    8000480c:	02813023          	sd	s0,32(sp)
    80004810:	00913c23          	sd	s1,24(sp)
    80004814:	01213823          	sd	s2,16(sp)
    80004818:	01313423          	sd	s3,8(sp)
    8000481c:	03010413          	addi	s0,sp,48
    80004820:	00050493          	mv	s1,a0
    80004824:	00058913          	mv	s2,a1
    80004828:	0015879b          	addiw	a5,a1,1
    8000482c:	0007851b          	sext.w	a0,a5
    80004830:	00f4a023          	sw	a5,0(s1)
    80004834:	0004a823          	sw	zero,16(s1)
    80004838:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000483c:	00251513          	slli	a0,a0,0x2
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	950080e7          	jalr	-1712(ra) # 80001190 <_Z9mem_allocm>
    80004848:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000484c:	01000513          	li	a0,16
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	050080e7          	jalr	80(ra) # 800018a0 <_Znwm>
    80004858:	00050993          	mv	s3,a0
    8000485c:	00000593          	li	a1,0
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	230080e7          	jalr	560(ra) # 80001a90 <_ZN9SemaphoreC1Ej>
    80004868:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000486c:	01000513          	li	a0,16
    80004870:	ffffd097          	auipc	ra,0xffffd
    80004874:	030080e7          	jalr	48(ra) # 800018a0 <_Znwm>
    80004878:	00050993          	mv	s3,a0
    8000487c:	00090593          	mv	a1,s2
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	210080e7          	jalr	528(ra) # 80001a90 <_ZN9SemaphoreC1Ej>
    80004888:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000488c:	01000513          	li	a0,16
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	010080e7          	jalr	16(ra) # 800018a0 <_Znwm>
    80004898:	00050913          	mv	s2,a0
    8000489c:	00100593          	li	a1,1
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	1f0080e7          	jalr	496(ra) # 80001a90 <_ZN9SemaphoreC1Ej>
    800048a8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800048ac:	01000513          	li	a0,16
    800048b0:	ffffd097          	auipc	ra,0xffffd
    800048b4:	ff0080e7          	jalr	-16(ra) # 800018a0 <_Znwm>
    800048b8:	00050913          	mv	s2,a0
    800048bc:	00100593          	li	a1,1
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	1d0080e7          	jalr	464(ra) # 80001a90 <_ZN9SemaphoreC1Ej>
    800048c8:	0324b823          	sd	s2,48(s1)
}
    800048cc:	02813083          	ld	ra,40(sp)
    800048d0:	02013403          	ld	s0,32(sp)
    800048d4:	01813483          	ld	s1,24(sp)
    800048d8:	01013903          	ld	s2,16(sp)
    800048dc:	00813983          	ld	s3,8(sp)
    800048e0:	03010113          	addi	sp,sp,48
    800048e4:	00008067          	ret
    800048e8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800048ec:	00098513          	mv	a0,s3
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	000080e7          	jalr	ra # 800018f0 <_ZdlPv>
    800048f8:	00048513          	mv	a0,s1
    800048fc:	00007097          	auipc	ra,0x7
    80004900:	b9c080e7          	jalr	-1124(ra) # 8000b498 <_Unwind_Resume>
    80004904:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004908:	00098513          	mv	a0,s3
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	fe4080e7          	jalr	-28(ra) # 800018f0 <_ZdlPv>
    80004914:	00048513          	mv	a0,s1
    80004918:	00007097          	auipc	ra,0x7
    8000491c:	b80080e7          	jalr	-1152(ra) # 8000b498 <_Unwind_Resume>
    80004920:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004924:	00090513          	mv	a0,s2
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	fc8080e7          	jalr	-56(ra) # 800018f0 <_ZdlPv>
    80004930:	00048513          	mv	a0,s1
    80004934:	00007097          	auipc	ra,0x7
    80004938:	b64080e7          	jalr	-1180(ra) # 8000b498 <_Unwind_Resume>
    8000493c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004940:	00090513          	mv	a0,s2
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	fac080e7          	jalr	-84(ra) # 800018f0 <_ZdlPv>
    8000494c:	00048513          	mv	a0,s1
    80004950:	00007097          	auipc	ra,0x7
    80004954:	b48080e7          	jalr	-1208(ra) # 8000b498 <_Unwind_Resume>

0000000080004958 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004958:	fe010113          	addi	sp,sp,-32
    8000495c:	00113c23          	sd	ra,24(sp)
    80004960:	00813823          	sd	s0,16(sp)
    80004964:	00913423          	sd	s1,8(sp)
    80004968:	01213023          	sd	s2,0(sp)
    8000496c:	02010413          	addi	s0,sp,32
    80004970:	00050493          	mv	s1,a0
    80004974:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004978:	01853503          	ld	a0,24(a0)
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	14c080e7          	jalr	332(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004984:	0304b503          	ld	a0,48(s1)
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	140080e7          	jalr	320(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004990:	0084b783          	ld	a5,8(s1)
    80004994:	0144a703          	lw	a4,20(s1)
    80004998:	00271713          	slli	a4,a4,0x2
    8000499c:	00e787b3          	add	a5,a5,a4
    800049a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800049a4:	0144a783          	lw	a5,20(s1)
    800049a8:	0017879b          	addiw	a5,a5,1
    800049ac:	0004a703          	lw	a4,0(s1)
    800049b0:	02e7e7bb          	remw	a5,a5,a4
    800049b4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800049b8:	0304b503          	ld	a0,48(s1)
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	138080e7          	jalr	312(ra) # 80001af4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800049c4:	0204b503          	ld	a0,32(s1)
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	12c080e7          	jalr	300(ra) # 80001af4 <_ZN9Semaphore6signalEv>

}
    800049d0:	01813083          	ld	ra,24(sp)
    800049d4:	01013403          	ld	s0,16(sp)
    800049d8:	00813483          	ld	s1,8(sp)
    800049dc:	00013903          	ld	s2,0(sp)
    800049e0:	02010113          	addi	sp,sp,32
    800049e4:	00008067          	ret

00000000800049e8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800049e8:	fe010113          	addi	sp,sp,-32
    800049ec:	00113c23          	sd	ra,24(sp)
    800049f0:	00813823          	sd	s0,16(sp)
    800049f4:	00913423          	sd	s1,8(sp)
    800049f8:	01213023          	sd	s2,0(sp)
    800049fc:	02010413          	addi	s0,sp,32
    80004a00:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004a04:	02053503          	ld	a0,32(a0)
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	0c0080e7          	jalr	192(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004a10:	0284b503          	ld	a0,40(s1)
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	0b4080e7          	jalr	180(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004a1c:	0084b703          	ld	a4,8(s1)
    80004a20:	0104a783          	lw	a5,16(s1)
    80004a24:	00279693          	slli	a3,a5,0x2
    80004a28:	00d70733          	add	a4,a4,a3
    80004a2c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004a30:	0017879b          	addiw	a5,a5,1
    80004a34:	0004a703          	lw	a4,0(s1)
    80004a38:	02e7e7bb          	remw	a5,a5,a4
    80004a3c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004a40:	0284b503          	ld	a0,40(s1)
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	0b0080e7          	jalr	176(ra) # 80001af4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004a4c:	0184b503          	ld	a0,24(s1)
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	0a4080e7          	jalr	164(ra) # 80001af4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004a58:	00090513          	mv	a0,s2
    80004a5c:	01813083          	ld	ra,24(sp)
    80004a60:	01013403          	ld	s0,16(sp)
    80004a64:	00813483          	ld	s1,8(sp)
    80004a68:	00013903          	ld	s2,0(sp)
    80004a6c:	02010113          	addi	sp,sp,32
    80004a70:	00008067          	ret

0000000080004a74 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004a74:	fe010113          	addi	sp,sp,-32
    80004a78:	00113c23          	sd	ra,24(sp)
    80004a7c:	00813823          	sd	s0,16(sp)
    80004a80:	00913423          	sd	s1,8(sp)
    80004a84:	01213023          	sd	s2,0(sp)
    80004a88:	02010413          	addi	s0,sp,32
    80004a8c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004a90:	02853503          	ld	a0,40(a0)
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	034080e7          	jalr	52(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004a9c:	0304b503          	ld	a0,48(s1)
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	028080e7          	jalr	40(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004aa8:	0144a783          	lw	a5,20(s1)
    80004aac:	0104a903          	lw	s2,16(s1)
    80004ab0:	0327ce63          	blt	a5,s2,80004aec <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004ab4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004ab8:	0304b503          	ld	a0,48(s1)
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	038080e7          	jalr	56(ra) # 80001af4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004ac4:	0284b503          	ld	a0,40(s1)
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	02c080e7          	jalr	44(ra) # 80001af4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ad0:	00090513          	mv	a0,s2
    80004ad4:	01813083          	ld	ra,24(sp)
    80004ad8:	01013403          	ld	s0,16(sp)
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	00013903          	ld	s2,0(sp)
    80004ae4:	02010113          	addi	sp,sp,32
    80004ae8:	00008067          	ret
        ret = cap - head + tail;
    80004aec:	0004a703          	lw	a4,0(s1)
    80004af0:	4127093b          	subw	s2,a4,s2
    80004af4:	00f9093b          	addw	s2,s2,a5
    80004af8:	fc1ff06f          	j	80004ab8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004afc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004afc:	fe010113          	addi	sp,sp,-32
    80004b00:	00113c23          	sd	ra,24(sp)
    80004b04:	00813823          	sd	s0,16(sp)
    80004b08:	00913423          	sd	s1,8(sp)
    80004b0c:	02010413          	addi	s0,sp,32
    80004b10:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004b14:	00a00513          	li	a0,10
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	05c080e7          	jalr	92(ra) # 80001b74 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004b20:	00004517          	auipc	a0,0x4
    80004b24:	81850513          	addi	a0,a0,-2024 # 80008338 <_ZZ13_printIntegermE6digits+0x1f8>
    80004b28:	00000097          	auipc	ra,0x0
    80004b2c:	a0c080e7          	jalr	-1524(ra) # 80004534 <_Z11printStringPKc>
    while (getCnt()) {
    80004b30:	00048513          	mv	a0,s1
    80004b34:	00000097          	auipc	ra,0x0
    80004b38:	f40080e7          	jalr	-192(ra) # 80004a74 <_ZN9BufferCPP6getCntEv>
    80004b3c:	02050c63          	beqz	a0,80004b74 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004b40:	0084b783          	ld	a5,8(s1)
    80004b44:	0104a703          	lw	a4,16(s1)
    80004b48:	00271713          	slli	a4,a4,0x2
    80004b4c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004b50:	0007c503          	lbu	a0,0(a5)
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	020080e7          	jalr	32(ra) # 80001b74 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004b5c:	0104a783          	lw	a5,16(s1)
    80004b60:	0017879b          	addiw	a5,a5,1
    80004b64:	0004a703          	lw	a4,0(s1)
    80004b68:	02e7e7bb          	remw	a5,a5,a4
    80004b6c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004b70:	fc1ff06f          	j	80004b30 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004b74:	02100513          	li	a0,33
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	ffc080e7          	jalr	-4(ra) # 80001b74 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004b80:	00a00513          	li	a0,10
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	ff0080e7          	jalr	-16(ra) # 80001b74 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004b8c:	0084b503          	ld	a0,8(s1)
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	640080e7          	jalr	1600(ra) # 800011d0 <_Z8mem_freePv>
    delete itemAvailable;
    80004b98:	0204b503          	ld	a0,32(s1)
    80004b9c:	00050863          	beqz	a0,80004bac <_ZN9BufferCPPD1Ev+0xb0>
    80004ba0:	00053783          	ld	a5,0(a0)
    80004ba4:	0087b783          	ld	a5,8(a5)
    80004ba8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004bac:	0184b503          	ld	a0,24(s1)
    80004bb0:	00050863          	beqz	a0,80004bc0 <_ZN9BufferCPPD1Ev+0xc4>
    80004bb4:	00053783          	ld	a5,0(a0)
    80004bb8:	0087b783          	ld	a5,8(a5)
    80004bbc:	000780e7          	jalr	a5
    delete mutexTail;
    80004bc0:	0304b503          	ld	a0,48(s1)
    80004bc4:	00050863          	beqz	a0,80004bd4 <_ZN9BufferCPPD1Ev+0xd8>
    80004bc8:	00053783          	ld	a5,0(a0)
    80004bcc:	0087b783          	ld	a5,8(a5)
    80004bd0:	000780e7          	jalr	a5
    delete mutexHead;
    80004bd4:	0284b503          	ld	a0,40(s1)
    80004bd8:	00050863          	beqz	a0,80004be8 <_ZN9BufferCPPD1Ev+0xec>
    80004bdc:	00053783          	ld	a5,0(a0)
    80004be0:	0087b783          	ld	a5,8(a5)
    80004be4:	000780e7          	jalr	a5
}
    80004be8:	01813083          	ld	ra,24(sp)
    80004bec:	01013403          	ld	s0,16(sp)
    80004bf0:	00813483          	ld	s1,8(sp)
    80004bf4:	02010113          	addi	sp,sp,32
    80004bf8:	00008067          	ret

0000000080004bfc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004bfc:	fe010113          	addi	sp,sp,-32
    80004c00:	00113c23          	sd	ra,24(sp)
    80004c04:	00813823          	sd	s0,16(sp)
    80004c08:	00913423          	sd	s1,8(sp)
    80004c0c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004c10:	00003517          	auipc	a0,0x3
    80004c14:	74050513          	addi	a0,a0,1856 # 80008350 <_ZZ13_printIntegermE6digits+0x210>
    80004c18:	00000097          	auipc	ra,0x0
    80004c1c:	91c080e7          	jalr	-1764(ra) # 80004534 <_Z11printStringPKc>
    int test = getc() - '0';
    80004c20:	ffffc097          	auipc	ra,0xffffc
    80004c24:	548080e7          	jalr	1352(ra) # 80001168 <_Z4getcv>
    80004c28:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004c2c:	ffffc097          	auipc	ra,0xffffc
    80004c30:	53c080e7          	jalr	1340(ra) # 80001168 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004c34:	00700793          	li	a5,7
    80004c38:	1097e263          	bltu	a5,s1,80004d3c <_Z8userMainv+0x140>
    80004c3c:	00249493          	slli	s1,s1,0x2
    80004c40:	00004717          	auipc	a4,0x4
    80004c44:	96870713          	addi	a4,a4,-1688 # 800085a8 <_ZZ13_printIntegermE6digits+0x468>
    80004c48:	00e484b3          	add	s1,s1,a4
    80004c4c:	0004a783          	lw	a5,0(s1)
    80004c50:	00e787b3          	add	a5,a5,a4
    80004c54:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004c58:	fffff097          	auipc	ra,0xfffff
    80004c5c:	f54080e7          	jalr	-172(ra) # 80003bac <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004c60:	00003517          	auipc	a0,0x3
    80004c64:	71050513          	addi	a0,a0,1808 # 80008370 <_ZZ13_printIntegermE6digits+0x230>
    80004c68:	00000097          	auipc	ra,0x0
    80004c6c:	8cc080e7          	jalr	-1844(ra) # 80004534 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004c70:	01813083          	ld	ra,24(sp)
    80004c74:	01013403          	ld	s0,16(sp)
    80004c78:	00813483          	ld	s1,8(sp)
    80004c7c:	02010113          	addi	sp,sp,32
    80004c80:	00008067          	ret
            Threads_CPP_API_test();
    80004c84:	ffffe097          	auipc	ra,0xffffe
    80004c88:	e04080e7          	jalr	-508(ra) # 80002a88 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004c8c:	00003517          	auipc	a0,0x3
    80004c90:	72450513          	addi	a0,a0,1828 # 800083b0 <_ZZ13_printIntegermE6digits+0x270>
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	8a0080e7          	jalr	-1888(ra) # 80004534 <_Z11printStringPKc>
            break;
    80004c9c:	fd5ff06f          	j	80004c70 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	63c080e7          	jalr	1596(ra) # 800022dc <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004ca8:	00003517          	auipc	a0,0x3
    80004cac:	74850513          	addi	a0,a0,1864 # 800083f0 <_ZZ13_printIntegermE6digits+0x2b0>
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	884080e7          	jalr	-1916(ra) # 80004534 <_Z11printStringPKc>
            break;
    80004cb8:	fb9ff06f          	j	80004c70 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80004cbc:	fffff097          	auipc	ra,0xfffff
    80004cc0:	234080e7          	jalr	564(ra) # 80003ef0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004cc4:	00003517          	auipc	a0,0x3
    80004cc8:	77c50513          	addi	a0,a0,1916 # 80008440 <_ZZ13_printIntegermE6digits+0x300>
    80004ccc:	00000097          	auipc	ra,0x0
    80004cd0:	868080e7          	jalr	-1944(ra) # 80004534 <_Z11printStringPKc>
            break;
    80004cd4:	f9dff06f          	j	80004c70 <_Z8userMainv+0x74>
            testSleeping();
    80004cd8:	00000097          	auipc	ra,0x0
    80004cdc:	11c080e7          	jalr	284(ra) # 80004df4 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80004ce0:	00003517          	auipc	a0,0x3
    80004ce4:	7b850513          	addi	a0,a0,1976 # 80008498 <_ZZ13_printIntegermE6digits+0x358>
    80004ce8:	00000097          	auipc	ra,0x0
    80004cec:	84c080e7          	jalr	-1972(ra) # 80004534 <_Z11printStringPKc>
            break;
    80004cf0:	f81ff06f          	j	80004c70 <_Z8userMainv+0x74>
            testConsumerProducer();
    80004cf4:	ffffe097          	auipc	ra,0xffffe
    80004cf8:	254080e7          	jalr	596(ra) # 80002f48 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80004cfc:	00003517          	auipc	a0,0x3
    80004d00:	7cc50513          	addi	a0,a0,1996 # 800084c8 <_ZZ13_printIntegermE6digits+0x388>
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	830080e7          	jalr	-2000(ra) # 80004534 <_Z11printStringPKc>
            break;
    80004d0c:	f65ff06f          	j	80004c70 <_Z8userMainv+0x74>
            System_Mode_test();
    80004d10:	00000097          	auipc	ra,0x0
    80004d14:	658080e7          	jalr	1624(ra) # 80005368 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004d18:	00003517          	auipc	a0,0x3
    80004d1c:	7f050513          	addi	a0,a0,2032 # 80008508 <_ZZ13_printIntegermE6digits+0x3c8>
    80004d20:	00000097          	auipc	ra,0x0
    80004d24:	814080e7          	jalr	-2028(ra) # 80004534 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004d28:	00004517          	auipc	a0,0x4
    80004d2c:	80050513          	addi	a0,a0,-2048 # 80008528 <_ZZ13_printIntegermE6digits+0x3e8>
    80004d30:	00000097          	auipc	ra,0x0
    80004d34:	804080e7          	jalr	-2044(ra) # 80004534 <_Z11printStringPKc>
            break;
    80004d38:	f39ff06f          	j	80004c70 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004d3c:	00004517          	auipc	a0,0x4
    80004d40:	84450513          	addi	a0,a0,-1980 # 80008580 <_ZZ13_printIntegermE6digits+0x440>
    80004d44:	fffff097          	auipc	ra,0xfffff
    80004d48:	7f0080e7          	jalr	2032(ra) # 80004534 <_Z11printStringPKc>
    80004d4c:	f25ff06f          	j	80004c70 <_Z8userMainv+0x74>

0000000080004d50 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80004d50:	fe010113          	addi	sp,sp,-32
    80004d54:	00113c23          	sd	ra,24(sp)
    80004d58:	00813823          	sd	s0,16(sp)
    80004d5c:	00913423          	sd	s1,8(sp)
    80004d60:	01213023          	sd	s2,0(sp)
    80004d64:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80004d68:	00053903          	ld	s2,0(a0)
    int i = 6;
    80004d6c:	00600493          	li	s1,6
    while (--i > 0) {
    80004d70:	fff4849b          	addiw	s1,s1,-1
    80004d74:	04905463          	blez	s1,80004dbc <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80004d78:	00004517          	auipc	a0,0x4
    80004d7c:	85050513          	addi	a0,a0,-1968 # 800085c8 <_ZZ13_printIntegermE6digits+0x488>
    80004d80:	fffff097          	auipc	ra,0xfffff
    80004d84:	7b4080e7          	jalr	1972(ra) # 80004534 <_Z11printStringPKc>
        printInt(sleep_time);
    80004d88:	00000613          	li	a2,0
    80004d8c:	00a00593          	li	a1,10
    80004d90:	0009051b          	sext.w	a0,s2
    80004d94:	00000097          	auipc	ra,0x0
    80004d98:	950080e7          	jalr	-1712(ra) # 800046e4 <_Z8printIntiii>
        printString(" !\n");
    80004d9c:	00004517          	auipc	a0,0x4
    80004da0:	83450513          	addi	a0,a0,-1996 # 800085d0 <_ZZ13_printIntegermE6digits+0x490>
    80004da4:	fffff097          	auipc	ra,0xfffff
    80004da8:	790080e7          	jalr	1936(ra) # 80004534 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80004dac:	00090513          	mv	a0,s2
    80004db0:	ffffc097          	auipc	ra,0xffffc
    80004db4:	518080e7          	jalr	1304(ra) # 800012c8 <_Z10time_sleepm>
    while (--i > 0) {
    80004db8:	fb9ff06f          	j	80004d70 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80004dbc:	00a00793          	li	a5,10
    80004dc0:	02f95933          	divu	s2,s2,a5
    80004dc4:	fff90913          	addi	s2,s2,-1
    80004dc8:	00005797          	auipc	a5,0x5
    80004dcc:	5f878793          	addi	a5,a5,1528 # 8000a3c0 <_ZL8finished>
    80004dd0:	01278933          	add	s2,a5,s2
    80004dd4:	00100793          	li	a5,1
    80004dd8:	00f90023          	sb	a5,0(s2)
}
    80004ddc:	01813083          	ld	ra,24(sp)
    80004de0:	01013403          	ld	s0,16(sp)
    80004de4:	00813483          	ld	s1,8(sp)
    80004de8:	00013903          	ld	s2,0(sp)
    80004dec:	02010113          	addi	sp,sp,32
    80004df0:	00008067          	ret

0000000080004df4 <_Z12testSleepingv>:

void testSleeping() {
    80004df4:	fc010113          	addi	sp,sp,-64
    80004df8:	02113c23          	sd	ra,56(sp)
    80004dfc:	02813823          	sd	s0,48(sp)
    80004e00:	02913423          	sd	s1,40(sp)
    80004e04:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80004e08:	00a00793          	li	a5,10
    80004e0c:	fcf43823          	sd	a5,-48(s0)
    80004e10:	01400793          	li	a5,20
    80004e14:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80004e18:	00000493          	li	s1,0
    80004e1c:	02c0006f          	j	80004e48 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80004e20:	00349793          	slli	a5,s1,0x3
    80004e24:	fd040613          	addi	a2,s0,-48
    80004e28:	00f60633          	add	a2,a2,a5
    80004e2c:	00000597          	auipc	a1,0x0
    80004e30:	f2458593          	addi	a1,a1,-220 # 80004d50 <_ZL9sleepyRunPv>
    80004e34:	fc040513          	addi	a0,s0,-64
    80004e38:	00f50533          	add	a0,a0,a5
    80004e3c:	ffffc097          	auipc	ra,0xffffc
    80004e40:	3c0080e7          	jalr	960(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80004e44:	0014849b          	addiw	s1,s1,1
    80004e48:	00100793          	li	a5,1
    80004e4c:	fc97dae3          	bge	a5,s1,80004e20 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80004e50:	00005797          	auipc	a5,0x5
    80004e54:	5707c783          	lbu	a5,1392(a5) # 8000a3c0 <_ZL8finished>
    80004e58:	fe078ce3          	beqz	a5,80004e50 <_Z12testSleepingv+0x5c>
    80004e5c:	00005797          	auipc	a5,0x5
    80004e60:	5657c783          	lbu	a5,1381(a5) # 8000a3c1 <_ZL8finished+0x1>
    80004e64:	fe0786e3          	beqz	a5,80004e50 <_Z12testSleepingv+0x5c>
}
    80004e68:	03813083          	ld	ra,56(sp)
    80004e6c:	03013403          	ld	s0,48(sp)
    80004e70:	02813483          	ld	s1,40(sp)
    80004e74:	04010113          	addi	sp,sp,64
    80004e78:	00008067          	ret

0000000080004e7c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004e7c:	fe010113          	addi	sp,sp,-32
    80004e80:	00113c23          	sd	ra,24(sp)
    80004e84:	00813823          	sd	s0,16(sp)
    80004e88:	00913423          	sd	s1,8(sp)
    80004e8c:	01213023          	sd	s2,0(sp)
    80004e90:	02010413          	addi	s0,sp,32
    80004e94:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004e98:	00100793          	li	a5,1
    80004e9c:	02a7f863          	bgeu	a5,a0,80004ecc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004ea0:	00a00793          	li	a5,10
    80004ea4:	02f577b3          	remu	a5,a0,a5
    80004ea8:	02078e63          	beqz	a5,80004ee4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004eac:	fff48513          	addi	a0,s1,-1
    80004eb0:	00000097          	auipc	ra,0x0
    80004eb4:	fcc080e7          	jalr	-52(ra) # 80004e7c <_ZL9fibonaccim>
    80004eb8:	00050913          	mv	s2,a0
    80004ebc:	ffe48513          	addi	a0,s1,-2
    80004ec0:	00000097          	auipc	ra,0x0
    80004ec4:	fbc080e7          	jalr	-68(ra) # 80004e7c <_ZL9fibonaccim>
    80004ec8:	00a90533          	add	a0,s2,a0
}
    80004ecc:	01813083          	ld	ra,24(sp)
    80004ed0:	01013403          	ld	s0,16(sp)
    80004ed4:	00813483          	ld	s1,8(sp)
    80004ed8:	00013903          	ld	s2,0(sp)
    80004edc:	02010113          	addi	sp,sp,32
    80004ee0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	3c4080e7          	jalr	964(ra) # 800012a8 <_Z15thread_dispatchv>
    80004eec:	fc1ff06f          	j	80004eac <_ZL9fibonaccim+0x30>

0000000080004ef0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004ef0:	fe010113          	addi	sp,sp,-32
    80004ef4:	00113c23          	sd	ra,24(sp)
    80004ef8:	00813823          	sd	s0,16(sp)
    80004efc:	00913423          	sd	s1,8(sp)
    80004f00:	01213023          	sd	s2,0(sp)
    80004f04:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f08:	00a00493          	li	s1,10
    80004f0c:	0400006f          	j	80004f4c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f10:	00003517          	auipc	a0,0x3
    80004f14:	39050513          	addi	a0,a0,912 # 800082a0 <_ZZ13_printIntegermE6digits+0x160>
    80004f18:	fffff097          	auipc	ra,0xfffff
    80004f1c:	61c080e7          	jalr	1564(ra) # 80004534 <_Z11printStringPKc>
    80004f20:	00000613          	li	a2,0
    80004f24:	00a00593          	li	a1,10
    80004f28:	00048513          	mv	a0,s1
    80004f2c:	fffff097          	auipc	ra,0xfffff
    80004f30:	7b8080e7          	jalr	1976(ra) # 800046e4 <_Z8printIntiii>
    80004f34:	00003517          	auipc	a0,0x3
    80004f38:	55c50513          	addi	a0,a0,1372 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80004f3c:	fffff097          	auipc	ra,0xfffff
    80004f40:	5f8080e7          	jalr	1528(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f44:	0014849b          	addiw	s1,s1,1
    80004f48:	0ff4f493          	andi	s1,s1,255
    80004f4c:	00c00793          	li	a5,12
    80004f50:	fc97f0e3          	bgeu	a5,s1,80004f10 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004f54:	00003517          	auipc	a0,0x3
    80004f58:	35450513          	addi	a0,a0,852 # 800082a8 <_ZZ13_printIntegermE6digits+0x168>
    80004f5c:	fffff097          	auipc	ra,0xfffff
    80004f60:	5d8080e7          	jalr	1496(ra) # 80004534 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f64:	00500313          	li	t1,5
    thread_dispatch();
    80004f68:	ffffc097          	auipc	ra,0xffffc
    80004f6c:	340080e7          	jalr	832(ra) # 800012a8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004f70:	01000513          	li	a0,16
    80004f74:	00000097          	auipc	ra,0x0
    80004f78:	f08080e7          	jalr	-248(ra) # 80004e7c <_ZL9fibonaccim>
    80004f7c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004f80:	00003517          	auipc	a0,0x3
    80004f84:	33850513          	addi	a0,a0,824 # 800082b8 <_ZZ13_printIntegermE6digits+0x178>
    80004f88:	fffff097          	auipc	ra,0xfffff
    80004f8c:	5ac080e7          	jalr	1452(ra) # 80004534 <_Z11printStringPKc>
    80004f90:	00000613          	li	a2,0
    80004f94:	00a00593          	li	a1,10
    80004f98:	0009051b          	sext.w	a0,s2
    80004f9c:	fffff097          	auipc	ra,0xfffff
    80004fa0:	748080e7          	jalr	1864(ra) # 800046e4 <_Z8printIntiii>
    80004fa4:	00003517          	auipc	a0,0x3
    80004fa8:	4ec50513          	addi	a0,a0,1260 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80004fac:	fffff097          	auipc	ra,0xfffff
    80004fb0:	588080e7          	jalr	1416(ra) # 80004534 <_Z11printStringPKc>
    80004fb4:	0400006f          	j	80004ff4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004fb8:	00003517          	auipc	a0,0x3
    80004fbc:	2e850513          	addi	a0,a0,744 # 800082a0 <_ZZ13_printIntegermE6digits+0x160>
    80004fc0:	fffff097          	auipc	ra,0xfffff
    80004fc4:	574080e7          	jalr	1396(ra) # 80004534 <_Z11printStringPKc>
    80004fc8:	00000613          	li	a2,0
    80004fcc:	00a00593          	li	a1,10
    80004fd0:	00048513          	mv	a0,s1
    80004fd4:	fffff097          	auipc	ra,0xfffff
    80004fd8:	710080e7          	jalr	1808(ra) # 800046e4 <_Z8printIntiii>
    80004fdc:	00003517          	auipc	a0,0x3
    80004fe0:	4b450513          	addi	a0,a0,1204 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80004fe4:	fffff097          	auipc	ra,0xfffff
    80004fe8:	550080e7          	jalr	1360(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004fec:	0014849b          	addiw	s1,s1,1
    80004ff0:	0ff4f493          	andi	s1,s1,255
    80004ff4:	00f00793          	li	a5,15
    80004ff8:	fc97f0e3          	bgeu	a5,s1,80004fb8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004ffc:	00003517          	auipc	a0,0x3
    80005000:	2cc50513          	addi	a0,a0,716 # 800082c8 <_ZZ13_printIntegermE6digits+0x188>
    80005004:	fffff097          	auipc	ra,0xfffff
    80005008:	530080e7          	jalr	1328(ra) # 80004534 <_Z11printStringPKc>
    finishedD = true;
    8000500c:	00100793          	li	a5,1
    80005010:	00005717          	auipc	a4,0x5
    80005014:	3af70923          	sb	a5,946(a4) # 8000a3c2 <_ZL9finishedD>
    thread_dispatch();
    80005018:	ffffc097          	auipc	ra,0xffffc
    8000501c:	290080e7          	jalr	656(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005020:	01813083          	ld	ra,24(sp)
    80005024:	01013403          	ld	s0,16(sp)
    80005028:	00813483          	ld	s1,8(sp)
    8000502c:	00013903          	ld	s2,0(sp)
    80005030:	02010113          	addi	sp,sp,32
    80005034:	00008067          	ret

0000000080005038 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005038:	fe010113          	addi	sp,sp,-32
    8000503c:	00113c23          	sd	ra,24(sp)
    80005040:	00813823          	sd	s0,16(sp)
    80005044:	00913423          	sd	s1,8(sp)
    80005048:	01213023          	sd	s2,0(sp)
    8000504c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005050:	00000493          	li	s1,0
    80005054:	0400006f          	j	80005094 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005058:	00003517          	auipc	a0,0x3
    8000505c:	21850513          	addi	a0,a0,536 # 80008270 <_ZZ13_printIntegermE6digits+0x130>
    80005060:	fffff097          	auipc	ra,0xfffff
    80005064:	4d4080e7          	jalr	1236(ra) # 80004534 <_Z11printStringPKc>
    80005068:	00000613          	li	a2,0
    8000506c:	00a00593          	li	a1,10
    80005070:	00048513          	mv	a0,s1
    80005074:	fffff097          	auipc	ra,0xfffff
    80005078:	670080e7          	jalr	1648(ra) # 800046e4 <_Z8printIntiii>
    8000507c:	00003517          	auipc	a0,0x3
    80005080:	41450513          	addi	a0,a0,1044 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80005084:	fffff097          	auipc	ra,0xfffff
    80005088:	4b0080e7          	jalr	1200(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000508c:	0014849b          	addiw	s1,s1,1
    80005090:	0ff4f493          	andi	s1,s1,255
    80005094:	00200793          	li	a5,2
    80005098:	fc97f0e3          	bgeu	a5,s1,80005058 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000509c:	00003517          	auipc	a0,0x3
    800050a0:	1dc50513          	addi	a0,a0,476 # 80008278 <_ZZ13_printIntegermE6digits+0x138>
    800050a4:	fffff097          	auipc	ra,0xfffff
    800050a8:	490080e7          	jalr	1168(ra) # 80004534 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800050ac:	00700313          	li	t1,7
    thread_dispatch();
    800050b0:	ffffc097          	auipc	ra,0xffffc
    800050b4:	1f8080e7          	jalr	504(ra) # 800012a8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800050b8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800050bc:	00003517          	auipc	a0,0x3
    800050c0:	1cc50513          	addi	a0,a0,460 # 80008288 <_ZZ13_printIntegermE6digits+0x148>
    800050c4:	fffff097          	auipc	ra,0xfffff
    800050c8:	470080e7          	jalr	1136(ra) # 80004534 <_Z11printStringPKc>
    800050cc:	00000613          	li	a2,0
    800050d0:	00a00593          	li	a1,10
    800050d4:	0009051b          	sext.w	a0,s2
    800050d8:	fffff097          	auipc	ra,0xfffff
    800050dc:	60c080e7          	jalr	1548(ra) # 800046e4 <_Z8printIntiii>
    800050e0:	00003517          	auipc	a0,0x3
    800050e4:	3b050513          	addi	a0,a0,944 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    800050e8:	fffff097          	auipc	ra,0xfffff
    800050ec:	44c080e7          	jalr	1100(ra) # 80004534 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800050f0:	00c00513          	li	a0,12
    800050f4:	00000097          	auipc	ra,0x0
    800050f8:	d88080e7          	jalr	-632(ra) # 80004e7c <_ZL9fibonaccim>
    800050fc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005100:	00003517          	auipc	a0,0x3
    80005104:	19050513          	addi	a0,a0,400 # 80008290 <_ZZ13_printIntegermE6digits+0x150>
    80005108:	fffff097          	auipc	ra,0xfffff
    8000510c:	42c080e7          	jalr	1068(ra) # 80004534 <_Z11printStringPKc>
    80005110:	00000613          	li	a2,0
    80005114:	00a00593          	li	a1,10
    80005118:	0009051b          	sext.w	a0,s2
    8000511c:	fffff097          	auipc	ra,0xfffff
    80005120:	5c8080e7          	jalr	1480(ra) # 800046e4 <_Z8printIntiii>
    80005124:	00003517          	auipc	a0,0x3
    80005128:	36c50513          	addi	a0,a0,876 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    8000512c:	fffff097          	auipc	ra,0xfffff
    80005130:	408080e7          	jalr	1032(ra) # 80004534 <_Z11printStringPKc>
    80005134:	0400006f          	j	80005174 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005138:	00003517          	auipc	a0,0x3
    8000513c:	13850513          	addi	a0,a0,312 # 80008270 <_ZZ13_printIntegermE6digits+0x130>
    80005140:	fffff097          	auipc	ra,0xfffff
    80005144:	3f4080e7          	jalr	1012(ra) # 80004534 <_Z11printStringPKc>
    80005148:	00000613          	li	a2,0
    8000514c:	00a00593          	li	a1,10
    80005150:	00048513          	mv	a0,s1
    80005154:	fffff097          	auipc	ra,0xfffff
    80005158:	590080e7          	jalr	1424(ra) # 800046e4 <_Z8printIntiii>
    8000515c:	00003517          	auipc	a0,0x3
    80005160:	33450513          	addi	a0,a0,820 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80005164:	fffff097          	auipc	ra,0xfffff
    80005168:	3d0080e7          	jalr	976(ra) # 80004534 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000516c:	0014849b          	addiw	s1,s1,1
    80005170:	0ff4f493          	andi	s1,s1,255
    80005174:	00500793          	li	a5,5
    80005178:	fc97f0e3          	bgeu	a5,s1,80005138 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000517c:	00003517          	auipc	a0,0x3
    80005180:	0cc50513          	addi	a0,a0,204 # 80008248 <_ZZ13_printIntegermE6digits+0x108>
    80005184:	fffff097          	auipc	ra,0xfffff
    80005188:	3b0080e7          	jalr	944(ra) # 80004534 <_Z11printStringPKc>
    finishedC = true;
    8000518c:	00100793          	li	a5,1
    80005190:	00005717          	auipc	a4,0x5
    80005194:	22f709a3          	sb	a5,563(a4) # 8000a3c3 <_ZL9finishedC>
    thread_dispatch();
    80005198:	ffffc097          	auipc	ra,0xffffc
    8000519c:	110080e7          	jalr	272(ra) # 800012a8 <_Z15thread_dispatchv>
}
    800051a0:	01813083          	ld	ra,24(sp)
    800051a4:	01013403          	ld	s0,16(sp)
    800051a8:	00813483          	ld	s1,8(sp)
    800051ac:	00013903          	ld	s2,0(sp)
    800051b0:	02010113          	addi	sp,sp,32
    800051b4:	00008067          	ret

00000000800051b8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800051b8:	fe010113          	addi	sp,sp,-32
    800051bc:	00113c23          	sd	ra,24(sp)
    800051c0:	00813823          	sd	s0,16(sp)
    800051c4:	00913423          	sd	s1,8(sp)
    800051c8:	01213023          	sd	s2,0(sp)
    800051cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800051d0:	00000913          	li	s2,0
    800051d4:	0400006f          	j	80005214 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800051d8:	ffffc097          	auipc	ra,0xffffc
    800051dc:	0d0080e7          	jalr	208(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800051e0:	00148493          	addi	s1,s1,1
    800051e4:	000027b7          	lui	a5,0x2
    800051e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800051ec:	0097ee63          	bltu	a5,s1,80005208 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800051f0:	00000713          	li	a4,0
    800051f4:	000077b7          	lui	a5,0x7
    800051f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051fc:	fce7eee3          	bltu	a5,a4,800051d8 <_ZL11workerBodyBPv+0x20>
    80005200:	00170713          	addi	a4,a4,1
    80005204:	ff1ff06f          	j	800051f4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005208:	00a00793          	li	a5,10
    8000520c:	04f90663          	beq	s2,a5,80005258 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005210:	00190913          	addi	s2,s2,1
    80005214:	00f00793          	li	a5,15
    80005218:	0527e463          	bltu	a5,s2,80005260 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000521c:	00003517          	auipc	a0,0x3
    80005220:	03c50513          	addi	a0,a0,60 # 80008258 <_ZZ13_printIntegermE6digits+0x118>
    80005224:	fffff097          	auipc	ra,0xfffff
    80005228:	310080e7          	jalr	784(ra) # 80004534 <_Z11printStringPKc>
    8000522c:	00000613          	li	a2,0
    80005230:	00a00593          	li	a1,10
    80005234:	0009051b          	sext.w	a0,s2
    80005238:	fffff097          	auipc	ra,0xfffff
    8000523c:	4ac080e7          	jalr	1196(ra) # 800046e4 <_Z8printIntiii>
    80005240:	00003517          	auipc	a0,0x3
    80005244:	25050513          	addi	a0,a0,592 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80005248:	fffff097          	auipc	ra,0xfffff
    8000524c:	2ec080e7          	jalr	748(ra) # 80004534 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005250:	00000493          	li	s1,0
    80005254:	f91ff06f          	j	800051e4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005258:	14102ff3          	csrr	t6,sepc
    8000525c:	fb5ff06f          	j	80005210 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005260:	00003517          	auipc	a0,0x3
    80005264:	00050513          	mv	a0,a0
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	2cc080e7          	jalr	716(ra) # 80004534 <_Z11printStringPKc>
    finishedB = true;
    80005270:	00100793          	li	a5,1
    80005274:	00005717          	auipc	a4,0x5
    80005278:	14f70823          	sb	a5,336(a4) # 8000a3c4 <_ZL9finishedB>
    thread_dispatch();
    8000527c:	ffffc097          	auipc	ra,0xffffc
    80005280:	02c080e7          	jalr	44(ra) # 800012a8 <_Z15thread_dispatchv>
}
    80005284:	01813083          	ld	ra,24(sp)
    80005288:	01013403          	ld	s0,16(sp)
    8000528c:	00813483          	ld	s1,8(sp)
    80005290:	00013903          	ld	s2,0(sp)
    80005294:	02010113          	addi	sp,sp,32
    80005298:	00008067          	ret

000000008000529c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000529c:	fe010113          	addi	sp,sp,-32
    800052a0:	00113c23          	sd	ra,24(sp)
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00913423          	sd	s1,8(sp)
    800052ac:	01213023          	sd	s2,0(sp)
    800052b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800052b4:	00000913          	li	s2,0
    800052b8:	0380006f          	j	800052f0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	fec080e7          	jalr	-20(ra) # 800012a8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800052c4:	00148493          	addi	s1,s1,1
    800052c8:	000027b7          	lui	a5,0x2
    800052cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800052d0:	0097ee63          	bltu	a5,s1,800052ec <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800052d4:	00000713          	li	a4,0
    800052d8:	000077b7          	lui	a5,0x7
    800052dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800052e0:	fce7eee3          	bltu	a5,a4,800052bc <_ZL11workerBodyAPv+0x20>
    800052e4:	00170713          	addi	a4,a4,1
    800052e8:	ff1ff06f          	j	800052d8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800052ec:	00190913          	addi	s2,s2,1
    800052f0:	00900793          	li	a5,9
    800052f4:	0527e063          	bltu	a5,s2,80005334 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800052f8:	00003517          	auipc	a0,0x3
    800052fc:	f4850513          	addi	a0,a0,-184 # 80008240 <_ZZ13_printIntegermE6digits+0x100>
    80005300:	fffff097          	auipc	ra,0xfffff
    80005304:	234080e7          	jalr	564(ra) # 80004534 <_Z11printStringPKc>
    80005308:	00000613          	li	a2,0
    8000530c:	00a00593          	li	a1,10
    80005310:	0009051b          	sext.w	a0,s2
    80005314:	fffff097          	auipc	ra,0xfffff
    80005318:	3d0080e7          	jalr	976(ra) # 800046e4 <_Z8printIntiii>
    8000531c:	00003517          	auipc	a0,0x3
    80005320:	17450513          	addi	a0,a0,372 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80005324:	fffff097          	auipc	ra,0xfffff
    80005328:	210080e7          	jalr	528(ra) # 80004534 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000532c:	00000493          	li	s1,0
    80005330:	f99ff06f          	j	800052c8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005334:	00003517          	auipc	a0,0x3
    80005338:	f1450513          	addi	a0,a0,-236 # 80008248 <_ZZ13_printIntegermE6digits+0x108>
    8000533c:	fffff097          	auipc	ra,0xfffff
    80005340:	1f8080e7          	jalr	504(ra) # 80004534 <_Z11printStringPKc>
    finishedA = true;
    80005344:	00100793          	li	a5,1
    80005348:	00005717          	auipc	a4,0x5
    8000534c:	06f70ea3          	sb	a5,125(a4) # 8000a3c5 <_ZL9finishedA>
}
    80005350:	01813083          	ld	ra,24(sp)
    80005354:	01013403          	ld	s0,16(sp)
    80005358:	00813483          	ld	s1,8(sp)
    8000535c:	00013903          	ld	s2,0(sp)
    80005360:	02010113          	addi	sp,sp,32
    80005364:	00008067          	ret

0000000080005368 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005368:	fd010113          	addi	sp,sp,-48
    8000536c:	02113423          	sd	ra,40(sp)
    80005370:	02813023          	sd	s0,32(sp)
    80005374:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005378:	00000613          	li	a2,0
    8000537c:	00000597          	auipc	a1,0x0
    80005380:	f2058593          	addi	a1,a1,-224 # 8000529c <_ZL11workerBodyAPv>
    80005384:	fd040513          	addi	a0,s0,-48
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	e74080e7          	jalr	-396(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005390:	00003517          	auipc	a0,0x3
    80005394:	f4850513          	addi	a0,a0,-184 # 800082d8 <_ZZ13_printIntegermE6digits+0x198>
    80005398:	fffff097          	auipc	ra,0xfffff
    8000539c:	19c080e7          	jalr	412(ra) # 80004534 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800053a0:	00000613          	li	a2,0
    800053a4:	00000597          	auipc	a1,0x0
    800053a8:	e1458593          	addi	a1,a1,-492 # 800051b8 <_ZL11workerBodyBPv>
    800053ac:	fd840513          	addi	a0,s0,-40
    800053b0:	ffffc097          	auipc	ra,0xffffc
    800053b4:	e4c080e7          	jalr	-436(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800053b8:	00003517          	auipc	a0,0x3
    800053bc:	f3850513          	addi	a0,a0,-200 # 800082f0 <_ZZ13_printIntegermE6digits+0x1b0>
    800053c0:	fffff097          	auipc	ra,0xfffff
    800053c4:	174080e7          	jalr	372(ra) # 80004534 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800053c8:	00000613          	li	a2,0
    800053cc:	00000597          	auipc	a1,0x0
    800053d0:	c6c58593          	addi	a1,a1,-916 # 80005038 <_ZL11workerBodyCPv>
    800053d4:	fe040513          	addi	a0,s0,-32
    800053d8:	ffffc097          	auipc	ra,0xffffc
    800053dc:	e24080e7          	jalr	-476(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800053e0:	00003517          	auipc	a0,0x3
    800053e4:	f2850513          	addi	a0,a0,-216 # 80008308 <_ZZ13_printIntegermE6digits+0x1c8>
    800053e8:	fffff097          	auipc	ra,0xfffff
    800053ec:	14c080e7          	jalr	332(ra) # 80004534 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800053f0:	00000613          	li	a2,0
    800053f4:	00000597          	auipc	a1,0x0
    800053f8:	afc58593          	addi	a1,a1,-1284 # 80004ef0 <_ZL11workerBodyDPv>
    800053fc:	fe840513          	addi	a0,s0,-24
    80005400:	ffffc097          	auipc	ra,0xffffc
    80005404:	dfc080e7          	jalr	-516(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005408:	00003517          	auipc	a0,0x3
    8000540c:	f1850513          	addi	a0,a0,-232 # 80008320 <_ZZ13_printIntegermE6digits+0x1e0>
    80005410:	fffff097          	auipc	ra,0xfffff
    80005414:	124080e7          	jalr	292(ra) # 80004534 <_Z11printStringPKc>
    80005418:	00c0006f          	j	80005424 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000541c:	ffffc097          	auipc	ra,0xffffc
    80005420:	e8c080e7          	jalr	-372(ra) # 800012a8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005424:	00005797          	auipc	a5,0x5
    80005428:	fa17c783          	lbu	a5,-95(a5) # 8000a3c5 <_ZL9finishedA>
    8000542c:	fe0788e3          	beqz	a5,8000541c <_Z16System_Mode_testv+0xb4>
    80005430:	00005797          	auipc	a5,0x5
    80005434:	f947c783          	lbu	a5,-108(a5) # 8000a3c4 <_ZL9finishedB>
    80005438:	fe0782e3          	beqz	a5,8000541c <_Z16System_Mode_testv+0xb4>
    8000543c:	00005797          	auipc	a5,0x5
    80005440:	f877c783          	lbu	a5,-121(a5) # 8000a3c3 <_ZL9finishedC>
    80005444:	fc078ce3          	beqz	a5,8000541c <_Z16System_Mode_testv+0xb4>
    80005448:	00005797          	auipc	a5,0x5
    8000544c:	f7a7c783          	lbu	a5,-134(a5) # 8000a3c2 <_ZL9finishedD>
    80005450:	fc0786e3          	beqz	a5,8000541c <_Z16System_Mode_testv+0xb4>
    }

}
    80005454:	02813083          	ld	ra,40(sp)
    80005458:	02013403          	ld	s0,32(sp)
    8000545c:	03010113          	addi	sp,sp,48
    80005460:	00008067          	ret

0000000080005464 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005464:	fe010113          	addi	sp,sp,-32
    80005468:	00113c23          	sd	ra,24(sp)
    8000546c:	00813823          	sd	s0,16(sp)
    80005470:	00913423          	sd	s1,8(sp)
    80005474:	01213023          	sd	s2,0(sp)
    80005478:	02010413          	addi	s0,sp,32
    8000547c:	00050493          	mv	s1,a0
    80005480:	00058913          	mv	s2,a1
    80005484:	0015879b          	addiw	a5,a1,1
    80005488:	0007851b          	sext.w	a0,a5
    8000548c:	00f4a023          	sw	a5,0(s1)
    80005490:	0004a823          	sw	zero,16(s1)
    80005494:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005498:	00251513          	slli	a0,a0,0x2
    8000549c:	ffffc097          	auipc	ra,0xffffc
    800054a0:	cf4080e7          	jalr	-780(ra) # 80001190 <_Z9mem_allocm>
    800054a4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800054a8:	00000593          	li	a1,0
    800054ac:	02048513          	addi	a0,s1,32
    800054b0:	ffffc097          	auipc	ra,0xffffc
    800054b4:	e34080e7          	jalr	-460(ra) # 800012e4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800054b8:	00090593          	mv	a1,s2
    800054bc:	01848513          	addi	a0,s1,24
    800054c0:	ffffc097          	auipc	ra,0xffffc
    800054c4:	e24080e7          	jalr	-476(ra) # 800012e4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800054c8:	00100593          	li	a1,1
    800054cc:	02848513          	addi	a0,s1,40
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	e14080e7          	jalr	-492(ra) # 800012e4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800054d8:	00100593          	li	a1,1
    800054dc:	03048513          	addi	a0,s1,48
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	e04080e7          	jalr	-508(ra) # 800012e4 <_Z8sem_openPP4_semj>
}
    800054e8:	01813083          	ld	ra,24(sp)
    800054ec:	01013403          	ld	s0,16(sp)
    800054f0:	00813483          	ld	s1,8(sp)
    800054f4:	00013903          	ld	s2,0(sp)
    800054f8:	02010113          	addi	sp,sp,32
    800054fc:	00008067          	ret

0000000080005500 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005500:	fe010113          	addi	sp,sp,-32
    80005504:	00113c23          	sd	ra,24(sp)
    80005508:	00813823          	sd	s0,16(sp)
    8000550c:	00913423          	sd	s1,8(sp)
    80005510:	01213023          	sd	s2,0(sp)
    80005514:	02010413          	addi	s0,sp,32
    80005518:	00050493          	mv	s1,a0
    8000551c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005520:	01853503          	ld	a0,24(a0)
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	e1c080e7          	jalr	-484(ra) # 80001340 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000552c:	0304b503          	ld	a0,48(s1)
    80005530:	ffffc097          	auipc	ra,0xffffc
    80005534:	e10080e7          	jalr	-496(ra) # 80001340 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005538:	0084b783          	ld	a5,8(s1)
    8000553c:	0144a703          	lw	a4,20(s1)
    80005540:	00271713          	slli	a4,a4,0x2
    80005544:	00e787b3          	add	a5,a5,a4
    80005548:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000554c:	0144a783          	lw	a5,20(s1)
    80005550:	0017879b          	addiw	a5,a5,1
    80005554:	0004a703          	lw	a4,0(s1)
    80005558:	02e7e7bb          	remw	a5,a5,a4
    8000555c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005560:	0304b503          	ld	a0,48(s1)
    80005564:	ffffc097          	auipc	ra,0xffffc
    80005568:	e08080e7          	jalr	-504(ra) # 8000136c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000556c:	0204b503          	ld	a0,32(s1)
    80005570:	ffffc097          	auipc	ra,0xffffc
    80005574:	dfc080e7          	jalr	-516(ra) # 8000136c <_Z10sem_signalP4_sem>

}
    80005578:	01813083          	ld	ra,24(sp)
    8000557c:	01013403          	ld	s0,16(sp)
    80005580:	00813483          	ld	s1,8(sp)
    80005584:	00013903          	ld	s2,0(sp)
    80005588:	02010113          	addi	sp,sp,32
    8000558c:	00008067          	ret

0000000080005590 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005590:	fe010113          	addi	sp,sp,-32
    80005594:	00113c23          	sd	ra,24(sp)
    80005598:	00813823          	sd	s0,16(sp)
    8000559c:	00913423          	sd	s1,8(sp)
    800055a0:	01213023          	sd	s2,0(sp)
    800055a4:	02010413          	addi	s0,sp,32
    800055a8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800055ac:	02053503          	ld	a0,32(a0)
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	d90080e7          	jalr	-624(ra) # 80001340 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800055b8:	0284b503          	ld	a0,40(s1)
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	d84080e7          	jalr	-636(ra) # 80001340 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800055c4:	0084b703          	ld	a4,8(s1)
    800055c8:	0104a783          	lw	a5,16(s1)
    800055cc:	00279693          	slli	a3,a5,0x2
    800055d0:	00d70733          	add	a4,a4,a3
    800055d4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800055d8:	0017879b          	addiw	a5,a5,1
    800055dc:	0004a703          	lw	a4,0(s1)
    800055e0:	02e7e7bb          	remw	a5,a5,a4
    800055e4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800055e8:	0284b503          	ld	a0,40(s1)
    800055ec:	ffffc097          	auipc	ra,0xffffc
    800055f0:	d80080e7          	jalr	-640(ra) # 8000136c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800055f4:	0184b503          	ld	a0,24(s1)
    800055f8:	ffffc097          	auipc	ra,0xffffc
    800055fc:	d74080e7          	jalr	-652(ra) # 8000136c <_Z10sem_signalP4_sem>

    return ret;
}
    80005600:	00090513          	mv	a0,s2
    80005604:	01813083          	ld	ra,24(sp)
    80005608:	01013403          	ld	s0,16(sp)
    8000560c:	00813483          	ld	s1,8(sp)
    80005610:	00013903          	ld	s2,0(sp)
    80005614:	02010113          	addi	sp,sp,32
    80005618:	00008067          	ret

000000008000561c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000561c:	fe010113          	addi	sp,sp,-32
    80005620:	00113c23          	sd	ra,24(sp)
    80005624:	00813823          	sd	s0,16(sp)
    80005628:	00913423          	sd	s1,8(sp)
    8000562c:	01213023          	sd	s2,0(sp)
    80005630:	02010413          	addi	s0,sp,32
    80005634:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005638:	02853503          	ld	a0,40(a0)
    8000563c:	ffffc097          	auipc	ra,0xffffc
    80005640:	d04080e7          	jalr	-764(ra) # 80001340 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005644:	0304b503          	ld	a0,48(s1)
    80005648:	ffffc097          	auipc	ra,0xffffc
    8000564c:	cf8080e7          	jalr	-776(ra) # 80001340 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005650:	0144a783          	lw	a5,20(s1)
    80005654:	0104a903          	lw	s2,16(s1)
    80005658:	0327ce63          	blt	a5,s2,80005694 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000565c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005660:	0304b503          	ld	a0,48(s1)
    80005664:	ffffc097          	auipc	ra,0xffffc
    80005668:	d08080e7          	jalr	-760(ra) # 8000136c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000566c:	0284b503          	ld	a0,40(s1)
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	cfc080e7          	jalr	-772(ra) # 8000136c <_Z10sem_signalP4_sem>

    return ret;
}
    80005678:	00090513          	mv	a0,s2
    8000567c:	01813083          	ld	ra,24(sp)
    80005680:	01013403          	ld	s0,16(sp)
    80005684:	00813483          	ld	s1,8(sp)
    80005688:	00013903          	ld	s2,0(sp)
    8000568c:	02010113          	addi	sp,sp,32
    80005690:	00008067          	ret
        ret = cap - head + tail;
    80005694:	0004a703          	lw	a4,0(s1)
    80005698:	4127093b          	subw	s2,a4,s2
    8000569c:	00f9093b          	addw	s2,s2,a5
    800056a0:	fc1ff06f          	j	80005660 <_ZN6Buffer6getCntEv+0x44>

00000000800056a4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800056a4:	fe010113          	addi	sp,sp,-32
    800056a8:	00113c23          	sd	ra,24(sp)
    800056ac:	00813823          	sd	s0,16(sp)
    800056b0:	00913423          	sd	s1,8(sp)
    800056b4:	02010413          	addi	s0,sp,32
    800056b8:	00050493          	mv	s1,a0
    putc('\n');
    800056bc:	00a00513          	li	a0,10
    800056c0:	ffffc097          	auipc	ra,0xffffc
    800056c4:	a84080e7          	jalr	-1404(ra) # 80001144 <_Z4putcc>
    printString("Buffer deleted!\n");
    800056c8:	00003517          	auipc	a0,0x3
    800056cc:	c7050513          	addi	a0,a0,-912 # 80008338 <_ZZ13_printIntegermE6digits+0x1f8>
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	e64080e7          	jalr	-412(ra) # 80004534 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800056d8:	00048513          	mv	a0,s1
    800056dc:	00000097          	auipc	ra,0x0
    800056e0:	f40080e7          	jalr	-192(ra) # 8000561c <_ZN6Buffer6getCntEv>
    800056e4:	02a05c63          	blez	a0,8000571c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800056e8:	0084b783          	ld	a5,8(s1)
    800056ec:	0104a703          	lw	a4,16(s1)
    800056f0:	00271713          	slli	a4,a4,0x2
    800056f4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800056f8:	0007c503          	lbu	a0,0(a5)
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	a48080e7          	jalr	-1464(ra) # 80001144 <_Z4putcc>
        head = (head + 1) % cap;
    80005704:	0104a783          	lw	a5,16(s1)
    80005708:	0017879b          	addiw	a5,a5,1
    8000570c:	0004a703          	lw	a4,0(s1)
    80005710:	02e7e7bb          	remw	a5,a5,a4
    80005714:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005718:	fc1ff06f          	j	800056d8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000571c:	02100513          	li	a0,33
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	a24080e7          	jalr	-1500(ra) # 80001144 <_Z4putcc>
    putc('\n');
    80005728:	00a00513          	li	a0,10
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	a18080e7          	jalr	-1512(ra) # 80001144 <_Z4putcc>
    mem_free(buffer);
    80005734:	0084b503          	ld	a0,8(s1)
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	a98080e7          	jalr	-1384(ra) # 800011d0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005740:	0204b503          	ld	a0,32(s1)
    80005744:	ffffc097          	auipc	ra,0xffffc
    80005748:	bd0080e7          	jalr	-1072(ra) # 80001314 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000574c:	0184b503          	ld	a0,24(s1)
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	bc4080e7          	jalr	-1084(ra) # 80001314 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005758:	0304b503          	ld	a0,48(s1)
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	bb8080e7          	jalr	-1096(ra) # 80001314 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005764:	0284b503          	ld	a0,40(s1)
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	bac080e7          	jalr	-1108(ra) # 80001314 <_Z9sem_closeP4_sem>
}
    80005770:	01813083          	ld	ra,24(sp)
    80005774:	01013403          	ld	s0,16(sp)
    80005778:	00813483          	ld	s1,8(sp)
    8000577c:	02010113          	addi	sp,sp,32
    80005780:	00008067          	ret

0000000080005784 <start>:
    80005784:	ff010113          	addi	sp,sp,-16
    80005788:	00813423          	sd	s0,8(sp)
    8000578c:	01010413          	addi	s0,sp,16
    80005790:	300027f3          	csrr	a5,mstatus
    80005794:	ffffe737          	lui	a4,0xffffe
    80005798:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff31bf>
    8000579c:	00e7f7b3          	and	a5,a5,a4
    800057a0:	00001737          	lui	a4,0x1
    800057a4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800057a8:	00e7e7b3          	or	a5,a5,a4
    800057ac:	30079073          	csrw	mstatus,a5
    800057b0:	00000797          	auipc	a5,0x0
    800057b4:	16078793          	addi	a5,a5,352 # 80005910 <system_main>
    800057b8:	34179073          	csrw	mepc,a5
    800057bc:	00000793          	li	a5,0
    800057c0:	18079073          	csrw	satp,a5
    800057c4:	000107b7          	lui	a5,0x10
    800057c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800057cc:	30279073          	csrw	medeleg,a5
    800057d0:	30379073          	csrw	mideleg,a5
    800057d4:	104027f3          	csrr	a5,sie
    800057d8:	2227e793          	ori	a5,a5,546
    800057dc:	10479073          	csrw	sie,a5
    800057e0:	fff00793          	li	a5,-1
    800057e4:	00a7d793          	srli	a5,a5,0xa
    800057e8:	3b079073          	csrw	pmpaddr0,a5
    800057ec:	00f00793          	li	a5,15
    800057f0:	3a079073          	csrw	pmpcfg0,a5
    800057f4:	f14027f3          	csrr	a5,mhartid
    800057f8:	0200c737          	lui	a4,0x200c
    800057fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005800:	0007869b          	sext.w	a3,a5
    80005804:	00269713          	slli	a4,a3,0x2
    80005808:	000f4637          	lui	a2,0xf4
    8000580c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005810:	00d70733          	add	a4,a4,a3
    80005814:	0037979b          	slliw	a5,a5,0x3
    80005818:	020046b7          	lui	a3,0x2004
    8000581c:	00d787b3          	add	a5,a5,a3
    80005820:	00c585b3          	add	a1,a1,a2
    80005824:	00371693          	slli	a3,a4,0x3
    80005828:	00005717          	auipc	a4,0x5
    8000582c:	ba870713          	addi	a4,a4,-1112 # 8000a3d0 <timer_scratch>
    80005830:	00b7b023          	sd	a1,0(a5)
    80005834:	00d70733          	add	a4,a4,a3
    80005838:	00f73c23          	sd	a5,24(a4)
    8000583c:	02c73023          	sd	a2,32(a4)
    80005840:	34071073          	csrw	mscratch,a4
    80005844:	00000797          	auipc	a5,0x0
    80005848:	6ec78793          	addi	a5,a5,1772 # 80005f30 <timervec>
    8000584c:	30579073          	csrw	mtvec,a5
    80005850:	300027f3          	csrr	a5,mstatus
    80005854:	0087e793          	ori	a5,a5,8
    80005858:	30079073          	csrw	mstatus,a5
    8000585c:	304027f3          	csrr	a5,mie
    80005860:	0807e793          	ori	a5,a5,128
    80005864:	30479073          	csrw	mie,a5
    80005868:	f14027f3          	csrr	a5,mhartid
    8000586c:	0007879b          	sext.w	a5,a5
    80005870:	00078213          	mv	tp,a5
    80005874:	30200073          	mret
    80005878:	00813403          	ld	s0,8(sp)
    8000587c:	01010113          	addi	sp,sp,16
    80005880:	00008067          	ret

0000000080005884 <timerinit>:
    80005884:	ff010113          	addi	sp,sp,-16
    80005888:	00813423          	sd	s0,8(sp)
    8000588c:	01010413          	addi	s0,sp,16
    80005890:	f14027f3          	csrr	a5,mhartid
    80005894:	0200c737          	lui	a4,0x200c
    80005898:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000589c:	0007869b          	sext.w	a3,a5
    800058a0:	00269713          	slli	a4,a3,0x2
    800058a4:	000f4637          	lui	a2,0xf4
    800058a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800058ac:	00d70733          	add	a4,a4,a3
    800058b0:	0037979b          	slliw	a5,a5,0x3
    800058b4:	020046b7          	lui	a3,0x2004
    800058b8:	00d787b3          	add	a5,a5,a3
    800058bc:	00c585b3          	add	a1,a1,a2
    800058c0:	00371693          	slli	a3,a4,0x3
    800058c4:	00005717          	auipc	a4,0x5
    800058c8:	b0c70713          	addi	a4,a4,-1268 # 8000a3d0 <timer_scratch>
    800058cc:	00b7b023          	sd	a1,0(a5)
    800058d0:	00d70733          	add	a4,a4,a3
    800058d4:	00f73c23          	sd	a5,24(a4)
    800058d8:	02c73023          	sd	a2,32(a4)
    800058dc:	34071073          	csrw	mscratch,a4
    800058e0:	00000797          	auipc	a5,0x0
    800058e4:	65078793          	addi	a5,a5,1616 # 80005f30 <timervec>
    800058e8:	30579073          	csrw	mtvec,a5
    800058ec:	300027f3          	csrr	a5,mstatus
    800058f0:	0087e793          	ori	a5,a5,8
    800058f4:	30079073          	csrw	mstatus,a5
    800058f8:	304027f3          	csrr	a5,mie
    800058fc:	0807e793          	ori	a5,a5,128
    80005900:	30479073          	csrw	mie,a5
    80005904:	00813403          	ld	s0,8(sp)
    80005908:	01010113          	addi	sp,sp,16
    8000590c:	00008067          	ret

0000000080005910 <system_main>:
    80005910:	fe010113          	addi	sp,sp,-32
    80005914:	00813823          	sd	s0,16(sp)
    80005918:	00913423          	sd	s1,8(sp)
    8000591c:	00113c23          	sd	ra,24(sp)
    80005920:	02010413          	addi	s0,sp,32
    80005924:	00000097          	auipc	ra,0x0
    80005928:	0c4080e7          	jalr	196(ra) # 800059e8 <cpuid>
    8000592c:	00005497          	auipc	s1,0x5
    80005930:	a0448493          	addi	s1,s1,-1532 # 8000a330 <started>
    80005934:	02050263          	beqz	a0,80005958 <system_main+0x48>
    80005938:	0004a783          	lw	a5,0(s1)
    8000593c:	0007879b          	sext.w	a5,a5
    80005940:	fe078ce3          	beqz	a5,80005938 <system_main+0x28>
    80005944:	0ff0000f          	fence
    80005948:	00003517          	auipc	a0,0x3
    8000594c:	cc050513          	addi	a0,a0,-832 # 80008608 <_ZZ13_printIntegermE6digits+0x4c8>
    80005950:	00001097          	auipc	ra,0x1
    80005954:	a7c080e7          	jalr	-1412(ra) # 800063cc <panic>
    80005958:	00001097          	auipc	ra,0x1
    8000595c:	9d0080e7          	jalr	-1584(ra) # 80006328 <consoleinit>
    80005960:	00001097          	auipc	ra,0x1
    80005964:	15c080e7          	jalr	348(ra) # 80006abc <printfinit>
    80005968:	00003517          	auipc	a0,0x3
    8000596c:	b2850513          	addi	a0,a0,-1240 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80005970:	00001097          	auipc	ra,0x1
    80005974:	ab8080e7          	jalr	-1352(ra) # 80006428 <__printf>
    80005978:	00003517          	auipc	a0,0x3
    8000597c:	c6050513          	addi	a0,a0,-928 # 800085d8 <_ZZ13_printIntegermE6digits+0x498>
    80005980:	00001097          	auipc	ra,0x1
    80005984:	aa8080e7          	jalr	-1368(ra) # 80006428 <__printf>
    80005988:	00003517          	auipc	a0,0x3
    8000598c:	b0850513          	addi	a0,a0,-1272 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80005990:	00001097          	auipc	ra,0x1
    80005994:	a98080e7          	jalr	-1384(ra) # 80006428 <__printf>
    80005998:	00001097          	auipc	ra,0x1
    8000599c:	4b0080e7          	jalr	1200(ra) # 80006e48 <kinit>
    800059a0:	00000097          	auipc	ra,0x0
    800059a4:	148080e7          	jalr	328(ra) # 80005ae8 <trapinit>
    800059a8:	00000097          	auipc	ra,0x0
    800059ac:	16c080e7          	jalr	364(ra) # 80005b14 <trapinithart>
    800059b0:	00000097          	auipc	ra,0x0
    800059b4:	5c0080e7          	jalr	1472(ra) # 80005f70 <plicinit>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	5e0080e7          	jalr	1504(ra) # 80005f98 <plicinithart>
    800059c0:	00000097          	auipc	ra,0x0
    800059c4:	078080e7          	jalr	120(ra) # 80005a38 <userinit>
    800059c8:	0ff0000f          	fence
    800059cc:	00100793          	li	a5,1
    800059d0:	00003517          	auipc	a0,0x3
    800059d4:	c2050513          	addi	a0,a0,-992 # 800085f0 <_ZZ13_printIntegermE6digits+0x4b0>
    800059d8:	00f4a023          	sw	a5,0(s1)
    800059dc:	00001097          	auipc	ra,0x1
    800059e0:	a4c080e7          	jalr	-1460(ra) # 80006428 <__printf>
    800059e4:	0000006f          	j	800059e4 <system_main+0xd4>

00000000800059e8 <cpuid>:
    800059e8:	ff010113          	addi	sp,sp,-16
    800059ec:	00813423          	sd	s0,8(sp)
    800059f0:	01010413          	addi	s0,sp,16
    800059f4:	00020513          	mv	a0,tp
    800059f8:	00813403          	ld	s0,8(sp)
    800059fc:	0005051b          	sext.w	a0,a0
    80005a00:	01010113          	addi	sp,sp,16
    80005a04:	00008067          	ret

0000000080005a08 <mycpu>:
    80005a08:	ff010113          	addi	sp,sp,-16
    80005a0c:	00813423          	sd	s0,8(sp)
    80005a10:	01010413          	addi	s0,sp,16
    80005a14:	00020793          	mv	a5,tp
    80005a18:	00813403          	ld	s0,8(sp)
    80005a1c:	0007879b          	sext.w	a5,a5
    80005a20:	00779793          	slli	a5,a5,0x7
    80005a24:	00006517          	auipc	a0,0x6
    80005a28:	9dc50513          	addi	a0,a0,-1572 # 8000b400 <cpus>
    80005a2c:	00f50533          	add	a0,a0,a5
    80005a30:	01010113          	addi	sp,sp,16
    80005a34:	00008067          	ret

0000000080005a38 <userinit>:
    80005a38:	ff010113          	addi	sp,sp,-16
    80005a3c:	00813423          	sd	s0,8(sp)
    80005a40:	01010413          	addi	s0,sp,16
    80005a44:	00813403          	ld	s0,8(sp)
    80005a48:	01010113          	addi	sp,sp,16
    80005a4c:	ffffc317          	auipc	t1,0xffffc
    80005a50:	be830067          	jr	-1048(t1) # 80001634 <main>

0000000080005a54 <either_copyout>:
    80005a54:	ff010113          	addi	sp,sp,-16
    80005a58:	00813023          	sd	s0,0(sp)
    80005a5c:	00113423          	sd	ra,8(sp)
    80005a60:	01010413          	addi	s0,sp,16
    80005a64:	02051663          	bnez	a0,80005a90 <either_copyout+0x3c>
    80005a68:	00058513          	mv	a0,a1
    80005a6c:	00060593          	mv	a1,a2
    80005a70:	0006861b          	sext.w	a2,a3
    80005a74:	00002097          	auipc	ra,0x2
    80005a78:	c60080e7          	jalr	-928(ra) # 800076d4 <__memmove>
    80005a7c:	00813083          	ld	ra,8(sp)
    80005a80:	00013403          	ld	s0,0(sp)
    80005a84:	00000513          	li	a0,0
    80005a88:	01010113          	addi	sp,sp,16
    80005a8c:	00008067          	ret
    80005a90:	00003517          	auipc	a0,0x3
    80005a94:	ba050513          	addi	a0,a0,-1120 # 80008630 <_ZZ13_printIntegermE6digits+0x4f0>
    80005a98:	00001097          	auipc	ra,0x1
    80005a9c:	934080e7          	jalr	-1740(ra) # 800063cc <panic>

0000000080005aa0 <either_copyin>:
    80005aa0:	ff010113          	addi	sp,sp,-16
    80005aa4:	00813023          	sd	s0,0(sp)
    80005aa8:	00113423          	sd	ra,8(sp)
    80005aac:	01010413          	addi	s0,sp,16
    80005ab0:	02059463          	bnez	a1,80005ad8 <either_copyin+0x38>
    80005ab4:	00060593          	mv	a1,a2
    80005ab8:	0006861b          	sext.w	a2,a3
    80005abc:	00002097          	auipc	ra,0x2
    80005ac0:	c18080e7          	jalr	-1000(ra) # 800076d4 <__memmove>
    80005ac4:	00813083          	ld	ra,8(sp)
    80005ac8:	00013403          	ld	s0,0(sp)
    80005acc:	00000513          	li	a0,0
    80005ad0:	01010113          	addi	sp,sp,16
    80005ad4:	00008067          	ret
    80005ad8:	00003517          	auipc	a0,0x3
    80005adc:	b8050513          	addi	a0,a0,-1152 # 80008658 <_ZZ13_printIntegermE6digits+0x518>
    80005ae0:	00001097          	auipc	ra,0x1
    80005ae4:	8ec080e7          	jalr	-1812(ra) # 800063cc <panic>

0000000080005ae8 <trapinit>:
    80005ae8:	ff010113          	addi	sp,sp,-16
    80005aec:	00813423          	sd	s0,8(sp)
    80005af0:	01010413          	addi	s0,sp,16
    80005af4:	00813403          	ld	s0,8(sp)
    80005af8:	00003597          	auipc	a1,0x3
    80005afc:	b8858593          	addi	a1,a1,-1144 # 80008680 <_ZZ13_printIntegermE6digits+0x540>
    80005b00:	00006517          	auipc	a0,0x6
    80005b04:	98050513          	addi	a0,a0,-1664 # 8000b480 <tickslock>
    80005b08:	01010113          	addi	sp,sp,16
    80005b0c:	00001317          	auipc	t1,0x1
    80005b10:	5cc30067          	jr	1484(t1) # 800070d8 <initlock>

0000000080005b14 <trapinithart>:
    80005b14:	ff010113          	addi	sp,sp,-16
    80005b18:	00813423          	sd	s0,8(sp)
    80005b1c:	01010413          	addi	s0,sp,16
    80005b20:	00000797          	auipc	a5,0x0
    80005b24:	30078793          	addi	a5,a5,768 # 80005e20 <kernelvec>
    80005b28:	10579073          	csrw	stvec,a5
    80005b2c:	00813403          	ld	s0,8(sp)
    80005b30:	01010113          	addi	sp,sp,16
    80005b34:	00008067          	ret

0000000080005b38 <usertrap>:
    80005b38:	ff010113          	addi	sp,sp,-16
    80005b3c:	00813423          	sd	s0,8(sp)
    80005b40:	01010413          	addi	s0,sp,16
    80005b44:	00813403          	ld	s0,8(sp)
    80005b48:	01010113          	addi	sp,sp,16
    80005b4c:	00008067          	ret

0000000080005b50 <usertrapret>:
    80005b50:	ff010113          	addi	sp,sp,-16
    80005b54:	00813423          	sd	s0,8(sp)
    80005b58:	01010413          	addi	s0,sp,16
    80005b5c:	00813403          	ld	s0,8(sp)
    80005b60:	01010113          	addi	sp,sp,16
    80005b64:	00008067          	ret

0000000080005b68 <kerneltrap>:
    80005b68:	fe010113          	addi	sp,sp,-32
    80005b6c:	00813823          	sd	s0,16(sp)
    80005b70:	00113c23          	sd	ra,24(sp)
    80005b74:	00913423          	sd	s1,8(sp)
    80005b78:	02010413          	addi	s0,sp,32
    80005b7c:	142025f3          	csrr	a1,scause
    80005b80:	100027f3          	csrr	a5,sstatus
    80005b84:	0027f793          	andi	a5,a5,2
    80005b88:	10079c63          	bnez	a5,80005ca0 <kerneltrap+0x138>
    80005b8c:	142027f3          	csrr	a5,scause
    80005b90:	0207ce63          	bltz	a5,80005bcc <kerneltrap+0x64>
    80005b94:	00003517          	auipc	a0,0x3
    80005b98:	b3450513          	addi	a0,a0,-1228 # 800086c8 <_ZZ13_printIntegermE6digits+0x588>
    80005b9c:	00001097          	auipc	ra,0x1
    80005ba0:	88c080e7          	jalr	-1908(ra) # 80006428 <__printf>
    80005ba4:	141025f3          	csrr	a1,sepc
    80005ba8:	14302673          	csrr	a2,stval
    80005bac:	00003517          	auipc	a0,0x3
    80005bb0:	b2c50513          	addi	a0,a0,-1236 # 800086d8 <_ZZ13_printIntegermE6digits+0x598>
    80005bb4:	00001097          	auipc	ra,0x1
    80005bb8:	874080e7          	jalr	-1932(ra) # 80006428 <__printf>
    80005bbc:	00003517          	auipc	a0,0x3
    80005bc0:	b3450513          	addi	a0,a0,-1228 # 800086f0 <_ZZ13_printIntegermE6digits+0x5b0>
    80005bc4:	00001097          	auipc	ra,0x1
    80005bc8:	808080e7          	jalr	-2040(ra) # 800063cc <panic>
    80005bcc:	0ff7f713          	andi	a4,a5,255
    80005bd0:	00900693          	li	a3,9
    80005bd4:	04d70063          	beq	a4,a3,80005c14 <kerneltrap+0xac>
    80005bd8:	fff00713          	li	a4,-1
    80005bdc:	03f71713          	slli	a4,a4,0x3f
    80005be0:	00170713          	addi	a4,a4,1
    80005be4:	fae798e3          	bne	a5,a4,80005b94 <kerneltrap+0x2c>
    80005be8:	00000097          	auipc	ra,0x0
    80005bec:	e00080e7          	jalr	-512(ra) # 800059e8 <cpuid>
    80005bf0:	06050663          	beqz	a0,80005c5c <kerneltrap+0xf4>
    80005bf4:	144027f3          	csrr	a5,sip
    80005bf8:	ffd7f793          	andi	a5,a5,-3
    80005bfc:	14479073          	csrw	sip,a5
    80005c00:	01813083          	ld	ra,24(sp)
    80005c04:	01013403          	ld	s0,16(sp)
    80005c08:	00813483          	ld	s1,8(sp)
    80005c0c:	02010113          	addi	sp,sp,32
    80005c10:	00008067          	ret
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	3d0080e7          	jalr	976(ra) # 80005fe4 <plic_claim>
    80005c1c:	00a00793          	li	a5,10
    80005c20:	00050493          	mv	s1,a0
    80005c24:	06f50863          	beq	a0,a5,80005c94 <kerneltrap+0x12c>
    80005c28:	fc050ce3          	beqz	a0,80005c00 <kerneltrap+0x98>
    80005c2c:	00050593          	mv	a1,a0
    80005c30:	00003517          	auipc	a0,0x3
    80005c34:	a7850513          	addi	a0,a0,-1416 # 800086a8 <_ZZ13_printIntegermE6digits+0x568>
    80005c38:	00000097          	auipc	ra,0x0
    80005c3c:	7f0080e7          	jalr	2032(ra) # 80006428 <__printf>
    80005c40:	01013403          	ld	s0,16(sp)
    80005c44:	01813083          	ld	ra,24(sp)
    80005c48:	00048513          	mv	a0,s1
    80005c4c:	00813483          	ld	s1,8(sp)
    80005c50:	02010113          	addi	sp,sp,32
    80005c54:	00000317          	auipc	t1,0x0
    80005c58:	3c830067          	jr	968(t1) # 8000601c <plic_complete>
    80005c5c:	00006517          	auipc	a0,0x6
    80005c60:	82450513          	addi	a0,a0,-2012 # 8000b480 <tickslock>
    80005c64:	00001097          	auipc	ra,0x1
    80005c68:	498080e7          	jalr	1176(ra) # 800070fc <acquire>
    80005c6c:	00004717          	auipc	a4,0x4
    80005c70:	6c870713          	addi	a4,a4,1736 # 8000a334 <ticks>
    80005c74:	00072783          	lw	a5,0(a4)
    80005c78:	00006517          	auipc	a0,0x6
    80005c7c:	80850513          	addi	a0,a0,-2040 # 8000b480 <tickslock>
    80005c80:	0017879b          	addiw	a5,a5,1
    80005c84:	00f72023          	sw	a5,0(a4)
    80005c88:	00001097          	auipc	ra,0x1
    80005c8c:	540080e7          	jalr	1344(ra) # 800071c8 <release>
    80005c90:	f65ff06f          	j	80005bf4 <kerneltrap+0x8c>
    80005c94:	00001097          	auipc	ra,0x1
    80005c98:	09c080e7          	jalr	156(ra) # 80006d30 <uartintr>
    80005c9c:	fa5ff06f          	j	80005c40 <kerneltrap+0xd8>
    80005ca0:	00003517          	auipc	a0,0x3
    80005ca4:	9e850513          	addi	a0,a0,-1560 # 80008688 <_ZZ13_printIntegermE6digits+0x548>
    80005ca8:	00000097          	auipc	ra,0x0
    80005cac:	724080e7          	jalr	1828(ra) # 800063cc <panic>

0000000080005cb0 <clockintr>:
    80005cb0:	fe010113          	addi	sp,sp,-32
    80005cb4:	00813823          	sd	s0,16(sp)
    80005cb8:	00913423          	sd	s1,8(sp)
    80005cbc:	00113c23          	sd	ra,24(sp)
    80005cc0:	02010413          	addi	s0,sp,32
    80005cc4:	00005497          	auipc	s1,0x5
    80005cc8:	7bc48493          	addi	s1,s1,1980 # 8000b480 <tickslock>
    80005ccc:	00048513          	mv	a0,s1
    80005cd0:	00001097          	auipc	ra,0x1
    80005cd4:	42c080e7          	jalr	1068(ra) # 800070fc <acquire>
    80005cd8:	00004717          	auipc	a4,0x4
    80005cdc:	65c70713          	addi	a4,a4,1628 # 8000a334 <ticks>
    80005ce0:	00072783          	lw	a5,0(a4)
    80005ce4:	01013403          	ld	s0,16(sp)
    80005ce8:	01813083          	ld	ra,24(sp)
    80005cec:	00048513          	mv	a0,s1
    80005cf0:	0017879b          	addiw	a5,a5,1
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	00f72023          	sw	a5,0(a4)
    80005cfc:	02010113          	addi	sp,sp,32
    80005d00:	00001317          	auipc	t1,0x1
    80005d04:	4c830067          	jr	1224(t1) # 800071c8 <release>

0000000080005d08 <devintr>:
    80005d08:	142027f3          	csrr	a5,scause
    80005d0c:	00000513          	li	a0,0
    80005d10:	0007c463          	bltz	a5,80005d18 <devintr+0x10>
    80005d14:	00008067          	ret
    80005d18:	fe010113          	addi	sp,sp,-32
    80005d1c:	00813823          	sd	s0,16(sp)
    80005d20:	00113c23          	sd	ra,24(sp)
    80005d24:	00913423          	sd	s1,8(sp)
    80005d28:	02010413          	addi	s0,sp,32
    80005d2c:	0ff7f713          	andi	a4,a5,255
    80005d30:	00900693          	li	a3,9
    80005d34:	04d70c63          	beq	a4,a3,80005d8c <devintr+0x84>
    80005d38:	fff00713          	li	a4,-1
    80005d3c:	03f71713          	slli	a4,a4,0x3f
    80005d40:	00170713          	addi	a4,a4,1
    80005d44:	00e78c63          	beq	a5,a4,80005d5c <devintr+0x54>
    80005d48:	01813083          	ld	ra,24(sp)
    80005d4c:	01013403          	ld	s0,16(sp)
    80005d50:	00813483          	ld	s1,8(sp)
    80005d54:	02010113          	addi	sp,sp,32
    80005d58:	00008067          	ret
    80005d5c:	00000097          	auipc	ra,0x0
    80005d60:	c8c080e7          	jalr	-884(ra) # 800059e8 <cpuid>
    80005d64:	06050663          	beqz	a0,80005dd0 <devintr+0xc8>
    80005d68:	144027f3          	csrr	a5,sip
    80005d6c:	ffd7f793          	andi	a5,a5,-3
    80005d70:	14479073          	csrw	sip,a5
    80005d74:	01813083          	ld	ra,24(sp)
    80005d78:	01013403          	ld	s0,16(sp)
    80005d7c:	00813483          	ld	s1,8(sp)
    80005d80:	00200513          	li	a0,2
    80005d84:	02010113          	addi	sp,sp,32
    80005d88:	00008067          	ret
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	258080e7          	jalr	600(ra) # 80005fe4 <plic_claim>
    80005d94:	00a00793          	li	a5,10
    80005d98:	00050493          	mv	s1,a0
    80005d9c:	06f50663          	beq	a0,a5,80005e08 <devintr+0x100>
    80005da0:	00100513          	li	a0,1
    80005da4:	fa0482e3          	beqz	s1,80005d48 <devintr+0x40>
    80005da8:	00048593          	mv	a1,s1
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	8fc50513          	addi	a0,a0,-1796 # 800086a8 <_ZZ13_printIntegermE6digits+0x568>
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	674080e7          	jalr	1652(ra) # 80006428 <__printf>
    80005dbc:	00048513          	mv	a0,s1
    80005dc0:	00000097          	auipc	ra,0x0
    80005dc4:	25c080e7          	jalr	604(ra) # 8000601c <plic_complete>
    80005dc8:	00100513          	li	a0,1
    80005dcc:	f7dff06f          	j	80005d48 <devintr+0x40>
    80005dd0:	00005517          	auipc	a0,0x5
    80005dd4:	6b050513          	addi	a0,a0,1712 # 8000b480 <tickslock>
    80005dd8:	00001097          	auipc	ra,0x1
    80005ddc:	324080e7          	jalr	804(ra) # 800070fc <acquire>
    80005de0:	00004717          	auipc	a4,0x4
    80005de4:	55470713          	addi	a4,a4,1364 # 8000a334 <ticks>
    80005de8:	00072783          	lw	a5,0(a4)
    80005dec:	00005517          	auipc	a0,0x5
    80005df0:	69450513          	addi	a0,a0,1684 # 8000b480 <tickslock>
    80005df4:	0017879b          	addiw	a5,a5,1
    80005df8:	00f72023          	sw	a5,0(a4)
    80005dfc:	00001097          	auipc	ra,0x1
    80005e00:	3cc080e7          	jalr	972(ra) # 800071c8 <release>
    80005e04:	f65ff06f          	j	80005d68 <devintr+0x60>
    80005e08:	00001097          	auipc	ra,0x1
    80005e0c:	f28080e7          	jalr	-216(ra) # 80006d30 <uartintr>
    80005e10:	fadff06f          	j	80005dbc <devintr+0xb4>
	...

0000000080005e20 <kernelvec>:
    80005e20:	f0010113          	addi	sp,sp,-256
    80005e24:	00113023          	sd	ra,0(sp)
    80005e28:	00213423          	sd	sp,8(sp)
    80005e2c:	00313823          	sd	gp,16(sp)
    80005e30:	00413c23          	sd	tp,24(sp)
    80005e34:	02513023          	sd	t0,32(sp)
    80005e38:	02613423          	sd	t1,40(sp)
    80005e3c:	02713823          	sd	t2,48(sp)
    80005e40:	02813c23          	sd	s0,56(sp)
    80005e44:	04913023          	sd	s1,64(sp)
    80005e48:	04a13423          	sd	a0,72(sp)
    80005e4c:	04b13823          	sd	a1,80(sp)
    80005e50:	04c13c23          	sd	a2,88(sp)
    80005e54:	06d13023          	sd	a3,96(sp)
    80005e58:	06e13423          	sd	a4,104(sp)
    80005e5c:	06f13823          	sd	a5,112(sp)
    80005e60:	07013c23          	sd	a6,120(sp)
    80005e64:	09113023          	sd	a7,128(sp)
    80005e68:	09213423          	sd	s2,136(sp)
    80005e6c:	09313823          	sd	s3,144(sp)
    80005e70:	09413c23          	sd	s4,152(sp)
    80005e74:	0b513023          	sd	s5,160(sp)
    80005e78:	0b613423          	sd	s6,168(sp)
    80005e7c:	0b713823          	sd	s7,176(sp)
    80005e80:	0b813c23          	sd	s8,184(sp)
    80005e84:	0d913023          	sd	s9,192(sp)
    80005e88:	0da13423          	sd	s10,200(sp)
    80005e8c:	0db13823          	sd	s11,208(sp)
    80005e90:	0dc13c23          	sd	t3,216(sp)
    80005e94:	0fd13023          	sd	t4,224(sp)
    80005e98:	0fe13423          	sd	t5,232(sp)
    80005e9c:	0ff13823          	sd	t6,240(sp)
    80005ea0:	cc9ff0ef          	jal	ra,80005b68 <kerneltrap>
    80005ea4:	00013083          	ld	ra,0(sp)
    80005ea8:	00813103          	ld	sp,8(sp)
    80005eac:	01013183          	ld	gp,16(sp)
    80005eb0:	02013283          	ld	t0,32(sp)
    80005eb4:	02813303          	ld	t1,40(sp)
    80005eb8:	03013383          	ld	t2,48(sp)
    80005ebc:	03813403          	ld	s0,56(sp)
    80005ec0:	04013483          	ld	s1,64(sp)
    80005ec4:	04813503          	ld	a0,72(sp)
    80005ec8:	05013583          	ld	a1,80(sp)
    80005ecc:	05813603          	ld	a2,88(sp)
    80005ed0:	06013683          	ld	a3,96(sp)
    80005ed4:	06813703          	ld	a4,104(sp)
    80005ed8:	07013783          	ld	a5,112(sp)
    80005edc:	07813803          	ld	a6,120(sp)
    80005ee0:	08013883          	ld	a7,128(sp)
    80005ee4:	08813903          	ld	s2,136(sp)
    80005ee8:	09013983          	ld	s3,144(sp)
    80005eec:	09813a03          	ld	s4,152(sp)
    80005ef0:	0a013a83          	ld	s5,160(sp)
    80005ef4:	0a813b03          	ld	s6,168(sp)
    80005ef8:	0b013b83          	ld	s7,176(sp)
    80005efc:	0b813c03          	ld	s8,184(sp)
    80005f00:	0c013c83          	ld	s9,192(sp)
    80005f04:	0c813d03          	ld	s10,200(sp)
    80005f08:	0d013d83          	ld	s11,208(sp)
    80005f0c:	0d813e03          	ld	t3,216(sp)
    80005f10:	0e013e83          	ld	t4,224(sp)
    80005f14:	0e813f03          	ld	t5,232(sp)
    80005f18:	0f013f83          	ld	t6,240(sp)
    80005f1c:	10010113          	addi	sp,sp,256
    80005f20:	10200073          	sret
    80005f24:	00000013          	nop
    80005f28:	00000013          	nop
    80005f2c:	00000013          	nop

0000000080005f30 <timervec>:
    80005f30:	34051573          	csrrw	a0,mscratch,a0
    80005f34:	00b53023          	sd	a1,0(a0)
    80005f38:	00c53423          	sd	a2,8(a0)
    80005f3c:	00d53823          	sd	a3,16(a0)
    80005f40:	01853583          	ld	a1,24(a0)
    80005f44:	02053603          	ld	a2,32(a0)
    80005f48:	0005b683          	ld	a3,0(a1)
    80005f4c:	00c686b3          	add	a3,a3,a2
    80005f50:	00d5b023          	sd	a3,0(a1)
    80005f54:	00200593          	li	a1,2
    80005f58:	14459073          	csrw	sip,a1
    80005f5c:	01053683          	ld	a3,16(a0)
    80005f60:	00853603          	ld	a2,8(a0)
    80005f64:	00053583          	ld	a1,0(a0)
    80005f68:	34051573          	csrrw	a0,mscratch,a0
    80005f6c:	30200073          	mret

0000000080005f70 <plicinit>:
    80005f70:	ff010113          	addi	sp,sp,-16
    80005f74:	00813423          	sd	s0,8(sp)
    80005f78:	01010413          	addi	s0,sp,16
    80005f7c:	00813403          	ld	s0,8(sp)
    80005f80:	0c0007b7          	lui	a5,0xc000
    80005f84:	00100713          	li	a4,1
    80005f88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005f8c:	00e7a223          	sw	a4,4(a5)
    80005f90:	01010113          	addi	sp,sp,16
    80005f94:	00008067          	ret

0000000080005f98 <plicinithart>:
    80005f98:	ff010113          	addi	sp,sp,-16
    80005f9c:	00813023          	sd	s0,0(sp)
    80005fa0:	00113423          	sd	ra,8(sp)
    80005fa4:	01010413          	addi	s0,sp,16
    80005fa8:	00000097          	auipc	ra,0x0
    80005fac:	a40080e7          	jalr	-1472(ra) # 800059e8 <cpuid>
    80005fb0:	0085171b          	slliw	a4,a0,0x8
    80005fb4:	0c0027b7          	lui	a5,0xc002
    80005fb8:	00e787b3          	add	a5,a5,a4
    80005fbc:	40200713          	li	a4,1026
    80005fc0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005fc4:	00813083          	ld	ra,8(sp)
    80005fc8:	00013403          	ld	s0,0(sp)
    80005fcc:	00d5151b          	slliw	a0,a0,0xd
    80005fd0:	0c2017b7          	lui	a5,0xc201
    80005fd4:	00a78533          	add	a0,a5,a0
    80005fd8:	00052023          	sw	zero,0(a0)
    80005fdc:	01010113          	addi	sp,sp,16
    80005fe0:	00008067          	ret

0000000080005fe4 <plic_claim>:
    80005fe4:	ff010113          	addi	sp,sp,-16
    80005fe8:	00813023          	sd	s0,0(sp)
    80005fec:	00113423          	sd	ra,8(sp)
    80005ff0:	01010413          	addi	s0,sp,16
    80005ff4:	00000097          	auipc	ra,0x0
    80005ff8:	9f4080e7          	jalr	-1548(ra) # 800059e8 <cpuid>
    80005ffc:	00813083          	ld	ra,8(sp)
    80006000:	00013403          	ld	s0,0(sp)
    80006004:	00d5151b          	slliw	a0,a0,0xd
    80006008:	0c2017b7          	lui	a5,0xc201
    8000600c:	00a78533          	add	a0,a5,a0
    80006010:	00452503          	lw	a0,4(a0)
    80006014:	01010113          	addi	sp,sp,16
    80006018:	00008067          	ret

000000008000601c <plic_complete>:
    8000601c:	fe010113          	addi	sp,sp,-32
    80006020:	00813823          	sd	s0,16(sp)
    80006024:	00913423          	sd	s1,8(sp)
    80006028:	00113c23          	sd	ra,24(sp)
    8000602c:	02010413          	addi	s0,sp,32
    80006030:	00050493          	mv	s1,a0
    80006034:	00000097          	auipc	ra,0x0
    80006038:	9b4080e7          	jalr	-1612(ra) # 800059e8 <cpuid>
    8000603c:	01813083          	ld	ra,24(sp)
    80006040:	01013403          	ld	s0,16(sp)
    80006044:	00d5179b          	slliw	a5,a0,0xd
    80006048:	0c201737          	lui	a4,0xc201
    8000604c:	00f707b3          	add	a5,a4,a5
    80006050:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006054:	00813483          	ld	s1,8(sp)
    80006058:	02010113          	addi	sp,sp,32
    8000605c:	00008067          	ret

0000000080006060 <consolewrite>:
    80006060:	fb010113          	addi	sp,sp,-80
    80006064:	04813023          	sd	s0,64(sp)
    80006068:	04113423          	sd	ra,72(sp)
    8000606c:	02913c23          	sd	s1,56(sp)
    80006070:	03213823          	sd	s2,48(sp)
    80006074:	03313423          	sd	s3,40(sp)
    80006078:	03413023          	sd	s4,32(sp)
    8000607c:	01513c23          	sd	s5,24(sp)
    80006080:	05010413          	addi	s0,sp,80
    80006084:	06c05c63          	blez	a2,800060fc <consolewrite+0x9c>
    80006088:	00060993          	mv	s3,a2
    8000608c:	00050a13          	mv	s4,a0
    80006090:	00058493          	mv	s1,a1
    80006094:	00000913          	li	s2,0
    80006098:	fff00a93          	li	s5,-1
    8000609c:	01c0006f          	j	800060b8 <consolewrite+0x58>
    800060a0:	fbf44503          	lbu	a0,-65(s0)
    800060a4:	0019091b          	addiw	s2,s2,1
    800060a8:	00148493          	addi	s1,s1,1
    800060ac:	00001097          	auipc	ra,0x1
    800060b0:	a9c080e7          	jalr	-1380(ra) # 80006b48 <uartputc>
    800060b4:	03298063          	beq	s3,s2,800060d4 <consolewrite+0x74>
    800060b8:	00048613          	mv	a2,s1
    800060bc:	00100693          	li	a3,1
    800060c0:	000a0593          	mv	a1,s4
    800060c4:	fbf40513          	addi	a0,s0,-65
    800060c8:	00000097          	auipc	ra,0x0
    800060cc:	9d8080e7          	jalr	-1576(ra) # 80005aa0 <either_copyin>
    800060d0:	fd5518e3          	bne	a0,s5,800060a0 <consolewrite+0x40>
    800060d4:	04813083          	ld	ra,72(sp)
    800060d8:	04013403          	ld	s0,64(sp)
    800060dc:	03813483          	ld	s1,56(sp)
    800060e0:	02813983          	ld	s3,40(sp)
    800060e4:	02013a03          	ld	s4,32(sp)
    800060e8:	01813a83          	ld	s5,24(sp)
    800060ec:	00090513          	mv	a0,s2
    800060f0:	03013903          	ld	s2,48(sp)
    800060f4:	05010113          	addi	sp,sp,80
    800060f8:	00008067          	ret
    800060fc:	00000913          	li	s2,0
    80006100:	fd5ff06f          	j	800060d4 <consolewrite+0x74>

0000000080006104 <consoleread>:
    80006104:	f9010113          	addi	sp,sp,-112
    80006108:	06813023          	sd	s0,96(sp)
    8000610c:	04913c23          	sd	s1,88(sp)
    80006110:	05213823          	sd	s2,80(sp)
    80006114:	05313423          	sd	s3,72(sp)
    80006118:	05413023          	sd	s4,64(sp)
    8000611c:	03513c23          	sd	s5,56(sp)
    80006120:	03613823          	sd	s6,48(sp)
    80006124:	03713423          	sd	s7,40(sp)
    80006128:	03813023          	sd	s8,32(sp)
    8000612c:	06113423          	sd	ra,104(sp)
    80006130:	01913c23          	sd	s9,24(sp)
    80006134:	07010413          	addi	s0,sp,112
    80006138:	00060b93          	mv	s7,a2
    8000613c:	00050913          	mv	s2,a0
    80006140:	00058c13          	mv	s8,a1
    80006144:	00060b1b          	sext.w	s6,a2
    80006148:	00005497          	auipc	s1,0x5
    8000614c:	36048493          	addi	s1,s1,864 # 8000b4a8 <cons>
    80006150:	00400993          	li	s3,4
    80006154:	fff00a13          	li	s4,-1
    80006158:	00a00a93          	li	s5,10
    8000615c:	05705e63          	blez	s7,800061b8 <consoleread+0xb4>
    80006160:	09c4a703          	lw	a4,156(s1)
    80006164:	0984a783          	lw	a5,152(s1)
    80006168:	0007071b          	sext.w	a4,a4
    8000616c:	08e78463          	beq	a5,a4,800061f4 <consoleread+0xf0>
    80006170:	07f7f713          	andi	a4,a5,127
    80006174:	00e48733          	add	a4,s1,a4
    80006178:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000617c:	0017869b          	addiw	a3,a5,1
    80006180:	08d4ac23          	sw	a3,152(s1)
    80006184:	00070c9b          	sext.w	s9,a4
    80006188:	0b370663          	beq	a4,s3,80006234 <consoleread+0x130>
    8000618c:	00100693          	li	a3,1
    80006190:	f9f40613          	addi	a2,s0,-97
    80006194:	000c0593          	mv	a1,s8
    80006198:	00090513          	mv	a0,s2
    8000619c:	f8e40fa3          	sb	a4,-97(s0)
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	8b4080e7          	jalr	-1868(ra) # 80005a54 <either_copyout>
    800061a8:	01450863          	beq	a0,s4,800061b8 <consoleread+0xb4>
    800061ac:	001c0c13          	addi	s8,s8,1
    800061b0:	fffb8b9b          	addiw	s7,s7,-1
    800061b4:	fb5c94e3          	bne	s9,s5,8000615c <consoleread+0x58>
    800061b8:	000b851b          	sext.w	a0,s7
    800061bc:	06813083          	ld	ra,104(sp)
    800061c0:	06013403          	ld	s0,96(sp)
    800061c4:	05813483          	ld	s1,88(sp)
    800061c8:	05013903          	ld	s2,80(sp)
    800061cc:	04813983          	ld	s3,72(sp)
    800061d0:	04013a03          	ld	s4,64(sp)
    800061d4:	03813a83          	ld	s5,56(sp)
    800061d8:	02813b83          	ld	s7,40(sp)
    800061dc:	02013c03          	ld	s8,32(sp)
    800061e0:	01813c83          	ld	s9,24(sp)
    800061e4:	40ab053b          	subw	a0,s6,a0
    800061e8:	03013b03          	ld	s6,48(sp)
    800061ec:	07010113          	addi	sp,sp,112
    800061f0:	00008067          	ret
    800061f4:	00001097          	auipc	ra,0x1
    800061f8:	1d8080e7          	jalr	472(ra) # 800073cc <push_on>
    800061fc:	0984a703          	lw	a4,152(s1)
    80006200:	09c4a783          	lw	a5,156(s1)
    80006204:	0007879b          	sext.w	a5,a5
    80006208:	fef70ce3          	beq	a4,a5,80006200 <consoleread+0xfc>
    8000620c:	00001097          	auipc	ra,0x1
    80006210:	234080e7          	jalr	564(ra) # 80007440 <pop_on>
    80006214:	0984a783          	lw	a5,152(s1)
    80006218:	07f7f713          	andi	a4,a5,127
    8000621c:	00e48733          	add	a4,s1,a4
    80006220:	01874703          	lbu	a4,24(a4)
    80006224:	0017869b          	addiw	a3,a5,1
    80006228:	08d4ac23          	sw	a3,152(s1)
    8000622c:	00070c9b          	sext.w	s9,a4
    80006230:	f5371ee3          	bne	a4,s3,8000618c <consoleread+0x88>
    80006234:	000b851b          	sext.w	a0,s7
    80006238:	f96bf2e3          	bgeu	s7,s6,800061bc <consoleread+0xb8>
    8000623c:	08f4ac23          	sw	a5,152(s1)
    80006240:	f7dff06f          	j	800061bc <consoleread+0xb8>

0000000080006244 <consputc>:
    80006244:	10000793          	li	a5,256
    80006248:	00f50663          	beq	a0,a5,80006254 <consputc+0x10>
    8000624c:	00001317          	auipc	t1,0x1
    80006250:	9f430067          	jr	-1548(t1) # 80006c40 <uartputc_sync>
    80006254:	ff010113          	addi	sp,sp,-16
    80006258:	00113423          	sd	ra,8(sp)
    8000625c:	00813023          	sd	s0,0(sp)
    80006260:	01010413          	addi	s0,sp,16
    80006264:	00800513          	li	a0,8
    80006268:	00001097          	auipc	ra,0x1
    8000626c:	9d8080e7          	jalr	-1576(ra) # 80006c40 <uartputc_sync>
    80006270:	02000513          	li	a0,32
    80006274:	00001097          	auipc	ra,0x1
    80006278:	9cc080e7          	jalr	-1588(ra) # 80006c40 <uartputc_sync>
    8000627c:	00013403          	ld	s0,0(sp)
    80006280:	00813083          	ld	ra,8(sp)
    80006284:	00800513          	li	a0,8
    80006288:	01010113          	addi	sp,sp,16
    8000628c:	00001317          	auipc	t1,0x1
    80006290:	9b430067          	jr	-1612(t1) # 80006c40 <uartputc_sync>

0000000080006294 <consoleintr>:
    80006294:	fe010113          	addi	sp,sp,-32
    80006298:	00813823          	sd	s0,16(sp)
    8000629c:	00913423          	sd	s1,8(sp)
    800062a0:	01213023          	sd	s2,0(sp)
    800062a4:	00113c23          	sd	ra,24(sp)
    800062a8:	02010413          	addi	s0,sp,32
    800062ac:	00005917          	auipc	s2,0x5
    800062b0:	1fc90913          	addi	s2,s2,508 # 8000b4a8 <cons>
    800062b4:	00050493          	mv	s1,a0
    800062b8:	00090513          	mv	a0,s2
    800062bc:	00001097          	auipc	ra,0x1
    800062c0:	e40080e7          	jalr	-448(ra) # 800070fc <acquire>
    800062c4:	02048c63          	beqz	s1,800062fc <consoleintr+0x68>
    800062c8:	0a092783          	lw	a5,160(s2)
    800062cc:	09892703          	lw	a4,152(s2)
    800062d0:	07f00693          	li	a3,127
    800062d4:	40e7873b          	subw	a4,a5,a4
    800062d8:	02e6e263          	bltu	a3,a4,800062fc <consoleintr+0x68>
    800062dc:	00d00713          	li	a4,13
    800062e0:	04e48063          	beq	s1,a4,80006320 <consoleintr+0x8c>
    800062e4:	07f7f713          	andi	a4,a5,127
    800062e8:	00e90733          	add	a4,s2,a4
    800062ec:	0017879b          	addiw	a5,a5,1
    800062f0:	0af92023          	sw	a5,160(s2)
    800062f4:	00970c23          	sb	s1,24(a4)
    800062f8:	08f92e23          	sw	a5,156(s2)
    800062fc:	01013403          	ld	s0,16(sp)
    80006300:	01813083          	ld	ra,24(sp)
    80006304:	00813483          	ld	s1,8(sp)
    80006308:	00013903          	ld	s2,0(sp)
    8000630c:	00005517          	auipc	a0,0x5
    80006310:	19c50513          	addi	a0,a0,412 # 8000b4a8 <cons>
    80006314:	02010113          	addi	sp,sp,32
    80006318:	00001317          	auipc	t1,0x1
    8000631c:	eb030067          	jr	-336(t1) # 800071c8 <release>
    80006320:	00a00493          	li	s1,10
    80006324:	fc1ff06f          	j	800062e4 <consoleintr+0x50>

0000000080006328 <consoleinit>:
    80006328:	fe010113          	addi	sp,sp,-32
    8000632c:	00113c23          	sd	ra,24(sp)
    80006330:	00813823          	sd	s0,16(sp)
    80006334:	00913423          	sd	s1,8(sp)
    80006338:	02010413          	addi	s0,sp,32
    8000633c:	00005497          	auipc	s1,0x5
    80006340:	16c48493          	addi	s1,s1,364 # 8000b4a8 <cons>
    80006344:	00048513          	mv	a0,s1
    80006348:	00002597          	auipc	a1,0x2
    8000634c:	3b858593          	addi	a1,a1,952 # 80008700 <_ZZ13_printIntegermE6digits+0x5c0>
    80006350:	00001097          	auipc	ra,0x1
    80006354:	d88080e7          	jalr	-632(ra) # 800070d8 <initlock>
    80006358:	00000097          	auipc	ra,0x0
    8000635c:	7ac080e7          	jalr	1964(ra) # 80006b04 <uartinit>
    80006360:	01813083          	ld	ra,24(sp)
    80006364:	01013403          	ld	s0,16(sp)
    80006368:	00000797          	auipc	a5,0x0
    8000636c:	d9c78793          	addi	a5,a5,-612 # 80006104 <consoleread>
    80006370:	0af4bc23          	sd	a5,184(s1)
    80006374:	00000797          	auipc	a5,0x0
    80006378:	cec78793          	addi	a5,a5,-788 # 80006060 <consolewrite>
    8000637c:	0cf4b023          	sd	a5,192(s1)
    80006380:	00813483          	ld	s1,8(sp)
    80006384:	02010113          	addi	sp,sp,32
    80006388:	00008067          	ret

000000008000638c <console_read>:
    8000638c:	ff010113          	addi	sp,sp,-16
    80006390:	00813423          	sd	s0,8(sp)
    80006394:	01010413          	addi	s0,sp,16
    80006398:	00813403          	ld	s0,8(sp)
    8000639c:	00005317          	auipc	t1,0x5
    800063a0:	1c433303          	ld	t1,452(t1) # 8000b560 <devsw+0x10>
    800063a4:	01010113          	addi	sp,sp,16
    800063a8:	00030067          	jr	t1

00000000800063ac <console_write>:
    800063ac:	ff010113          	addi	sp,sp,-16
    800063b0:	00813423          	sd	s0,8(sp)
    800063b4:	01010413          	addi	s0,sp,16
    800063b8:	00813403          	ld	s0,8(sp)
    800063bc:	00005317          	auipc	t1,0x5
    800063c0:	1ac33303          	ld	t1,428(t1) # 8000b568 <devsw+0x18>
    800063c4:	01010113          	addi	sp,sp,16
    800063c8:	00030067          	jr	t1

00000000800063cc <panic>:
    800063cc:	fe010113          	addi	sp,sp,-32
    800063d0:	00113c23          	sd	ra,24(sp)
    800063d4:	00813823          	sd	s0,16(sp)
    800063d8:	00913423          	sd	s1,8(sp)
    800063dc:	02010413          	addi	s0,sp,32
    800063e0:	00050493          	mv	s1,a0
    800063e4:	00002517          	auipc	a0,0x2
    800063e8:	32450513          	addi	a0,a0,804 # 80008708 <_ZZ13_printIntegermE6digits+0x5c8>
    800063ec:	00005797          	auipc	a5,0x5
    800063f0:	2007ae23          	sw	zero,540(a5) # 8000b608 <pr+0x18>
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	034080e7          	jalr	52(ra) # 80006428 <__printf>
    800063fc:	00048513          	mv	a0,s1
    80006400:	00000097          	auipc	ra,0x0
    80006404:	028080e7          	jalr	40(ra) # 80006428 <__printf>
    80006408:	00002517          	auipc	a0,0x2
    8000640c:	08850513          	addi	a0,a0,136 # 80008490 <_ZZ13_printIntegermE6digits+0x350>
    80006410:	00000097          	auipc	ra,0x0
    80006414:	018080e7          	jalr	24(ra) # 80006428 <__printf>
    80006418:	00100793          	li	a5,1
    8000641c:	00004717          	auipc	a4,0x4
    80006420:	f0f72e23          	sw	a5,-228(a4) # 8000a338 <panicked>
    80006424:	0000006f          	j	80006424 <panic+0x58>

0000000080006428 <__printf>:
    80006428:	f3010113          	addi	sp,sp,-208
    8000642c:	08813023          	sd	s0,128(sp)
    80006430:	07313423          	sd	s3,104(sp)
    80006434:	09010413          	addi	s0,sp,144
    80006438:	05813023          	sd	s8,64(sp)
    8000643c:	08113423          	sd	ra,136(sp)
    80006440:	06913c23          	sd	s1,120(sp)
    80006444:	07213823          	sd	s2,112(sp)
    80006448:	07413023          	sd	s4,96(sp)
    8000644c:	05513c23          	sd	s5,88(sp)
    80006450:	05613823          	sd	s6,80(sp)
    80006454:	05713423          	sd	s7,72(sp)
    80006458:	03913c23          	sd	s9,56(sp)
    8000645c:	03a13823          	sd	s10,48(sp)
    80006460:	03b13423          	sd	s11,40(sp)
    80006464:	00005317          	auipc	t1,0x5
    80006468:	18c30313          	addi	t1,t1,396 # 8000b5f0 <pr>
    8000646c:	01832c03          	lw	s8,24(t1)
    80006470:	00b43423          	sd	a1,8(s0)
    80006474:	00c43823          	sd	a2,16(s0)
    80006478:	00d43c23          	sd	a3,24(s0)
    8000647c:	02e43023          	sd	a4,32(s0)
    80006480:	02f43423          	sd	a5,40(s0)
    80006484:	03043823          	sd	a6,48(s0)
    80006488:	03143c23          	sd	a7,56(s0)
    8000648c:	00050993          	mv	s3,a0
    80006490:	4a0c1663          	bnez	s8,8000693c <__printf+0x514>
    80006494:	60098c63          	beqz	s3,80006aac <__printf+0x684>
    80006498:	0009c503          	lbu	a0,0(s3)
    8000649c:	00840793          	addi	a5,s0,8
    800064a0:	f6f43c23          	sd	a5,-136(s0)
    800064a4:	00000493          	li	s1,0
    800064a8:	22050063          	beqz	a0,800066c8 <__printf+0x2a0>
    800064ac:	00002a37          	lui	s4,0x2
    800064b0:	00018ab7          	lui	s5,0x18
    800064b4:	000f4b37          	lui	s6,0xf4
    800064b8:	00989bb7          	lui	s7,0x989
    800064bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800064c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800064c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800064c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800064cc:	00148c9b          	addiw	s9,s1,1
    800064d0:	02500793          	li	a5,37
    800064d4:	01998933          	add	s2,s3,s9
    800064d8:	38f51263          	bne	a0,a5,8000685c <__printf+0x434>
    800064dc:	00094783          	lbu	a5,0(s2)
    800064e0:	00078c9b          	sext.w	s9,a5
    800064e4:	1e078263          	beqz	a5,800066c8 <__printf+0x2a0>
    800064e8:	0024849b          	addiw	s1,s1,2
    800064ec:	07000713          	li	a4,112
    800064f0:	00998933          	add	s2,s3,s1
    800064f4:	38e78a63          	beq	a5,a4,80006888 <__printf+0x460>
    800064f8:	20f76863          	bltu	a4,a5,80006708 <__printf+0x2e0>
    800064fc:	42a78863          	beq	a5,a0,8000692c <__printf+0x504>
    80006500:	06400713          	li	a4,100
    80006504:	40e79663          	bne	a5,a4,80006910 <__printf+0x4e8>
    80006508:	f7843783          	ld	a5,-136(s0)
    8000650c:	0007a603          	lw	a2,0(a5)
    80006510:	00878793          	addi	a5,a5,8
    80006514:	f6f43c23          	sd	a5,-136(s0)
    80006518:	42064a63          	bltz	a2,8000694c <__printf+0x524>
    8000651c:	00a00713          	li	a4,10
    80006520:	02e677bb          	remuw	a5,a2,a4
    80006524:	00002d97          	auipc	s11,0x2
    80006528:	20cd8d93          	addi	s11,s11,524 # 80008730 <digits>
    8000652c:	00900593          	li	a1,9
    80006530:	0006051b          	sext.w	a0,a2
    80006534:	00000c93          	li	s9,0
    80006538:	02079793          	slli	a5,a5,0x20
    8000653c:	0207d793          	srli	a5,a5,0x20
    80006540:	00fd87b3          	add	a5,s11,a5
    80006544:	0007c783          	lbu	a5,0(a5)
    80006548:	02e656bb          	divuw	a3,a2,a4
    8000654c:	f8f40023          	sb	a5,-128(s0)
    80006550:	14c5d863          	bge	a1,a2,800066a0 <__printf+0x278>
    80006554:	06300593          	li	a1,99
    80006558:	00100c93          	li	s9,1
    8000655c:	02e6f7bb          	remuw	a5,a3,a4
    80006560:	02079793          	slli	a5,a5,0x20
    80006564:	0207d793          	srli	a5,a5,0x20
    80006568:	00fd87b3          	add	a5,s11,a5
    8000656c:	0007c783          	lbu	a5,0(a5)
    80006570:	02e6d73b          	divuw	a4,a3,a4
    80006574:	f8f400a3          	sb	a5,-127(s0)
    80006578:	12a5f463          	bgeu	a1,a0,800066a0 <__printf+0x278>
    8000657c:	00a00693          	li	a3,10
    80006580:	00900593          	li	a1,9
    80006584:	02d777bb          	remuw	a5,a4,a3
    80006588:	02079793          	slli	a5,a5,0x20
    8000658c:	0207d793          	srli	a5,a5,0x20
    80006590:	00fd87b3          	add	a5,s11,a5
    80006594:	0007c503          	lbu	a0,0(a5)
    80006598:	02d757bb          	divuw	a5,a4,a3
    8000659c:	f8a40123          	sb	a0,-126(s0)
    800065a0:	48e5f263          	bgeu	a1,a4,80006a24 <__printf+0x5fc>
    800065a4:	06300513          	li	a0,99
    800065a8:	02d7f5bb          	remuw	a1,a5,a3
    800065ac:	02059593          	slli	a1,a1,0x20
    800065b0:	0205d593          	srli	a1,a1,0x20
    800065b4:	00bd85b3          	add	a1,s11,a1
    800065b8:	0005c583          	lbu	a1,0(a1)
    800065bc:	02d7d7bb          	divuw	a5,a5,a3
    800065c0:	f8b401a3          	sb	a1,-125(s0)
    800065c4:	48e57263          	bgeu	a0,a4,80006a48 <__printf+0x620>
    800065c8:	3e700513          	li	a0,999
    800065cc:	02d7f5bb          	remuw	a1,a5,a3
    800065d0:	02059593          	slli	a1,a1,0x20
    800065d4:	0205d593          	srli	a1,a1,0x20
    800065d8:	00bd85b3          	add	a1,s11,a1
    800065dc:	0005c583          	lbu	a1,0(a1)
    800065e0:	02d7d7bb          	divuw	a5,a5,a3
    800065e4:	f8b40223          	sb	a1,-124(s0)
    800065e8:	46e57663          	bgeu	a0,a4,80006a54 <__printf+0x62c>
    800065ec:	02d7f5bb          	remuw	a1,a5,a3
    800065f0:	02059593          	slli	a1,a1,0x20
    800065f4:	0205d593          	srli	a1,a1,0x20
    800065f8:	00bd85b3          	add	a1,s11,a1
    800065fc:	0005c583          	lbu	a1,0(a1)
    80006600:	02d7d7bb          	divuw	a5,a5,a3
    80006604:	f8b402a3          	sb	a1,-123(s0)
    80006608:	46ea7863          	bgeu	s4,a4,80006a78 <__printf+0x650>
    8000660c:	02d7f5bb          	remuw	a1,a5,a3
    80006610:	02059593          	slli	a1,a1,0x20
    80006614:	0205d593          	srli	a1,a1,0x20
    80006618:	00bd85b3          	add	a1,s11,a1
    8000661c:	0005c583          	lbu	a1,0(a1)
    80006620:	02d7d7bb          	divuw	a5,a5,a3
    80006624:	f8b40323          	sb	a1,-122(s0)
    80006628:	3eeaf863          	bgeu	s5,a4,80006a18 <__printf+0x5f0>
    8000662c:	02d7f5bb          	remuw	a1,a5,a3
    80006630:	02059593          	slli	a1,a1,0x20
    80006634:	0205d593          	srli	a1,a1,0x20
    80006638:	00bd85b3          	add	a1,s11,a1
    8000663c:	0005c583          	lbu	a1,0(a1)
    80006640:	02d7d7bb          	divuw	a5,a5,a3
    80006644:	f8b403a3          	sb	a1,-121(s0)
    80006648:	42eb7e63          	bgeu	s6,a4,80006a84 <__printf+0x65c>
    8000664c:	02d7f5bb          	remuw	a1,a5,a3
    80006650:	02059593          	slli	a1,a1,0x20
    80006654:	0205d593          	srli	a1,a1,0x20
    80006658:	00bd85b3          	add	a1,s11,a1
    8000665c:	0005c583          	lbu	a1,0(a1)
    80006660:	02d7d7bb          	divuw	a5,a5,a3
    80006664:	f8b40423          	sb	a1,-120(s0)
    80006668:	42ebfc63          	bgeu	s7,a4,80006aa0 <__printf+0x678>
    8000666c:	02079793          	slli	a5,a5,0x20
    80006670:	0207d793          	srli	a5,a5,0x20
    80006674:	00fd8db3          	add	s11,s11,a5
    80006678:	000dc703          	lbu	a4,0(s11)
    8000667c:	00a00793          	li	a5,10
    80006680:	00900c93          	li	s9,9
    80006684:	f8e404a3          	sb	a4,-119(s0)
    80006688:	00065c63          	bgez	a2,800066a0 <__printf+0x278>
    8000668c:	f9040713          	addi	a4,s0,-112
    80006690:	00f70733          	add	a4,a4,a5
    80006694:	02d00693          	li	a3,45
    80006698:	fed70823          	sb	a3,-16(a4)
    8000669c:	00078c93          	mv	s9,a5
    800066a0:	f8040793          	addi	a5,s0,-128
    800066a4:	01978cb3          	add	s9,a5,s9
    800066a8:	f7f40d13          	addi	s10,s0,-129
    800066ac:	000cc503          	lbu	a0,0(s9)
    800066b0:	fffc8c93          	addi	s9,s9,-1
    800066b4:	00000097          	auipc	ra,0x0
    800066b8:	b90080e7          	jalr	-1136(ra) # 80006244 <consputc>
    800066bc:	ffac98e3          	bne	s9,s10,800066ac <__printf+0x284>
    800066c0:	00094503          	lbu	a0,0(s2)
    800066c4:	e00514e3          	bnez	a0,800064cc <__printf+0xa4>
    800066c8:	1a0c1663          	bnez	s8,80006874 <__printf+0x44c>
    800066cc:	08813083          	ld	ra,136(sp)
    800066d0:	08013403          	ld	s0,128(sp)
    800066d4:	07813483          	ld	s1,120(sp)
    800066d8:	07013903          	ld	s2,112(sp)
    800066dc:	06813983          	ld	s3,104(sp)
    800066e0:	06013a03          	ld	s4,96(sp)
    800066e4:	05813a83          	ld	s5,88(sp)
    800066e8:	05013b03          	ld	s6,80(sp)
    800066ec:	04813b83          	ld	s7,72(sp)
    800066f0:	04013c03          	ld	s8,64(sp)
    800066f4:	03813c83          	ld	s9,56(sp)
    800066f8:	03013d03          	ld	s10,48(sp)
    800066fc:	02813d83          	ld	s11,40(sp)
    80006700:	0d010113          	addi	sp,sp,208
    80006704:	00008067          	ret
    80006708:	07300713          	li	a4,115
    8000670c:	1ce78a63          	beq	a5,a4,800068e0 <__printf+0x4b8>
    80006710:	07800713          	li	a4,120
    80006714:	1ee79e63          	bne	a5,a4,80006910 <__printf+0x4e8>
    80006718:	f7843783          	ld	a5,-136(s0)
    8000671c:	0007a703          	lw	a4,0(a5)
    80006720:	00878793          	addi	a5,a5,8
    80006724:	f6f43c23          	sd	a5,-136(s0)
    80006728:	28074263          	bltz	a4,800069ac <__printf+0x584>
    8000672c:	00002d97          	auipc	s11,0x2
    80006730:	004d8d93          	addi	s11,s11,4 # 80008730 <digits>
    80006734:	00f77793          	andi	a5,a4,15
    80006738:	00fd87b3          	add	a5,s11,a5
    8000673c:	0007c683          	lbu	a3,0(a5)
    80006740:	00f00613          	li	a2,15
    80006744:	0007079b          	sext.w	a5,a4
    80006748:	f8d40023          	sb	a3,-128(s0)
    8000674c:	0047559b          	srliw	a1,a4,0x4
    80006750:	0047569b          	srliw	a3,a4,0x4
    80006754:	00000c93          	li	s9,0
    80006758:	0ee65063          	bge	a2,a4,80006838 <__printf+0x410>
    8000675c:	00f6f693          	andi	a3,a3,15
    80006760:	00dd86b3          	add	a3,s11,a3
    80006764:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006768:	0087d79b          	srliw	a5,a5,0x8
    8000676c:	00100c93          	li	s9,1
    80006770:	f8d400a3          	sb	a3,-127(s0)
    80006774:	0cb67263          	bgeu	a2,a1,80006838 <__printf+0x410>
    80006778:	00f7f693          	andi	a3,a5,15
    8000677c:	00dd86b3          	add	a3,s11,a3
    80006780:	0006c583          	lbu	a1,0(a3)
    80006784:	00f00613          	li	a2,15
    80006788:	0047d69b          	srliw	a3,a5,0x4
    8000678c:	f8b40123          	sb	a1,-126(s0)
    80006790:	0047d593          	srli	a1,a5,0x4
    80006794:	28f67e63          	bgeu	a2,a5,80006a30 <__printf+0x608>
    80006798:	00f6f693          	andi	a3,a3,15
    8000679c:	00dd86b3          	add	a3,s11,a3
    800067a0:	0006c503          	lbu	a0,0(a3)
    800067a4:	0087d813          	srli	a6,a5,0x8
    800067a8:	0087d69b          	srliw	a3,a5,0x8
    800067ac:	f8a401a3          	sb	a0,-125(s0)
    800067b0:	28b67663          	bgeu	a2,a1,80006a3c <__printf+0x614>
    800067b4:	00f6f693          	andi	a3,a3,15
    800067b8:	00dd86b3          	add	a3,s11,a3
    800067bc:	0006c583          	lbu	a1,0(a3)
    800067c0:	00c7d513          	srli	a0,a5,0xc
    800067c4:	00c7d69b          	srliw	a3,a5,0xc
    800067c8:	f8b40223          	sb	a1,-124(s0)
    800067cc:	29067a63          	bgeu	a2,a6,80006a60 <__printf+0x638>
    800067d0:	00f6f693          	andi	a3,a3,15
    800067d4:	00dd86b3          	add	a3,s11,a3
    800067d8:	0006c583          	lbu	a1,0(a3)
    800067dc:	0107d813          	srli	a6,a5,0x10
    800067e0:	0107d69b          	srliw	a3,a5,0x10
    800067e4:	f8b402a3          	sb	a1,-123(s0)
    800067e8:	28a67263          	bgeu	a2,a0,80006a6c <__printf+0x644>
    800067ec:	00f6f693          	andi	a3,a3,15
    800067f0:	00dd86b3          	add	a3,s11,a3
    800067f4:	0006c683          	lbu	a3,0(a3)
    800067f8:	0147d79b          	srliw	a5,a5,0x14
    800067fc:	f8d40323          	sb	a3,-122(s0)
    80006800:	21067663          	bgeu	a2,a6,80006a0c <__printf+0x5e4>
    80006804:	02079793          	slli	a5,a5,0x20
    80006808:	0207d793          	srli	a5,a5,0x20
    8000680c:	00fd8db3          	add	s11,s11,a5
    80006810:	000dc683          	lbu	a3,0(s11)
    80006814:	00800793          	li	a5,8
    80006818:	00700c93          	li	s9,7
    8000681c:	f8d403a3          	sb	a3,-121(s0)
    80006820:	00075c63          	bgez	a4,80006838 <__printf+0x410>
    80006824:	f9040713          	addi	a4,s0,-112
    80006828:	00f70733          	add	a4,a4,a5
    8000682c:	02d00693          	li	a3,45
    80006830:	fed70823          	sb	a3,-16(a4)
    80006834:	00078c93          	mv	s9,a5
    80006838:	f8040793          	addi	a5,s0,-128
    8000683c:	01978cb3          	add	s9,a5,s9
    80006840:	f7f40d13          	addi	s10,s0,-129
    80006844:	000cc503          	lbu	a0,0(s9)
    80006848:	fffc8c93          	addi	s9,s9,-1
    8000684c:	00000097          	auipc	ra,0x0
    80006850:	9f8080e7          	jalr	-1544(ra) # 80006244 <consputc>
    80006854:	ff9d18e3          	bne	s10,s9,80006844 <__printf+0x41c>
    80006858:	0100006f          	j	80006868 <__printf+0x440>
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	9e8080e7          	jalr	-1560(ra) # 80006244 <consputc>
    80006864:	000c8493          	mv	s1,s9
    80006868:	00094503          	lbu	a0,0(s2)
    8000686c:	c60510e3          	bnez	a0,800064cc <__printf+0xa4>
    80006870:	e40c0ee3          	beqz	s8,800066cc <__printf+0x2a4>
    80006874:	00005517          	auipc	a0,0x5
    80006878:	d7c50513          	addi	a0,a0,-644 # 8000b5f0 <pr>
    8000687c:	00001097          	auipc	ra,0x1
    80006880:	94c080e7          	jalr	-1716(ra) # 800071c8 <release>
    80006884:	e49ff06f          	j	800066cc <__printf+0x2a4>
    80006888:	f7843783          	ld	a5,-136(s0)
    8000688c:	03000513          	li	a0,48
    80006890:	01000d13          	li	s10,16
    80006894:	00878713          	addi	a4,a5,8
    80006898:	0007bc83          	ld	s9,0(a5)
    8000689c:	f6e43c23          	sd	a4,-136(s0)
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	9a4080e7          	jalr	-1628(ra) # 80006244 <consputc>
    800068a8:	07800513          	li	a0,120
    800068ac:	00000097          	auipc	ra,0x0
    800068b0:	998080e7          	jalr	-1640(ra) # 80006244 <consputc>
    800068b4:	00002d97          	auipc	s11,0x2
    800068b8:	e7cd8d93          	addi	s11,s11,-388 # 80008730 <digits>
    800068bc:	03ccd793          	srli	a5,s9,0x3c
    800068c0:	00fd87b3          	add	a5,s11,a5
    800068c4:	0007c503          	lbu	a0,0(a5)
    800068c8:	fffd0d1b          	addiw	s10,s10,-1
    800068cc:	004c9c93          	slli	s9,s9,0x4
    800068d0:	00000097          	auipc	ra,0x0
    800068d4:	974080e7          	jalr	-1676(ra) # 80006244 <consputc>
    800068d8:	fe0d12e3          	bnez	s10,800068bc <__printf+0x494>
    800068dc:	f8dff06f          	j	80006868 <__printf+0x440>
    800068e0:	f7843783          	ld	a5,-136(s0)
    800068e4:	0007bc83          	ld	s9,0(a5)
    800068e8:	00878793          	addi	a5,a5,8
    800068ec:	f6f43c23          	sd	a5,-136(s0)
    800068f0:	000c9a63          	bnez	s9,80006904 <__printf+0x4dc>
    800068f4:	1080006f          	j	800069fc <__printf+0x5d4>
    800068f8:	001c8c93          	addi	s9,s9,1
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	948080e7          	jalr	-1720(ra) # 80006244 <consputc>
    80006904:	000cc503          	lbu	a0,0(s9)
    80006908:	fe0518e3          	bnez	a0,800068f8 <__printf+0x4d0>
    8000690c:	f5dff06f          	j	80006868 <__printf+0x440>
    80006910:	02500513          	li	a0,37
    80006914:	00000097          	auipc	ra,0x0
    80006918:	930080e7          	jalr	-1744(ra) # 80006244 <consputc>
    8000691c:	000c8513          	mv	a0,s9
    80006920:	00000097          	auipc	ra,0x0
    80006924:	924080e7          	jalr	-1756(ra) # 80006244 <consputc>
    80006928:	f41ff06f          	j	80006868 <__printf+0x440>
    8000692c:	02500513          	li	a0,37
    80006930:	00000097          	auipc	ra,0x0
    80006934:	914080e7          	jalr	-1772(ra) # 80006244 <consputc>
    80006938:	f31ff06f          	j	80006868 <__printf+0x440>
    8000693c:	00030513          	mv	a0,t1
    80006940:	00000097          	auipc	ra,0x0
    80006944:	7bc080e7          	jalr	1980(ra) # 800070fc <acquire>
    80006948:	b4dff06f          	j	80006494 <__printf+0x6c>
    8000694c:	40c0053b          	negw	a0,a2
    80006950:	00a00713          	li	a4,10
    80006954:	02e576bb          	remuw	a3,a0,a4
    80006958:	00002d97          	auipc	s11,0x2
    8000695c:	dd8d8d93          	addi	s11,s11,-552 # 80008730 <digits>
    80006960:	ff700593          	li	a1,-9
    80006964:	02069693          	slli	a3,a3,0x20
    80006968:	0206d693          	srli	a3,a3,0x20
    8000696c:	00dd86b3          	add	a3,s11,a3
    80006970:	0006c683          	lbu	a3,0(a3)
    80006974:	02e557bb          	divuw	a5,a0,a4
    80006978:	f8d40023          	sb	a3,-128(s0)
    8000697c:	10b65e63          	bge	a2,a1,80006a98 <__printf+0x670>
    80006980:	06300593          	li	a1,99
    80006984:	02e7f6bb          	remuw	a3,a5,a4
    80006988:	02069693          	slli	a3,a3,0x20
    8000698c:	0206d693          	srli	a3,a3,0x20
    80006990:	00dd86b3          	add	a3,s11,a3
    80006994:	0006c683          	lbu	a3,0(a3)
    80006998:	02e7d73b          	divuw	a4,a5,a4
    8000699c:	00200793          	li	a5,2
    800069a0:	f8d400a3          	sb	a3,-127(s0)
    800069a4:	bca5ece3          	bltu	a1,a0,8000657c <__printf+0x154>
    800069a8:	ce5ff06f          	j	8000668c <__printf+0x264>
    800069ac:	40e007bb          	negw	a5,a4
    800069b0:	00002d97          	auipc	s11,0x2
    800069b4:	d80d8d93          	addi	s11,s11,-640 # 80008730 <digits>
    800069b8:	00f7f693          	andi	a3,a5,15
    800069bc:	00dd86b3          	add	a3,s11,a3
    800069c0:	0006c583          	lbu	a1,0(a3)
    800069c4:	ff100613          	li	a2,-15
    800069c8:	0047d69b          	srliw	a3,a5,0x4
    800069cc:	f8b40023          	sb	a1,-128(s0)
    800069d0:	0047d59b          	srliw	a1,a5,0x4
    800069d4:	0ac75e63          	bge	a4,a2,80006a90 <__printf+0x668>
    800069d8:	00f6f693          	andi	a3,a3,15
    800069dc:	00dd86b3          	add	a3,s11,a3
    800069e0:	0006c603          	lbu	a2,0(a3)
    800069e4:	00f00693          	li	a3,15
    800069e8:	0087d79b          	srliw	a5,a5,0x8
    800069ec:	f8c400a3          	sb	a2,-127(s0)
    800069f0:	d8b6e4e3          	bltu	a3,a1,80006778 <__printf+0x350>
    800069f4:	00200793          	li	a5,2
    800069f8:	e2dff06f          	j	80006824 <__printf+0x3fc>
    800069fc:	00002c97          	auipc	s9,0x2
    80006a00:	d14c8c93          	addi	s9,s9,-748 # 80008710 <_ZZ13_printIntegermE6digits+0x5d0>
    80006a04:	02800513          	li	a0,40
    80006a08:	ef1ff06f          	j	800068f8 <__printf+0x4d0>
    80006a0c:	00700793          	li	a5,7
    80006a10:	00600c93          	li	s9,6
    80006a14:	e0dff06f          	j	80006820 <__printf+0x3f8>
    80006a18:	00700793          	li	a5,7
    80006a1c:	00600c93          	li	s9,6
    80006a20:	c69ff06f          	j	80006688 <__printf+0x260>
    80006a24:	00300793          	li	a5,3
    80006a28:	00200c93          	li	s9,2
    80006a2c:	c5dff06f          	j	80006688 <__printf+0x260>
    80006a30:	00300793          	li	a5,3
    80006a34:	00200c93          	li	s9,2
    80006a38:	de9ff06f          	j	80006820 <__printf+0x3f8>
    80006a3c:	00400793          	li	a5,4
    80006a40:	00300c93          	li	s9,3
    80006a44:	dddff06f          	j	80006820 <__printf+0x3f8>
    80006a48:	00400793          	li	a5,4
    80006a4c:	00300c93          	li	s9,3
    80006a50:	c39ff06f          	j	80006688 <__printf+0x260>
    80006a54:	00500793          	li	a5,5
    80006a58:	00400c93          	li	s9,4
    80006a5c:	c2dff06f          	j	80006688 <__printf+0x260>
    80006a60:	00500793          	li	a5,5
    80006a64:	00400c93          	li	s9,4
    80006a68:	db9ff06f          	j	80006820 <__printf+0x3f8>
    80006a6c:	00600793          	li	a5,6
    80006a70:	00500c93          	li	s9,5
    80006a74:	dadff06f          	j	80006820 <__printf+0x3f8>
    80006a78:	00600793          	li	a5,6
    80006a7c:	00500c93          	li	s9,5
    80006a80:	c09ff06f          	j	80006688 <__printf+0x260>
    80006a84:	00800793          	li	a5,8
    80006a88:	00700c93          	li	s9,7
    80006a8c:	bfdff06f          	j	80006688 <__printf+0x260>
    80006a90:	00100793          	li	a5,1
    80006a94:	d91ff06f          	j	80006824 <__printf+0x3fc>
    80006a98:	00100793          	li	a5,1
    80006a9c:	bf1ff06f          	j	8000668c <__printf+0x264>
    80006aa0:	00900793          	li	a5,9
    80006aa4:	00800c93          	li	s9,8
    80006aa8:	be1ff06f          	j	80006688 <__printf+0x260>
    80006aac:	00002517          	auipc	a0,0x2
    80006ab0:	c6c50513          	addi	a0,a0,-916 # 80008718 <_ZZ13_printIntegermE6digits+0x5d8>
    80006ab4:	00000097          	auipc	ra,0x0
    80006ab8:	918080e7          	jalr	-1768(ra) # 800063cc <panic>

0000000080006abc <printfinit>:
    80006abc:	fe010113          	addi	sp,sp,-32
    80006ac0:	00813823          	sd	s0,16(sp)
    80006ac4:	00913423          	sd	s1,8(sp)
    80006ac8:	00113c23          	sd	ra,24(sp)
    80006acc:	02010413          	addi	s0,sp,32
    80006ad0:	00005497          	auipc	s1,0x5
    80006ad4:	b2048493          	addi	s1,s1,-1248 # 8000b5f0 <pr>
    80006ad8:	00048513          	mv	a0,s1
    80006adc:	00002597          	auipc	a1,0x2
    80006ae0:	c4c58593          	addi	a1,a1,-948 # 80008728 <_ZZ13_printIntegermE6digits+0x5e8>
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	5f4080e7          	jalr	1524(ra) # 800070d8 <initlock>
    80006aec:	01813083          	ld	ra,24(sp)
    80006af0:	01013403          	ld	s0,16(sp)
    80006af4:	0004ac23          	sw	zero,24(s1)
    80006af8:	00813483          	ld	s1,8(sp)
    80006afc:	02010113          	addi	sp,sp,32
    80006b00:	00008067          	ret

0000000080006b04 <uartinit>:
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00813423          	sd	s0,8(sp)
    80006b0c:	01010413          	addi	s0,sp,16
    80006b10:	100007b7          	lui	a5,0x10000
    80006b14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006b18:	f8000713          	li	a4,-128
    80006b1c:	00e781a3          	sb	a4,3(a5)
    80006b20:	00300713          	li	a4,3
    80006b24:	00e78023          	sb	a4,0(a5)
    80006b28:	000780a3          	sb	zero,1(a5)
    80006b2c:	00e781a3          	sb	a4,3(a5)
    80006b30:	00700693          	li	a3,7
    80006b34:	00d78123          	sb	a3,2(a5)
    80006b38:	00e780a3          	sb	a4,1(a5)
    80006b3c:	00813403          	ld	s0,8(sp)
    80006b40:	01010113          	addi	sp,sp,16
    80006b44:	00008067          	ret

0000000080006b48 <uartputc>:
    80006b48:	00003797          	auipc	a5,0x3
    80006b4c:	7f07a783          	lw	a5,2032(a5) # 8000a338 <panicked>
    80006b50:	00078463          	beqz	a5,80006b58 <uartputc+0x10>
    80006b54:	0000006f          	j	80006b54 <uartputc+0xc>
    80006b58:	fd010113          	addi	sp,sp,-48
    80006b5c:	02813023          	sd	s0,32(sp)
    80006b60:	00913c23          	sd	s1,24(sp)
    80006b64:	01213823          	sd	s2,16(sp)
    80006b68:	01313423          	sd	s3,8(sp)
    80006b6c:	02113423          	sd	ra,40(sp)
    80006b70:	03010413          	addi	s0,sp,48
    80006b74:	00003917          	auipc	s2,0x3
    80006b78:	7cc90913          	addi	s2,s2,1996 # 8000a340 <uart_tx_r>
    80006b7c:	00093783          	ld	a5,0(s2)
    80006b80:	00003497          	auipc	s1,0x3
    80006b84:	7c848493          	addi	s1,s1,1992 # 8000a348 <uart_tx_w>
    80006b88:	0004b703          	ld	a4,0(s1)
    80006b8c:	02078693          	addi	a3,a5,32
    80006b90:	00050993          	mv	s3,a0
    80006b94:	02e69c63          	bne	a3,a4,80006bcc <uartputc+0x84>
    80006b98:	00001097          	auipc	ra,0x1
    80006b9c:	834080e7          	jalr	-1996(ra) # 800073cc <push_on>
    80006ba0:	00093783          	ld	a5,0(s2)
    80006ba4:	0004b703          	ld	a4,0(s1)
    80006ba8:	02078793          	addi	a5,a5,32
    80006bac:	00e79463          	bne	a5,a4,80006bb4 <uartputc+0x6c>
    80006bb0:	0000006f          	j	80006bb0 <uartputc+0x68>
    80006bb4:	00001097          	auipc	ra,0x1
    80006bb8:	88c080e7          	jalr	-1908(ra) # 80007440 <pop_on>
    80006bbc:	00093783          	ld	a5,0(s2)
    80006bc0:	0004b703          	ld	a4,0(s1)
    80006bc4:	02078693          	addi	a3,a5,32
    80006bc8:	fce688e3          	beq	a3,a4,80006b98 <uartputc+0x50>
    80006bcc:	01f77693          	andi	a3,a4,31
    80006bd0:	00005597          	auipc	a1,0x5
    80006bd4:	a4058593          	addi	a1,a1,-1472 # 8000b610 <uart_tx_buf>
    80006bd8:	00d586b3          	add	a3,a1,a3
    80006bdc:	00170713          	addi	a4,a4,1
    80006be0:	01368023          	sb	s3,0(a3)
    80006be4:	00e4b023          	sd	a4,0(s1)
    80006be8:	10000637          	lui	a2,0x10000
    80006bec:	02f71063          	bne	a4,a5,80006c0c <uartputc+0xc4>
    80006bf0:	0340006f          	j	80006c24 <uartputc+0xdc>
    80006bf4:	00074703          	lbu	a4,0(a4)
    80006bf8:	00f93023          	sd	a5,0(s2)
    80006bfc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006c00:	00093783          	ld	a5,0(s2)
    80006c04:	0004b703          	ld	a4,0(s1)
    80006c08:	00f70e63          	beq	a4,a5,80006c24 <uartputc+0xdc>
    80006c0c:	00564683          	lbu	a3,5(a2)
    80006c10:	01f7f713          	andi	a4,a5,31
    80006c14:	00e58733          	add	a4,a1,a4
    80006c18:	0206f693          	andi	a3,a3,32
    80006c1c:	00178793          	addi	a5,a5,1
    80006c20:	fc069ae3          	bnez	a3,80006bf4 <uartputc+0xac>
    80006c24:	02813083          	ld	ra,40(sp)
    80006c28:	02013403          	ld	s0,32(sp)
    80006c2c:	01813483          	ld	s1,24(sp)
    80006c30:	01013903          	ld	s2,16(sp)
    80006c34:	00813983          	ld	s3,8(sp)
    80006c38:	03010113          	addi	sp,sp,48
    80006c3c:	00008067          	ret

0000000080006c40 <uartputc_sync>:
    80006c40:	ff010113          	addi	sp,sp,-16
    80006c44:	00813423          	sd	s0,8(sp)
    80006c48:	01010413          	addi	s0,sp,16
    80006c4c:	00003717          	auipc	a4,0x3
    80006c50:	6ec72703          	lw	a4,1772(a4) # 8000a338 <panicked>
    80006c54:	02071663          	bnez	a4,80006c80 <uartputc_sync+0x40>
    80006c58:	00050793          	mv	a5,a0
    80006c5c:	100006b7          	lui	a3,0x10000
    80006c60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006c64:	02077713          	andi	a4,a4,32
    80006c68:	fe070ce3          	beqz	a4,80006c60 <uartputc_sync+0x20>
    80006c6c:	0ff7f793          	andi	a5,a5,255
    80006c70:	00f68023          	sb	a5,0(a3)
    80006c74:	00813403          	ld	s0,8(sp)
    80006c78:	01010113          	addi	sp,sp,16
    80006c7c:	00008067          	ret
    80006c80:	0000006f          	j	80006c80 <uartputc_sync+0x40>

0000000080006c84 <uartstart>:
    80006c84:	ff010113          	addi	sp,sp,-16
    80006c88:	00813423          	sd	s0,8(sp)
    80006c8c:	01010413          	addi	s0,sp,16
    80006c90:	00003617          	auipc	a2,0x3
    80006c94:	6b060613          	addi	a2,a2,1712 # 8000a340 <uart_tx_r>
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	6b050513          	addi	a0,a0,1712 # 8000a348 <uart_tx_w>
    80006ca0:	00063783          	ld	a5,0(a2)
    80006ca4:	00053703          	ld	a4,0(a0)
    80006ca8:	04f70263          	beq	a4,a5,80006cec <uartstart+0x68>
    80006cac:	100005b7          	lui	a1,0x10000
    80006cb0:	00005817          	auipc	a6,0x5
    80006cb4:	96080813          	addi	a6,a6,-1696 # 8000b610 <uart_tx_buf>
    80006cb8:	01c0006f          	j	80006cd4 <uartstart+0x50>
    80006cbc:	0006c703          	lbu	a4,0(a3)
    80006cc0:	00f63023          	sd	a5,0(a2)
    80006cc4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006cc8:	00063783          	ld	a5,0(a2)
    80006ccc:	00053703          	ld	a4,0(a0)
    80006cd0:	00f70e63          	beq	a4,a5,80006cec <uartstart+0x68>
    80006cd4:	01f7f713          	andi	a4,a5,31
    80006cd8:	00e806b3          	add	a3,a6,a4
    80006cdc:	0055c703          	lbu	a4,5(a1)
    80006ce0:	00178793          	addi	a5,a5,1
    80006ce4:	02077713          	andi	a4,a4,32
    80006ce8:	fc071ae3          	bnez	a4,80006cbc <uartstart+0x38>
    80006cec:	00813403          	ld	s0,8(sp)
    80006cf0:	01010113          	addi	sp,sp,16
    80006cf4:	00008067          	ret

0000000080006cf8 <uartgetc>:
    80006cf8:	ff010113          	addi	sp,sp,-16
    80006cfc:	00813423          	sd	s0,8(sp)
    80006d00:	01010413          	addi	s0,sp,16
    80006d04:	10000737          	lui	a4,0x10000
    80006d08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006d0c:	0017f793          	andi	a5,a5,1
    80006d10:	00078c63          	beqz	a5,80006d28 <uartgetc+0x30>
    80006d14:	00074503          	lbu	a0,0(a4)
    80006d18:	0ff57513          	andi	a0,a0,255
    80006d1c:	00813403          	ld	s0,8(sp)
    80006d20:	01010113          	addi	sp,sp,16
    80006d24:	00008067          	ret
    80006d28:	fff00513          	li	a0,-1
    80006d2c:	ff1ff06f          	j	80006d1c <uartgetc+0x24>

0000000080006d30 <uartintr>:
    80006d30:	100007b7          	lui	a5,0x10000
    80006d34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006d38:	0017f793          	andi	a5,a5,1
    80006d3c:	0a078463          	beqz	a5,80006de4 <uartintr+0xb4>
    80006d40:	fe010113          	addi	sp,sp,-32
    80006d44:	00813823          	sd	s0,16(sp)
    80006d48:	00913423          	sd	s1,8(sp)
    80006d4c:	00113c23          	sd	ra,24(sp)
    80006d50:	02010413          	addi	s0,sp,32
    80006d54:	100004b7          	lui	s1,0x10000
    80006d58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006d5c:	0ff57513          	andi	a0,a0,255
    80006d60:	fffff097          	auipc	ra,0xfffff
    80006d64:	534080e7          	jalr	1332(ra) # 80006294 <consoleintr>
    80006d68:	0054c783          	lbu	a5,5(s1)
    80006d6c:	0017f793          	andi	a5,a5,1
    80006d70:	fe0794e3          	bnez	a5,80006d58 <uartintr+0x28>
    80006d74:	00003617          	auipc	a2,0x3
    80006d78:	5cc60613          	addi	a2,a2,1484 # 8000a340 <uart_tx_r>
    80006d7c:	00003517          	auipc	a0,0x3
    80006d80:	5cc50513          	addi	a0,a0,1484 # 8000a348 <uart_tx_w>
    80006d84:	00063783          	ld	a5,0(a2)
    80006d88:	00053703          	ld	a4,0(a0)
    80006d8c:	04f70263          	beq	a4,a5,80006dd0 <uartintr+0xa0>
    80006d90:	100005b7          	lui	a1,0x10000
    80006d94:	00005817          	auipc	a6,0x5
    80006d98:	87c80813          	addi	a6,a6,-1924 # 8000b610 <uart_tx_buf>
    80006d9c:	01c0006f          	j	80006db8 <uartintr+0x88>
    80006da0:	0006c703          	lbu	a4,0(a3)
    80006da4:	00f63023          	sd	a5,0(a2)
    80006da8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006dac:	00063783          	ld	a5,0(a2)
    80006db0:	00053703          	ld	a4,0(a0)
    80006db4:	00f70e63          	beq	a4,a5,80006dd0 <uartintr+0xa0>
    80006db8:	01f7f713          	andi	a4,a5,31
    80006dbc:	00e806b3          	add	a3,a6,a4
    80006dc0:	0055c703          	lbu	a4,5(a1)
    80006dc4:	00178793          	addi	a5,a5,1
    80006dc8:	02077713          	andi	a4,a4,32
    80006dcc:	fc071ae3          	bnez	a4,80006da0 <uartintr+0x70>
    80006dd0:	01813083          	ld	ra,24(sp)
    80006dd4:	01013403          	ld	s0,16(sp)
    80006dd8:	00813483          	ld	s1,8(sp)
    80006ddc:	02010113          	addi	sp,sp,32
    80006de0:	00008067          	ret
    80006de4:	00003617          	auipc	a2,0x3
    80006de8:	55c60613          	addi	a2,a2,1372 # 8000a340 <uart_tx_r>
    80006dec:	00003517          	auipc	a0,0x3
    80006df0:	55c50513          	addi	a0,a0,1372 # 8000a348 <uart_tx_w>
    80006df4:	00063783          	ld	a5,0(a2)
    80006df8:	00053703          	ld	a4,0(a0)
    80006dfc:	04f70263          	beq	a4,a5,80006e40 <uartintr+0x110>
    80006e00:	100005b7          	lui	a1,0x10000
    80006e04:	00005817          	auipc	a6,0x5
    80006e08:	80c80813          	addi	a6,a6,-2036 # 8000b610 <uart_tx_buf>
    80006e0c:	01c0006f          	j	80006e28 <uartintr+0xf8>
    80006e10:	0006c703          	lbu	a4,0(a3)
    80006e14:	00f63023          	sd	a5,0(a2)
    80006e18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e1c:	00063783          	ld	a5,0(a2)
    80006e20:	00053703          	ld	a4,0(a0)
    80006e24:	02f70063          	beq	a4,a5,80006e44 <uartintr+0x114>
    80006e28:	01f7f713          	andi	a4,a5,31
    80006e2c:	00e806b3          	add	a3,a6,a4
    80006e30:	0055c703          	lbu	a4,5(a1)
    80006e34:	00178793          	addi	a5,a5,1
    80006e38:	02077713          	andi	a4,a4,32
    80006e3c:	fc071ae3          	bnez	a4,80006e10 <uartintr+0xe0>
    80006e40:	00008067          	ret
    80006e44:	00008067          	ret

0000000080006e48 <kinit>:
    80006e48:	fc010113          	addi	sp,sp,-64
    80006e4c:	02913423          	sd	s1,40(sp)
    80006e50:	fffff7b7          	lui	a5,0xfffff
    80006e54:	00005497          	auipc	s1,0x5
    80006e58:	7eb48493          	addi	s1,s1,2027 # 8000c63f <end+0xfff>
    80006e5c:	02813823          	sd	s0,48(sp)
    80006e60:	01313c23          	sd	s3,24(sp)
    80006e64:	00f4f4b3          	and	s1,s1,a5
    80006e68:	02113c23          	sd	ra,56(sp)
    80006e6c:	03213023          	sd	s2,32(sp)
    80006e70:	01413823          	sd	s4,16(sp)
    80006e74:	01513423          	sd	s5,8(sp)
    80006e78:	04010413          	addi	s0,sp,64
    80006e7c:	000017b7          	lui	a5,0x1
    80006e80:	01100993          	li	s3,17
    80006e84:	00f487b3          	add	a5,s1,a5
    80006e88:	01b99993          	slli	s3,s3,0x1b
    80006e8c:	06f9e063          	bltu	s3,a5,80006eec <kinit+0xa4>
    80006e90:	00004a97          	auipc	s5,0x4
    80006e94:	7b0a8a93          	addi	s5,s5,1968 # 8000b640 <end>
    80006e98:	0754ec63          	bltu	s1,s5,80006f10 <kinit+0xc8>
    80006e9c:	0734fa63          	bgeu	s1,s3,80006f10 <kinit+0xc8>
    80006ea0:	00088a37          	lui	s4,0x88
    80006ea4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006ea8:	00003917          	auipc	s2,0x3
    80006eac:	4a890913          	addi	s2,s2,1192 # 8000a350 <kmem>
    80006eb0:	00ca1a13          	slli	s4,s4,0xc
    80006eb4:	0140006f          	j	80006ec8 <kinit+0x80>
    80006eb8:	000017b7          	lui	a5,0x1
    80006ebc:	00f484b3          	add	s1,s1,a5
    80006ec0:	0554e863          	bltu	s1,s5,80006f10 <kinit+0xc8>
    80006ec4:	0534f663          	bgeu	s1,s3,80006f10 <kinit+0xc8>
    80006ec8:	00001637          	lui	a2,0x1
    80006ecc:	00100593          	li	a1,1
    80006ed0:	00048513          	mv	a0,s1
    80006ed4:	00000097          	auipc	ra,0x0
    80006ed8:	5e4080e7          	jalr	1508(ra) # 800074b8 <__memset>
    80006edc:	00093783          	ld	a5,0(s2)
    80006ee0:	00f4b023          	sd	a5,0(s1)
    80006ee4:	00993023          	sd	s1,0(s2)
    80006ee8:	fd4498e3          	bne	s1,s4,80006eb8 <kinit+0x70>
    80006eec:	03813083          	ld	ra,56(sp)
    80006ef0:	03013403          	ld	s0,48(sp)
    80006ef4:	02813483          	ld	s1,40(sp)
    80006ef8:	02013903          	ld	s2,32(sp)
    80006efc:	01813983          	ld	s3,24(sp)
    80006f00:	01013a03          	ld	s4,16(sp)
    80006f04:	00813a83          	ld	s5,8(sp)
    80006f08:	04010113          	addi	sp,sp,64
    80006f0c:	00008067          	ret
    80006f10:	00002517          	auipc	a0,0x2
    80006f14:	83850513          	addi	a0,a0,-1992 # 80008748 <digits+0x18>
    80006f18:	fffff097          	auipc	ra,0xfffff
    80006f1c:	4b4080e7          	jalr	1204(ra) # 800063cc <panic>

0000000080006f20 <freerange>:
    80006f20:	fc010113          	addi	sp,sp,-64
    80006f24:	000017b7          	lui	a5,0x1
    80006f28:	02913423          	sd	s1,40(sp)
    80006f2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006f30:	009504b3          	add	s1,a0,s1
    80006f34:	fffff537          	lui	a0,0xfffff
    80006f38:	02813823          	sd	s0,48(sp)
    80006f3c:	02113c23          	sd	ra,56(sp)
    80006f40:	03213023          	sd	s2,32(sp)
    80006f44:	01313c23          	sd	s3,24(sp)
    80006f48:	01413823          	sd	s4,16(sp)
    80006f4c:	01513423          	sd	s5,8(sp)
    80006f50:	01613023          	sd	s6,0(sp)
    80006f54:	04010413          	addi	s0,sp,64
    80006f58:	00a4f4b3          	and	s1,s1,a0
    80006f5c:	00f487b3          	add	a5,s1,a5
    80006f60:	06f5e463          	bltu	a1,a5,80006fc8 <freerange+0xa8>
    80006f64:	00004a97          	auipc	s5,0x4
    80006f68:	6dca8a93          	addi	s5,s5,1756 # 8000b640 <end>
    80006f6c:	0954e263          	bltu	s1,s5,80006ff0 <freerange+0xd0>
    80006f70:	01100993          	li	s3,17
    80006f74:	01b99993          	slli	s3,s3,0x1b
    80006f78:	0734fc63          	bgeu	s1,s3,80006ff0 <freerange+0xd0>
    80006f7c:	00058a13          	mv	s4,a1
    80006f80:	00003917          	auipc	s2,0x3
    80006f84:	3d090913          	addi	s2,s2,976 # 8000a350 <kmem>
    80006f88:	00002b37          	lui	s6,0x2
    80006f8c:	0140006f          	j	80006fa0 <freerange+0x80>
    80006f90:	000017b7          	lui	a5,0x1
    80006f94:	00f484b3          	add	s1,s1,a5
    80006f98:	0554ec63          	bltu	s1,s5,80006ff0 <freerange+0xd0>
    80006f9c:	0534fa63          	bgeu	s1,s3,80006ff0 <freerange+0xd0>
    80006fa0:	00001637          	lui	a2,0x1
    80006fa4:	00100593          	li	a1,1
    80006fa8:	00048513          	mv	a0,s1
    80006fac:	00000097          	auipc	ra,0x0
    80006fb0:	50c080e7          	jalr	1292(ra) # 800074b8 <__memset>
    80006fb4:	00093703          	ld	a4,0(s2)
    80006fb8:	016487b3          	add	a5,s1,s6
    80006fbc:	00e4b023          	sd	a4,0(s1)
    80006fc0:	00993023          	sd	s1,0(s2)
    80006fc4:	fcfa76e3          	bgeu	s4,a5,80006f90 <freerange+0x70>
    80006fc8:	03813083          	ld	ra,56(sp)
    80006fcc:	03013403          	ld	s0,48(sp)
    80006fd0:	02813483          	ld	s1,40(sp)
    80006fd4:	02013903          	ld	s2,32(sp)
    80006fd8:	01813983          	ld	s3,24(sp)
    80006fdc:	01013a03          	ld	s4,16(sp)
    80006fe0:	00813a83          	ld	s5,8(sp)
    80006fe4:	00013b03          	ld	s6,0(sp)
    80006fe8:	04010113          	addi	sp,sp,64
    80006fec:	00008067          	ret
    80006ff0:	00001517          	auipc	a0,0x1
    80006ff4:	75850513          	addi	a0,a0,1880 # 80008748 <digits+0x18>
    80006ff8:	fffff097          	auipc	ra,0xfffff
    80006ffc:	3d4080e7          	jalr	980(ra) # 800063cc <panic>

0000000080007000 <kfree>:
    80007000:	fe010113          	addi	sp,sp,-32
    80007004:	00813823          	sd	s0,16(sp)
    80007008:	00113c23          	sd	ra,24(sp)
    8000700c:	00913423          	sd	s1,8(sp)
    80007010:	02010413          	addi	s0,sp,32
    80007014:	03451793          	slli	a5,a0,0x34
    80007018:	04079c63          	bnez	a5,80007070 <kfree+0x70>
    8000701c:	00004797          	auipc	a5,0x4
    80007020:	62478793          	addi	a5,a5,1572 # 8000b640 <end>
    80007024:	00050493          	mv	s1,a0
    80007028:	04f56463          	bltu	a0,a5,80007070 <kfree+0x70>
    8000702c:	01100793          	li	a5,17
    80007030:	01b79793          	slli	a5,a5,0x1b
    80007034:	02f57e63          	bgeu	a0,a5,80007070 <kfree+0x70>
    80007038:	00001637          	lui	a2,0x1
    8000703c:	00100593          	li	a1,1
    80007040:	00000097          	auipc	ra,0x0
    80007044:	478080e7          	jalr	1144(ra) # 800074b8 <__memset>
    80007048:	00003797          	auipc	a5,0x3
    8000704c:	30878793          	addi	a5,a5,776 # 8000a350 <kmem>
    80007050:	0007b703          	ld	a4,0(a5)
    80007054:	01813083          	ld	ra,24(sp)
    80007058:	01013403          	ld	s0,16(sp)
    8000705c:	00e4b023          	sd	a4,0(s1)
    80007060:	0097b023          	sd	s1,0(a5)
    80007064:	00813483          	ld	s1,8(sp)
    80007068:	02010113          	addi	sp,sp,32
    8000706c:	00008067          	ret
    80007070:	00001517          	auipc	a0,0x1
    80007074:	6d850513          	addi	a0,a0,1752 # 80008748 <digits+0x18>
    80007078:	fffff097          	auipc	ra,0xfffff
    8000707c:	354080e7          	jalr	852(ra) # 800063cc <panic>

0000000080007080 <kalloc>:
    80007080:	fe010113          	addi	sp,sp,-32
    80007084:	00813823          	sd	s0,16(sp)
    80007088:	00913423          	sd	s1,8(sp)
    8000708c:	00113c23          	sd	ra,24(sp)
    80007090:	02010413          	addi	s0,sp,32
    80007094:	00003797          	auipc	a5,0x3
    80007098:	2bc78793          	addi	a5,a5,700 # 8000a350 <kmem>
    8000709c:	0007b483          	ld	s1,0(a5)
    800070a0:	02048063          	beqz	s1,800070c0 <kalloc+0x40>
    800070a4:	0004b703          	ld	a4,0(s1)
    800070a8:	00001637          	lui	a2,0x1
    800070ac:	00500593          	li	a1,5
    800070b0:	00048513          	mv	a0,s1
    800070b4:	00e7b023          	sd	a4,0(a5)
    800070b8:	00000097          	auipc	ra,0x0
    800070bc:	400080e7          	jalr	1024(ra) # 800074b8 <__memset>
    800070c0:	01813083          	ld	ra,24(sp)
    800070c4:	01013403          	ld	s0,16(sp)
    800070c8:	00048513          	mv	a0,s1
    800070cc:	00813483          	ld	s1,8(sp)
    800070d0:	02010113          	addi	sp,sp,32
    800070d4:	00008067          	ret

00000000800070d8 <initlock>:
    800070d8:	ff010113          	addi	sp,sp,-16
    800070dc:	00813423          	sd	s0,8(sp)
    800070e0:	01010413          	addi	s0,sp,16
    800070e4:	00813403          	ld	s0,8(sp)
    800070e8:	00b53423          	sd	a1,8(a0)
    800070ec:	00052023          	sw	zero,0(a0)
    800070f0:	00053823          	sd	zero,16(a0)
    800070f4:	01010113          	addi	sp,sp,16
    800070f8:	00008067          	ret

00000000800070fc <acquire>:
    800070fc:	fe010113          	addi	sp,sp,-32
    80007100:	00813823          	sd	s0,16(sp)
    80007104:	00913423          	sd	s1,8(sp)
    80007108:	00113c23          	sd	ra,24(sp)
    8000710c:	01213023          	sd	s2,0(sp)
    80007110:	02010413          	addi	s0,sp,32
    80007114:	00050493          	mv	s1,a0
    80007118:	10002973          	csrr	s2,sstatus
    8000711c:	100027f3          	csrr	a5,sstatus
    80007120:	ffd7f793          	andi	a5,a5,-3
    80007124:	10079073          	csrw	sstatus,a5
    80007128:	fffff097          	auipc	ra,0xfffff
    8000712c:	8e0080e7          	jalr	-1824(ra) # 80005a08 <mycpu>
    80007130:	07852783          	lw	a5,120(a0)
    80007134:	06078e63          	beqz	a5,800071b0 <acquire+0xb4>
    80007138:	fffff097          	auipc	ra,0xfffff
    8000713c:	8d0080e7          	jalr	-1840(ra) # 80005a08 <mycpu>
    80007140:	07852783          	lw	a5,120(a0)
    80007144:	0004a703          	lw	a4,0(s1)
    80007148:	0017879b          	addiw	a5,a5,1
    8000714c:	06f52c23          	sw	a5,120(a0)
    80007150:	04071063          	bnez	a4,80007190 <acquire+0x94>
    80007154:	00100713          	li	a4,1
    80007158:	00070793          	mv	a5,a4
    8000715c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007160:	0007879b          	sext.w	a5,a5
    80007164:	fe079ae3          	bnez	a5,80007158 <acquire+0x5c>
    80007168:	0ff0000f          	fence
    8000716c:	fffff097          	auipc	ra,0xfffff
    80007170:	89c080e7          	jalr	-1892(ra) # 80005a08 <mycpu>
    80007174:	01813083          	ld	ra,24(sp)
    80007178:	01013403          	ld	s0,16(sp)
    8000717c:	00a4b823          	sd	a0,16(s1)
    80007180:	00013903          	ld	s2,0(sp)
    80007184:	00813483          	ld	s1,8(sp)
    80007188:	02010113          	addi	sp,sp,32
    8000718c:	00008067          	ret
    80007190:	0104b903          	ld	s2,16(s1)
    80007194:	fffff097          	auipc	ra,0xfffff
    80007198:	874080e7          	jalr	-1932(ra) # 80005a08 <mycpu>
    8000719c:	faa91ce3          	bne	s2,a0,80007154 <acquire+0x58>
    800071a0:	00001517          	auipc	a0,0x1
    800071a4:	5b050513          	addi	a0,a0,1456 # 80008750 <digits+0x20>
    800071a8:	fffff097          	auipc	ra,0xfffff
    800071ac:	224080e7          	jalr	548(ra) # 800063cc <panic>
    800071b0:	00195913          	srli	s2,s2,0x1
    800071b4:	fffff097          	auipc	ra,0xfffff
    800071b8:	854080e7          	jalr	-1964(ra) # 80005a08 <mycpu>
    800071bc:	00197913          	andi	s2,s2,1
    800071c0:	07252e23          	sw	s2,124(a0)
    800071c4:	f75ff06f          	j	80007138 <acquire+0x3c>

00000000800071c8 <release>:
    800071c8:	fe010113          	addi	sp,sp,-32
    800071cc:	00813823          	sd	s0,16(sp)
    800071d0:	00113c23          	sd	ra,24(sp)
    800071d4:	00913423          	sd	s1,8(sp)
    800071d8:	01213023          	sd	s2,0(sp)
    800071dc:	02010413          	addi	s0,sp,32
    800071e0:	00052783          	lw	a5,0(a0)
    800071e4:	00079a63          	bnez	a5,800071f8 <release+0x30>
    800071e8:	00001517          	auipc	a0,0x1
    800071ec:	57050513          	addi	a0,a0,1392 # 80008758 <digits+0x28>
    800071f0:	fffff097          	auipc	ra,0xfffff
    800071f4:	1dc080e7          	jalr	476(ra) # 800063cc <panic>
    800071f8:	01053903          	ld	s2,16(a0)
    800071fc:	00050493          	mv	s1,a0
    80007200:	fffff097          	auipc	ra,0xfffff
    80007204:	808080e7          	jalr	-2040(ra) # 80005a08 <mycpu>
    80007208:	fea910e3          	bne	s2,a0,800071e8 <release+0x20>
    8000720c:	0004b823          	sd	zero,16(s1)
    80007210:	0ff0000f          	fence
    80007214:	0f50000f          	fence	iorw,ow
    80007218:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000721c:	ffffe097          	auipc	ra,0xffffe
    80007220:	7ec080e7          	jalr	2028(ra) # 80005a08 <mycpu>
    80007224:	100027f3          	csrr	a5,sstatus
    80007228:	0027f793          	andi	a5,a5,2
    8000722c:	04079a63          	bnez	a5,80007280 <release+0xb8>
    80007230:	07852783          	lw	a5,120(a0)
    80007234:	02f05e63          	blez	a5,80007270 <release+0xa8>
    80007238:	fff7871b          	addiw	a4,a5,-1
    8000723c:	06e52c23          	sw	a4,120(a0)
    80007240:	00071c63          	bnez	a4,80007258 <release+0x90>
    80007244:	07c52783          	lw	a5,124(a0)
    80007248:	00078863          	beqz	a5,80007258 <release+0x90>
    8000724c:	100027f3          	csrr	a5,sstatus
    80007250:	0027e793          	ori	a5,a5,2
    80007254:	10079073          	csrw	sstatus,a5
    80007258:	01813083          	ld	ra,24(sp)
    8000725c:	01013403          	ld	s0,16(sp)
    80007260:	00813483          	ld	s1,8(sp)
    80007264:	00013903          	ld	s2,0(sp)
    80007268:	02010113          	addi	sp,sp,32
    8000726c:	00008067          	ret
    80007270:	00001517          	auipc	a0,0x1
    80007274:	50850513          	addi	a0,a0,1288 # 80008778 <digits+0x48>
    80007278:	fffff097          	auipc	ra,0xfffff
    8000727c:	154080e7          	jalr	340(ra) # 800063cc <panic>
    80007280:	00001517          	auipc	a0,0x1
    80007284:	4e050513          	addi	a0,a0,1248 # 80008760 <digits+0x30>
    80007288:	fffff097          	auipc	ra,0xfffff
    8000728c:	144080e7          	jalr	324(ra) # 800063cc <panic>

0000000080007290 <holding>:
    80007290:	00052783          	lw	a5,0(a0)
    80007294:	00079663          	bnez	a5,800072a0 <holding+0x10>
    80007298:	00000513          	li	a0,0
    8000729c:	00008067          	ret
    800072a0:	fe010113          	addi	sp,sp,-32
    800072a4:	00813823          	sd	s0,16(sp)
    800072a8:	00913423          	sd	s1,8(sp)
    800072ac:	00113c23          	sd	ra,24(sp)
    800072b0:	02010413          	addi	s0,sp,32
    800072b4:	01053483          	ld	s1,16(a0)
    800072b8:	ffffe097          	auipc	ra,0xffffe
    800072bc:	750080e7          	jalr	1872(ra) # 80005a08 <mycpu>
    800072c0:	01813083          	ld	ra,24(sp)
    800072c4:	01013403          	ld	s0,16(sp)
    800072c8:	40a48533          	sub	a0,s1,a0
    800072cc:	00153513          	seqz	a0,a0
    800072d0:	00813483          	ld	s1,8(sp)
    800072d4:	02010113          	addi	sp,sp,32
    800072d8:	00008067          	ret

00000000800072dc <push_off>:
    800072dc:	fe010113          	addi	sp,sp,-32
    800072e0:	00813823          	sd	s0,16(sp)
    800072e4:	00113c23          	sd	ra,24(sp)
    800072e8:	00913423          	sd	s1,8(sp)
    800072ec:	02010413          	addi	s0,sp,32
    800072f0:	100024f3          	csrr	s1,sstatus
    800072f4:	100027f3          	csrr	a5,sstatus
    800072f8:	ffd7f793          	andi	a5,a5,-3
    800072fc:	10079073          	csrw	sstatus,a5
    80007300:	ffffe097          	auipc	ra,0xffffe
    80007304:	708080e7          	jalr	1800(ra) # 80005a08 <mycpu>
    80007308:	07852783          	lw	a5,120(a0)
    8000730c:	02078663          	beqz	a5,80007338 <push_off+0x5c>
    80007310:	ffffe097          	auipc	ra,0xffffe
    80007314:	6f8080e7          	jalr	1784(ra) # 80005a08 <mycpu>
    80007318:	07852783          	lw	a5,120(a0)
    8000731c:	01813083          	ld	ra,24(sp)
    80007320:	01013403          	ld	s0,16(sp)
    80007324:	0017879b          	addiw	a5,a5,1
    80007328:	06f52c23          	sw	a5,120(a0)
    8000732c:	00813483          	ld	s1,8(sp)
    80007330:	02010113          	addi	sp,sp,32
    80007334:	00008067          	ret
    80007338:	0014d493          	srli	s1,s1,0x1
    8000733c:	ffffe097          	auipc	ra,0xffffe
    80007340:	6cc080e7          	jalr	1740(ra) # 80005a08 <mycpu>
    80007344:	0014f493          	andi	s1,s1,1
    80007348:	06952e23          	sw	s1,124(a0)
    8000734c:	fc5ff06f          	j	80007310 <push_off+0x34>

0000000080007350 <pop_off>:
    80007350:	ff010113          	addi	sp,sp,-16
    80007354:	00813023          	sd	s0,0(sp)
    80007358:	00113423          	sd	ra,8(sp)
    8000735c:	01010413          	addi	s0,sp,16
    80007360:	ffffe097          	auipc	ra,0xffffe
    80007364:	6a8080e7          	jalr	1704(ra) # 80005a08 <mycpu>
    80007368:	100027f3          	csrr	a5,sstatus
    8000736c:	0027f793          	andi	a5,a5,2
    80007370:	04079663          	bnez	a5,800073bc <pop_off+0x6c>
    80007374:	07852783          	lw	a5,120(a0)
    80007378:	02f05a63          	blez	a5,800073ac <pop_off+0x5c>
    8000737c:	fff7871b          	addiw	a4,a5,-1
    80007380:	06e52c23          	sw	a4,120(a0)
    80007384:	00071c63          	bnez	a4,8000739c <pop_off+0x4c>
    80007388:	07c52783          	lw	a5,124(a0)
    8000738c:	00078863          	beqz	a5,8000739c <pop_off+0x4c>
    80007390:	100027f3          	csrr	a5,sstatus
    80007394:	0027e793          	ori	a5,a5,2
    80007398:	10079073          	csrw	sstatus,a5
    8000739c:	00813083          	ld	ra,8(sp)
    800073a0:	00013403          	ld	s0,0(sp)
    800073a4:	01010113          	addi	sp,sp,16
    800073a8:	00008067          	ret
    800073ac:	00001517          	auipc	a0,0x1
    800073b0:	3cc50513          	addi	a0,a0,972 # 80008778 <digits+0x48>
    800073b4:	fffff097          	auipc	ra,0xfffff
    800073b8:	018080e7          	jalr	24(ra) # 800063cc <panic>
    800073bc:	00001517          	auipc	a0,0x1
    800073c0:	3a450513          	addi	a0,a0,932 # 80008760 <digits+0x30>
    800073c4:	fffff097          	auipc	ra,0xfffff
    800073c8:	008080e7          	jalr	8(ra) # 800063cc <panic>

00000000800073cc <push_on>:
    800073cc:	fe010113          	addi	sp,sp,-32
    800073d0:	00813823          	sd	s0,16(sp)
    800073d4:	00113c23          	sd	ra,24(sp)
    800073d8:	00913423          	sd	s1,8(sp)
    800073dc:	02010413          	addi	s0,sp,32
    800073e0:	100024f3          	csrr	s1,sstatus
    800073e4:	100027f3          	csrr	a5,sstatus
    800073e8:	0027e793          	ori	a5,a5,2
    800073ec:	10079073          	csrw	sstatus,a5
    800073f0:	ffffe097          	auipc	ra,0xffffe
    800073f4:	618080e7          	jalr	1560(ra) # 80005a08 <mycpu>
    800073f8:	07852783          	lw	a5,120(a0)
    800073fc:	02078663          	beqz	a5,80007428 <push_on+0x5c>
    80007400:	ffffe097          	auipc	ra,0xffffe
    80007404:	608080e7          	jalr	1544(ra) # 80005a08 <mycpu>
    80007408:	07852783          	lw	a5,120(a0)
    8000740c:	01813083          	ld	ra,24(sp)
    80007410:	01013403          	ld	s0,16(sp)
    80007414:	0017879b          	addiw	a5,a5,1
    80007418:	06f52c23          	sw	a5,120(a0)
    8000741c:	00813483          	ld	s1,8(sp)
    80007420:	02010113          	addi	sp,sp,32
    80007424:	00008067          	ret
    80007428:	0014d493          	srli	s1,s1,0x1
    8000742c:	ffffe097          	auipc	ra,0xffffe
    80007430:	5dc080e7          	jalr	1500(ra) # 80005a08 <mycpu>
    80007434:	0014f493          	andi	s1,s1,1
    80007438:	06952e23          	sw	s1,124(a0)
    8000743c:	fc5ff06f          	j	80007400 <push_on+0x34>

0000000080007440 <pop_on>:
    80007440:	ff010113          	addi	sp,sp,-16
    80007444:	00813023          	sd	s0,0(sp)
    80007448:	00113423          	sd	ra,8(sp)
    8000744c:	01010413          	addi	s0,sp,16
    80007450:	ffffe097          	auipc	ra,0xffffe
    80007454:	5b8080e7          	jalr	1464(ra) # 80005a08 <mycpu>
    80007458:	100027f3          	csrr	a5,sstatus
    8000745c:	0027f793          	andi	a5,a5,2
    80007460:	04078463          	beqz	a5,800074a8 <pop_on+0x68>
    80007464:	07852783          	lw	a5,120(a0)
    80007468:	02f05863          	blez	a5,80007498 <pop_on+0x58>
    8000746c:	fff7879b          	addiw	a5,a5,-1
    80007470:	06f52c23          	sw	a5,120(a0)
    80007474:	07853783          	ld	a5,120(a0)
    80007478:	00079863          	bnez	a5,80007488 <pop_on+0x48>
    8000747c:	100027f3          	csrr	a5,sstatus
    80007480:	ffd7f793          	andi	a5,a5,-3
    80007484:	10079073          	csrw	sstatus,a5
    80007488:	00813083          	ld	ra,8(sp)
    8000748c:	00013403          	ld	s0,0(sp)
    80007490:	01010113          	addi	sp,sp,16
    80007494:	00008067          	ret
    80007498:	00001517          	auipc	a0,0x1
    8000749c:	30850513          	addi	a0,a0,776 # 800087a0 <digits+0x70>
    800074a0:	fffff097          	auipc	ra,0xfffff
    800074a4:	f2c080e7          	jalr	-212(ra) # 800063cc <panic>
    800074a8:	00001517          	auipc	a0,0x1
    800074ac:	2d850513          	addi	a0,a0,728 # 80008780 <digits+0x50>
    800074b0:	fffff097          	auipc	ra,0xfffff
    800074b4:	f1c080e7          	jalr	-228(ra) # 800063cc <panic>

00000000800074b8 <__memset>:
    800074b8:	ff010113          	addi	sp,sp,-16
    800074bc:	00813423          	sd	s0,8(sp)
    800074c0:	01010413          	addi	s0,sp,16
    800074c4:	1a060e63          	beqz	a2,80007680 <__memset+0x1c8>
    800074c8:	40a007b3          	neg	a5,a0
    800074cc:	0077f793          	andi	a5,a5,7
    800074d0:	00778693          	addi	a3,a5,7
    800074d4:	00b00813          	li	a6,11
    800074d8:	0ff5f593          	andi	a1,a1,255
    800074dc:	fff6071b          	addiw	a4,a2,-1
    800074e0:	1b06e663          	bltu	a3,a6,8000768c <__memset+0x1d4>
    800074e4:	1cd76463          	bltu	a4,a3,800076ac <__memset+0x1f4>
    800074e8:	1a078e63          	beqz	a5,800076a4 <__memset+0x1ec>
    800074ec:	00b50023          	sb	a1,0(a0)
    800074f0:	00100713          	li	a4,1
    800074f4:	1ae78463          	beq	a5,a4,8000769c <__memset+0x1e4>
    800074f8:	00b500a3          	sb	a1,1(a0)
    800074fc:	00200713          	li	a4,2
    80007500:	1ae78a63          	beq	a5,a4,800076b4 <__memset+0x1fc>
    80007504:	00b50123          	sb	a1,2(a0)
    80007508:	00300713          	li	a4,3
    8000750c:	18e78463          	beq	a5,a4,80007694 <__memset+0x1dc>
    80007510:	00b501a3          	sb	a1,3(a0)
    80007514:	00400713          	li	a4,4
    80007518:	1ae78263          	beq	a5,a4,800076bc <__memset+0x204>
    8000751c:	00b50223          	sb	a1,4(a0)
    80007520:	00500713          	li	a4,5
    80007524:	1ae78063          	beq	a5,a4,800076c4 <__memset+0x20c>
    80007528:	00b502a3          	sb	a1,5(a0)
    8000752c:	00700713          	li	a4,7
    80007530:	18e79e63          	bne	a5,a4,800076cc <__memset+0x214>
    80007534:	00b50323          	sb	a1,6(a0)
    80007538:	00700e93          	li	t4,7
    8000753c:	00859713          	slli	a4,a1,0x8
    80007540:	00e5e733          	or	a4,a1,a4
    80007544:	01059e13          	slli	t3,a1,0x10
    80007548:	01c76e33          	or	t3,a4,t3
    8000754c:	01859313          	slli	t1,a1,0x18
    80007550:	006e6333          	or	t1,t3,t1
    80007554:	02059893          	slli	a7,a1,0x20
    80007558:	40f60e3b          	subw	t3,a2,a5
    8000755c:	011368b3          	or	a7,t1,a7
    80007560:	02859813          	slli	a6,a1,0x28
    80007564:	0108e833          	or	a6,a7,a6
    80007568:	03059693          	slli	a3,a1,0x30
    8000756c:	003e589b          	srliw	a7,t3,0x3
    80007570:	00d866b3          	or	a3,a6,a3
    80007574:	03859713          	slli	a4,a1,0x38
    80007578:	00389813          	slli	a6,a7,0x3
    8000757c:	00f507b3          	add	a5,a0,a5
    80007580:	00e6e733          	or	a4,a3,a4
    80007584:	000e089b          	sext.w	a7,t3
    80007588:	00f806b3          	add	a3,a6,a5
    8000758c:	00e7b023          	sd	a4,0(a5)
    80007590:	00878793          	addi	a5,a5,8
    80007594:	fed79ce3          	bne	a5,a3,8000758c <__memset+0xd4>
    80007598:	ff8e7793          	andi	a5,t3,-8
    8000759c:	0007871b          	sext.w	a4,a5
    800075a0:	01d787bb          	addw	a5,a5,t4
    800075a4:	0ce88e63          	beq	a7,a4,80007680 <__memset+0x1c8>
    800075a8:	00f50733          	add	a4,a0,a5
    800075ac:	00b70023          	sb	a1,0(a4)
    800075b0:	0017871b          	addiw	a4,a5,1
    800075b4:	0cc77663          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    800075b8:	00e50733          	add	a4,a0,a4
    800075bc:	00b70023          	sb	a1,0(a4)
    800075c0:	0027871b          	addiw	a4,a5,2
    800075c4:	0ac77e63          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    800075c8:	00e50733          	add	a4,a0,a4
    800075cc:	00b70023          	sb	a1,0(a4)
    800075d0:	0037871b          	addiw	a4,a5,3
    800075d4:	0ac77663          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    800075d8:	00e50733          	add	a4,a0,a4
    800075dc:	00b70023          	sb	a1,0(a4)
    800075e0:	0047871b          	addiw	a4,a5,4
    800075e4:	08c77e63          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    800075e8:	00e50733          	add	a4,a0,a4
    800075ec:	00b70023          	sb	a1,0(a4)
    800075f0:	0057871b          	addiw	a4,a5,5
    800075f4:	08c77663          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    800075f8:	00e50733          	add	a4,a0,a4
    800075fc:	00b70023          	sb	a1,0(a4)
    80007600:	0067871b          	addiw	a4,a5,6
    80007604:	06c77e63          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    80007608:	00e50733          	add	a4,a0,a4
    8000760c:	00b70023          	sb	a1,0(a4)
    80007610:	0077871b          	addiw	a4,a5,7
    80007614:	06c77663          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    80007618:	00e50733          	add	a4,a0,a4
    8000761c:	00b70023          	sb	a1,0(a4)
    80007620:	0087871b          	addiw	a4,a5,8
    80007624:	04c77e63          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    80007628:	00e50733          	add	a4,a0,a4
    8000762c:	00b70023          	sb	a1,0(a4)
    80007630:	0097871b          	addiw	a4,a5,9
    80007634:	04c77663          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    80007638:	00e50733          	add	a4,a0,a4
    8000763c:	00b70023          	sb	a1,0(a4)
    80007640:	00a7871b          	addiw	a4,a5,10
    80007644:	02c77e63          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    80007648:	00e50733          	add	a4,a0,a4
    8000764c:	00b70023          	sb	a1,0(a4)
    80007650:	00b7871b          	addiw	a4,a5,11
    80007654:	02c77663          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    80007658:	00e50733          	add	a4,a0,a4
    8000765c:	00b70023          	sb	a1,0(a4)
    80007660:	00c7871b          	addiw	a4,a5,12
    80007664:	00c77e63          	bgeu	a4,a2,80007680 <__memset+0x1c8>
    80007668:	00e50733          	add	a4,a0,a4
    8000766c:	00b70023          	sb	a1,0(a4)
    80007670:	00d7879b          	addiw	a5,a5,13
    80007674:	00c7f663          	bgeu	a5,a2,80007680 <__memset+0x1c8>
    80007678:	00f507b3          	add	a5,a0,a5
    8000767c:	00b78023          	sb	a1,0(a5)
    80007680:	00813403          	ld	s0,8(sp)
    80007684:	01010113          	addi	sp,sp,16
    80007688:	00008067          	ret
    8000768c:	00b00693          	li	a3,11
    80007690:	e55ff06f          	j	800074e4 <__memset+0x2c>
    80007694:	00300e93          	li	t4,3
    80007698:	ea5ff06f          	j	8000753c <__memset+0x84>
    8000769c:	00100e93          	li	t4,1
    800076a0:	e9dff06f          	j	8000753c <__memset+0x84>
    800076a4:	00000e93          	li	t4,0
    800076a8:	e95ff06f          	j	8000753c <__memset+0x84>
    800076ac:	00000793          	li	a5,0
    800076b0:	ef9ff06f          	j	800075a8 <__memset+0xf0>
    800076b4:	00200e93          	li	t4,2
    800076b8:	e85ff06f          	j	8000753c <__memset+0x84>
    800076bc:	00400e93          	li	t4,4
    800076c0:	e7dff06f          	j	8000753c <__memset+0x84>
    800076c4:	00500e93          	li	t4,5
    800076c8:	e75ff06f          	j	8000753c <__memset+0x84>
    800076cc:	00600e93          	li	t4,6
    800076d0:	e6dff06f          	j	8000753c <__memset+0x84>

00000000800076d4 <__memmove>:
    800076d4:	ff010113          	addi	sp,sp,-16
    800076d8:	00813423          	sd	s0,8(sp)
    800076dc:	01010413          	addi	s0,sp,16
    800076e0:	0e060863          	beqz	a2,800077d0 <__memmove+0xfc>
    800076e4:	fff6069b          	addiw	a3,a2,-1
    800076e8:	0006881b          	sext.w	a6,a3
    800076ec:	0ea5e863          	bltu	a1,a0,800077dc <__memmove+0x108>
    800076f0:	00758713          	addi	a4,a1,7
    800076f4:	00a5e7b3          	or	a5,a1,a0
    800076f8:	40a70733          	sub	a4,a4,a0
    800076fc:	0077f793          	andi	a5,a5,7
    80007700:	00f73713          	sltiu	a4,a4,15
    80007704:	00174713          	xori	a4,a4,1
    80007708:	0017b793          	seqz	a5,a5
    8000770c:	00e7f7b3          	and	a5,a5,a4
    80007710:	10078863          	beqz	a5,80007820 <__memmove+0x14c>
    80007714:	00900793          	li	a5,9
    80007718:	1107f463          	bgeu	a5,a6,80007820 <__memmove+0x14c>
    8000771c:	0036581b          	srliw	a6,a2,0x3
    80007720:	fff8081b          	addiw	a6,a6,-1
    80007724:	02081813          	slli	a6,a6,0x20
    80007728:	01d85893          	srli	a7,a6,0x1d
    8000772c:	00858813          	addi	a6,a1,8
    80007730:	00058793          	mv	a5,a1
    80007734:	00050713          	mv	a4,a0
    80007738:	01088833          	add	a6,a7,a6
    8000773c:	0007b883          	ld	a7,0(a5)
    80007740:	00878793          	addi	a5,a5,8
    80007744:	00870713          	addi	a4,a4,8
    80007748:	ff173c23          	sd	a7,-8(a4)
    8000774c:	ff0798e3          	bne	a5,a6,8000773c <__memmove+0x68>
    80007750:	ff867713          	andi	a4,a2,-8
    80007754:	02071793          	slli	a5,a4,0x20
    80007758:	0207d793          	srli	a5,a5,0x20
    8000775c:	00f585b3          	add	a1,a1,a5
    80007760:	40e686bb          	subw	a3,a3,a4
    80007764:	00f507b3          	add	a5,a0,a5
    80007768:	06e60463          	beq	a2,a4,800077d0 <__memmove+0xfc>
    8000776c:	0005c703          	lbu	a4,0(a1)
    80007770:	00e78023          	sb	a4,0(a5)
    80007774:	04068e63          	beqz	a3,800077d0 <__memmove+0xfc>
    80007778:	0015c603          	lbu	a2,1(a1)
    8000777c:	00100713          	li	a4,1
    80007780:	00c780a3          	sb	a2,1(a5)
    80007784:	04e68663          	beq	a3,a4,800077d0 <__memmove+0xfc>
    80007788:	0025c603          	lbu	a2,2(a1)
    8000778c:	00200713          	li	a4,2
    80007790:	00c78123          	sb	a2,2(a5)
    80007794:	02e68e63          	beq	a3,a4,800077d0 <__memmove+0xfc>
    80007798:	0035c603          	lbu	a2,3(a1)
    8000779c:	00300713          	li	a4,3
    800077a0:	00c781a3          	sb	a2,3(a5)
    800077a4:	02e68663          	beq	a3,a4,800077d0 <__memmove+0xfc>
    800077a8:	0045c603          	lbu	a2,4(a1)
    800077ac:	00400713          	li	a4,4
    800077b0:	00c78223          	sb	a2,4(a5)
    800077b4:	00e68e63          	beq	a3,a4,800077d0 <__memmove+0xfc>
    800077b8:	0055c603          	lbu	a2,5(a1)
    800077bc:	00500713          	li	a4,5
    800077c0:	00c782a3          	sb	a2,5(a5)
    800077c4:	00e68663          	beq	a3,a4,800077d0 <__memmove+0xfc>
    800077c8:	0065c703          	lbu	a4,6(a1)
    800077cc:	00e78323          	sb	a4,6(a5)
    800077d0:	00813403          	ld	s0,8(sp)
    800077d4:	01010113          	addi	sp,sp,16
    800077d8:	00008067          	ret
    800077dc:	02061713          	slli	a4,a2,0x20
    800077e0:	02075713          	srli	a4,a4,0x20
    800077e4:	00e587b3          	add	a5,a1,a4
    800077e8:	f0f574e3          	bgeu	a0,a5,800076f0 <__memmove+0x1c>
    800077ec:	02069613          	slli	a2,a3,0x20
    800077f0:	02065613          	srli	a2,a2,0x20
    800077f4:	fff64613          	not	a2,a2
    800077f8:	00e50733          	add	a4,a0,a4
    800077fc:	00c78633          	add	a2,a5,a2
    80007800:	fff7c683          	lbu	a3,-1(a5)
    80007804:	fff78793          	addi	a5,a5,-1
    80007808:	fff70713          	addi	a4,a4,-1
    8000780c:	00d70023          	sb	a3,0(a4)
    80007810:	fec798e3          	bne	a5,a2,80007800 <__memmove+0x12c>
    80007814:	00813403          	ld	s0,8(sp)
    80007818:	01010113          	addi	sp,sp,16
    8000781c:	00008067          	ret
    80007820:	02069713          	slli	a4,a3,0x20
    80007824:	02075713          	srli	a4,a4,0x20
    80007828:	00170713          	addi	a4,a4,1
    8000782c:	00e50733          	add	a4,a0,a4
    80007830:	00050793          	mv	a5,a0
    80007834:	0005c683          	lbu	a3,0(a1)
    80007838:	00178793          	addi	a5,a5,1
    8000783c:	00158593          	addi	a1,a1,1
    80007840:	fed78fa3          	sb	a3,-1(a5)
    80007844:	fee798e3          	bne	a5,a4,80007834 <__memmove+0x160>
    80007848:	f89ff06f          	j	800077d0 <__memmove+0xfc>

000000008000784c <__mem_free>:
    8000784c:	ff010113          	addi	sp,sp,-16
    80007850:	00813423          	sd	s0,8(sp)
    80007854:	01010413          	addi	s0,sp,16
    80007858:	00003597          	auipc	a1,0x3
    8000785c:	b0058593          	addi	a1,a1,-1280 # 8000a358 <freep>
    80007860:	0005b783          	ld	a5,0(a1)
    80007864:	ff050693          	addi	a3,a0,-16
    80007868:	0007b703          	ld	a4,0(a5)
    8000786c:	00d7fc63          	bgeu	a5,a3,80007884 <__mem_free+0x38>
    80007870:	00e6ee63          	bltu	a3,a4,8000788c <__mem_free+0x40>
    80007874:	00e7fc63          	bgeu	a5,a4,8000788c <__mem_free+0x40>
    80007878:	00070793          	mv	a5,a4
    8000787c:	0007b703          	ld	a4,0(a5)
    80007880:	fed7e8e3          	bltu	a5,a3,80007870 <__mem_free+0x24>
    80007884:	fee7eae3          	bltu	a5,a4,80007878 <__mem_free+0x2c>
    80007888:	fee6f8e3          	bgeu	a3,a4,80007878 <__mem_free+0x2c>
    8000788c:	ff852803          	lw	a6,-8(a0)
    80007890:	02081613          	slli	a2,a6,0x20
    80007894:	01c65613          	srli	a2,a2,0x1c
    80007898:	00c68633          	add	a2,a3,a2
    8000789c:	02c70a63          	beq	a4,a2,800078d0 <__mem_free+0x84>
    800078a0:	fee53823          	sd	a4,-16(a0)
    800078a4:	0087a503          	lw	a0,8(a5)
    800078a8:	02051613          	slli	a2,a0,0x20
    800078ac:	01c65613          	srli	a2,a2,0x1c
    800078b0:	00c78633          	add	a2,a5,a2
    800078b4:	04c68263          	beq	a3,a2,800078f8 <__mem_free+0xac>
    800078b8:	00813403          	ld	s0,8(sp)
    800078bc:	00d7b023          	sd	a3,0(a5)
    800078c0:	00f5b023          	sd	a5,0(a1)
    800078c4:	00000513          	li	a0,0
    800078c8:	01010113          	addi	sp,sp,16
    800078cc:	00008067          	ret
    800078d0:	00872603          	lw	a2,8(a4)
    800078d4:	00073703          	ld	a4,0(a4)
    800078d8:	0106083b          	addw	a6,a2,a6
    800078dc:	ff052c23          	sw	a6,-8(a0)
    800078e0:	fee53823          	sd	a4,-16(a0)
    800078e4:	0087a503          	lw	a0,8(a5)
    800078e8:	02051613          	slli	a2,a0,0x20
    800078ec:	01c65613          	srli	a2,a2,0x1c
    800078f0:	00c78633          	add	a2,a5,a2
    800078f4:	fcc692e3          	bne	a3,a2,800078b8 <__mem_free+0x6c>
    800078f8:	00813403          	ld	s0,8(sp)
    800078fc:	0105053b          	addw	a0,a0,a6
    80007900:	00a7a423          	sw	a0,8(a5)
    80007904:	00e7b023          	sd	a4,0(a5)
    80007908:	00f5b023          	sd	a5,0(a1)
    8000790c:	00000513          	li	a0,0
    80007910:	01010113          	addi	sp,sp,16
    80007914:	00008067          	ret

0000000080007918 <__mem_alloc>:
    80007918:	fc010113          	addi	sp,sp,-64
    8000791c:	02813823          	sd	s0,48(sp)
    80007920:	02913423          	sd	s1,40(sp)
    80007924:	03213023          	sd	s2,32(sp)
    80007928:	01513423          	sd	s5,8(sp)
    8000792c:	02113c23          	sd	ra,56(sp)
    80007930:	01313c23          	sd	s3,24(sp)
    80007934:	01413823          	sd	s4,16(sp)
    80007938:	01613023          	sd	s6,0(sp)
    8000793c:	04010413          	addi	s0,sp,64
    80007940:	00003a97          	auipc	s5,0x3
    80007944:	a18a8a93          	addi	s5,s5,-1512 # 8000a358 <freep>
    80007948:	00f50913          	addi	s2,a0,15
    8000794c:	000ab683          	ld	a3,0(s5)
    80007950:	00495913          	srli	s2,s2,0x4
    80007954:	0019049b          	addiw	s1,s2,1
    80007958:	00048913          	mv	s2,s1
    8000795c:	0c068c63          	beqz	a3,80007a34 <__mem_alloc+0x11c>
    80007960:	0006b503          	ld	a0,0(a3)
    80007964:	00852703          	lw	a4,8(a0)
    80007968:	10977063          	bgeu	a4,s1,80007a68 <__mem_alloc+0x150>
    8000796c:	000017b7          	lui	a5,0x1
    80007970:	0009099b          	sext.w	s3,s2
    80007974:	0af4e863          	bltu	s1,a5,80007a24 <__mem_alloc+0x10c>
    80007978:	02099a13          	slli	s4,s3,0x20
    8000797c:	01ca5a13          	srli	s4,s4,0x1c
    80007980:	fff00b13          	li	s6,-1
    80007984:	0100006f          	j	80007994 <__mem_alloc+0x7c>
    80007988:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000798c:	00852703          	lw	a4,8(a0)
    80007990:	04977463          	bgeu	a4,s1,800079d8 <__mem_alloc+0xc0>
    80007994:	00050793          	mv	a5,a0
    80007998:	fea698e3          	bne	a3,a0,80007988 <__mem_alloc+0x70>
    8000799c:	000a0513          	mv	a0,s4
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	1f0080e7          	jalr	496(ra) # 80007b90 <kvmincrease>
    800079a8:	00050793          	mv	a5,a0
    800079ac:	01050513          	addi	a0,a0,16
    800079b0:	07678e63          	beq	a5,s6,80007a2c <__mem_alloc+0x114>
    800079b4:	0137a423          	sw	s3,8(a5)
    800079b8:	00000097          	auipc	ra,0x0
    800079bc:	e94080e7          	jalr	-364(ra) # 8000784c <__mem_free>
    800079c0:	000ab783          	ld	a5,0(s5)
    800079c4:	06078463          	beqz	a5,80007a2c <__mem_alloc+0x114>
    800079c8:	0007b503          	ld	a0,0(a5)
    800079cc:	00078693          	mv	a3,a5
    800079d0:	00852703          	lw	a4,8(a0)
    800079d4:	fc9760e3          	bltu	a4,s1,80007994 <__mem_alloc+0x7c>
    800079d8:	08e48263          	beq	s1,a4,80007a5c <__mem_alloc+0x144>
    800079dc:	4127073b          	subw	a4,a4,s2
    800079e0:	02071693          	slli	a3,a4,0x20
    800079e4:	01c6d693          	srli	a3,a3,0x1c
    800079e8:	00e52423          	sw	a4,8(a0)
    800079ec:	00d50533          	add	a0,a0,a3
    800079f0:	01252423          	sw	s2,8(a0)
    800079f4:	00fab023          	sd	a5,0(s5)
    800079f8:	01050513          	addi	a0,a0,16
    800079fc:	03813083          	ld	ra,56(sp)
    80007a00:	03013403          	ld	s0,48(sp)
    80007a04:	02813483          	ld	s1,40(sp)
    80007a08:	02013903          	ld	s2,32(sp)
    80007a0c:	01813983          	ld	s3,24(sp)
    80007a10:	01013a03          	ld	s4,16(sp)
    80007a14:	00813a83          	ld	s5,8(sp)
    80007a18:	00013b03          	ld	s6,0(sp)
    80007a1c:	04010113          	addi	sp,sp,64
    80007a20:	00008067          	ret
    80007a24:	000019b7          	lui	s3,0x1
    80007a28:	f51ff06f          	j	80007978 <__mem_alloc+0x60>
    80007a2c:	00000513          	li	a0,0
    80007a30:	fcdff06f          	j	800079fc <__mem_alloc+0xe4>
    80007a34:	00004797          	auipc	a5,0x4
    80007a38:	bfc78793          	addi	a5,a5,-1028 # 8000b630 <base>
    80007a3c:	00078513          	mv	a0,a5
    80007a40:	00fab023          	sd	a5,0(s5)
    80007a44:	00f7b023          	sd	a5,0(a5)
    80007a48:	00000713          	li	a4,0
    80007a4c:	00004797          	auipc	a5,0x4
    80007a50:	be07a623          	sw	zero,-1044(a5) # 8000b638 <base+0x8>
    80007a54:	00050693          	mv	a3,a0
    80007a58:	f11ff06f          	j	80007968 <__mem_alloc+0x50>
    80007a5c:	00053703          	ld	a4,0(a0)
    80007a60:	00e7b023          	sd	a4,0(a5)
    80007a64:	f91ff06f          	j	800079f4 <__mem_alloc+0xdc>
    80007a68:	00068793          	mv	a5,a3
    80007a6c:	f6dff06f          	j	800079d8 <__mem_alloc+0xc0>

0000000080007a70 <__putc>:
    80007a70:	fe010113          	addi	sp,sp,-32
    80007a74:	00813823          	sd	s0,16(sp)
    80007a78:	00113c23          	sd	ra,24(sp)
    80007a7c:	02010413          	addi	s0,sp,32
    80007a80:	00050793          	mv	a5,a0
    80007a84:	fef40593          	addi	a1,s0,-17
    80007a88:	00100613          	li	a2,1
    80007a8c:	00000513          	li	a0,0
    80007a90:	fef407a3          	sb	a5,-17(s0)
    80007a94:	fffff097          	auipc	ra,0xfffff
    80007a98:	918080e7          	jalr	-1768(ra) # 800063ac <console_write>
    80007a9c:	01813083          	ld	ra,24(sp)
    80007aa0:	01013403          	ld	s0,16(sp)
    80007aa4:	02010113          	addi	sp,sp,32
    80007aa8:	00008067          	ret

0000000080007aac <__getc>:
    80007aac:	fe010113          	addi	sp,sp,-32
    80007ab0:	00813823          	sd	s0,16(sp)
    80007ab4:	00113c23          	sd	ra,24(sp)
    80007ab8:	02010413          	addi	s0,sp,32
    80007abc:	fe840593          	addi	a1,s0,-24
    80007ac0:	00100613          	li	a2,1
    80007ac4:	00000513          	li	a0,0
    80007ac8:	fffff097          	auipc	ra,0xfffff
    80007acc:	8c4080e7          	jalr	-1852(ra) # 8000638c <console_read>
    80007ad0:	fe844503          	lbu	a0,-24(s0)
    80007ad4:	01813083          	ld	ra,24(sp)
    80007ad8:	01013403          	ld	s0,16(sp)
    80007adc:	02010113          	addi	sp,sp,32
    80007ae0:	00008067          	ret

0000000080007ae4 <console_handler>:
    80007ae4:	fe010113          	addi	sp,sp,-32
    80007ae8:	00813823          	sd	s0,16(sp)
    80007aec:	00113c23          	sd	ra,24(sp)
    80007af0:	00913423          	sd	s1,8(sp)
    80007af4:	02010413          	addi	s0,sp,32
    80007af8:	14202773          	csrr	a4,scause
    80007afc:	100027f3          	csrr	a5,sstatus
    80007b00:	0027f793          	andi	a5,a5,2
    80007b04:	06079e63          	bnez	a5,80007b80 <console_handler+0x9c>
    80007b08:	00074c63          	bltz	a4,80007b20 <console_handler+0x3c>
    80007b0c:	01813083          	ld	ra,24(sp)
    80007b10:	01013403          	ld	s0,16(sp)
    80007b14:	00813483          	ld	s1,8(sp)
    80007b18:	02010113          	addi	sp,sp,32
    80007b1c:	00008067          	ret
    80007b20:	0ff77713          	andi	a4,a4,255
    80007b24:	00900793          	li	a5,9
    80007b28:	fef712e3          	bne	a4,a5,80007b0c <console_handler+0x28>
    80007b2c:	ffffe097          	auipc	ra,0xffffe
    80007b30:	4b8080e7          	jalr	1208(ra) # 80005fe4 <plic_claim>
    80007b34:	00a00793          	li	a5,10
    80007b38:	00050493          	mv	s1,a0
    80007b3c:	02f50c63          	beq	a0,a5,80007b74 <console_handler+0x90>
    80007b40:	fc0506e3          	beqz	a0,80007b0c <console_handler+0x28>
    80007b44:	00050593          	mv	a1,a0
    80007b48:	00001517          	auipc	a0,0x1
    80007b4c:	b6050513          	addi	a0,a0,-1184 # 800086a8 <_ZZ13_printIntegermE6digits+0x568>
    80007b50:	fffff097          	auipc	ra,0xfffff
    80007b54:	8d8080e7          	jalr	-1832(ra) # 80006428 <__printf>
    80007b58:	01013403          	ld	s0,16(sp)
    80007b5c:	01813083          	ld	ra,24(sp)
    80007b60:	00048513          	mv	a0,s1
    80007b64:	00813483          	ld	s1,8(sp)
    80007b68:	02010113          	addi	sp,sp,32
    80007b6c:	ffffe317          	auipc	t1,0xffffe
    80007b70:	4b030067          	jr	1200(t1) # 8000601c <plic_complete>
    80007b74:	fffff097          	auipc	ra,0xfffff
    80007b78:	1bc080e7          	jalr	444(ra) # 80006d30 <uartintr>
    80007b7c:	fddff06f          	j	80007b58 <console_handler+0x74>
    80007b80:	00001517          	auipc	a0,0x1
    80007b84:	c2850513          	addi	a0,a0,-984 # 800087a8 <digits+0x78>
    80007b88:	fffff097          	auipc	ra,0xfffff
    80007b8c:	844080e7          	jalr	-1980(ra) # 800063cc <panic>

0000000080007b90 <kvmincrease>:
    80007b90:	fe010113          	addi	sp,sp,-32
    80007b94:	01213023          	sd	s2,0(sp)
    80007b98:	00001937          	lui	s2,0x1
    80007b9c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80007ba0:	00813823          	sd	s0,16(sp)
    80007ba4:	00113c23          	sd	ra,24(sp)
    80007ba8:	00913423          	sd	s1,8(sp)
    80007bac:	02010413          	addi	s0,sp,32
    80007bb0:	01250933          	add	s2,a0,s2
    80007bb4:	00c95913          	srli	s2,s2,0xc
    80007bb8:	02090863          	beqz	s2,80007be8 <kvmincrease+0x58>
    80007bbc:	00000493          	li	s1,0
    80007bc0:	00148493          	addi	s1,s1,1
    80007bc4:	fffff097          	auipc	ra,0xfffff
    80007bc8:	4bc080e7          	jalr	1212(ra) # 80007080 <kalloc>
    80007bcc:	fe991ae3          	bne	s2,s1,80007bc0 <kvmincrease+0x30>
    80007bd0:	01813083          	ld	ra,24(sp)
    80007bd4:	01013403          	ld	s0,16(sp)
    80007bd8:	00813483          	ld	s1,8(sp)
    80007bdc:	00013903          	ld	s2,0(sp)
    80007be0:	02010113          	addi	sp,sp,32
    80007be4:	00008067          	ret
    80007be8:	01813083          	ld	ra,24(sp)
    80007bec:	01013403          	ld	s0,16(sp)
    80007bf0:	00813483          	ld	s1,8(sp)
    80007bf4:	00013903          	ld	s2,0(sp)
    80007bf8:	00000513          	li	a0,0
    80007bfc:	02010113          	addi	sp,sp,32
    80007c00:	00008067          	ret
	...
