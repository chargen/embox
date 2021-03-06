/**
 * @file
 * @brief Misc traps dispatching routines.
 *
 * @date 29.07.09
 * @author Eldar Abusalimov
 */

#include <asm/entry.h>
#include <asm/regs.h>
#include <asm/psr.h>
#include <asm/winmacro.h>
#include <asm/stack.h>

	.text
	.align 4

	.global winflush_entry
winflush_entry:
	SAVE_ALL

	/* Enable traps. */
	wr %t_psr, PSR_ET, %psr
	 nop

	call winflush
	 nop

	wr %t_psr, %g0, %psr
	 nop; nop; nop;

	RESTORE_ALL

	.global weak_trap_entry
weak_trap_entry:
	orcc %local, %g0, %g0
	be bad_trap_entry
	 nop
	jmpl %local, %g0
	 nop

! 	.global srmmu_fault
!srmmu_fault:
!	mov %t_npc, %t_pc
!	add %t_npc, 4, %t_npc
	jmpl %t_npc, %g0
	 rett %t_npc + 4
	.global bad_trap_entry
bad_trap_entry:
	SAVE_ALL

	mov %tbr, %o0
	srl %o0, 4, %o0
	and %o0, 0xFF, %o0		! pass TT as parameter

	or %t_psr, PSR_PIL, %g1
	wr %g1, %g0, %psr
	 WRITE_PAUSE
	wr %g1, PSR_ET, %psr
	 WRITE_PAUSE

	call bad_trap_handler
	 add %sp, STACK_FRAME_SZ, %o1

	RESTORE_ALL
