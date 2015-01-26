	.arch armv6
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 2
	.file	"View.cpp"
	.section	.text._ZN4View5EnterEv,"ax",%progbits
	.align	2
	.global	_ZN4View5EnterEv
	.hidden	_ZN4View5EnterEv
	.type	_ZN4View5EnterEv, %function
_ZN4View5EnterEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, [r0]
	ldr	r3, [r3, #20]
	blx	r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN4View5EnterEv, .-_ZN4View5EnterEv
	.section	.text._ZN4View6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN4View6UpdateEf
	.hidden	_ZN4View6UpdateEf
	.type	_ZN4View6UpdateEf, %function
_ZN4View6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	ldr	r4, [r0, #8]
	ldr	r2, [r0, #12]
	mov	r6, r1
	cmp	r4, r2
	bne	.L6
	ldmfd	sp!, {r4, r5, r6, pc}
.L4:
	cmp	r2, r4
	beq	.L11
.L6:
	ldr	r0, [r4], #4
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4
	ldr	r3, [r0]
	mov	r1, r6
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r2, [r5, #12]
	cmp	r2, r4
	bne	.L6
.L11:
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN4View6UpdateEf, .-_ZN4View6UpdateEf
	.section	.text._ZN4View12UpdateLayoutEv,"ax",%progbits
	.align	2
	.global	_ZN4View12UpdateLayoutEv
	.hidden	_ZN4View12UpdateLayoutEv
	.type	_ZN4View12UpdateLayoutEv, %function
_ZN4View12UpdateLayoutEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN4View12UpdateLayoutEv, .-_ZN4View12UpdateLayoutEv
	.section	.text._ZN4View4ExitEv,"ax",%progbits
	.align	2
	.global	_ZN4View4ExitEv
	.hidden	_ZN4View4ExitEv
	.type	_ZN4View4ExitEv, %function
_ZN4View4ExitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN4View4ExitEv, .-_ZN4View4ExitEv
	.section	.text._ZN4View6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN4View6RenderEv
	.hidden	_ZN4View6RenderEv
	.type	_ZN4View6RenderEv, %function
_ZN4View6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r4, [r0, #8]
	ldr	r2, [r0, #12]
	cmp	r4, r2
	bne	.L18
	ldmfd	sp!, {r3, r4, r5, pc}
.L16:
	cmp	r2, r4
	beq	.L22
.L18:
	ldr	r0, [r4], #4
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r2, [r5, #12]
	cmp	r2, r4
	bne	.L18
.L22:
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN4View6RenderEv, .-_ZN4View6RenderEv
	.section	.text._ZN4View11HandleEventE9EventType,"ax",%progbits
	.align	2
	.global	_ZN4View11HandleEventE9EventType
	.hidden	_ZN4View11HandleEventE9EventType
	.type	_ZN4View11HandleEventE9EventType, %function
_ZN4View11HandleEventE9EventType:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	stmfd	sp!, {r3, lr}
	ldmnefd	sp!, {r3, pc}
	ldr	r3, [r0]
	ldr	r3, [r3, #20]
	blx	r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN4View11HandleEventE9EventType, .-_ZN4View11HandleEventE9EventType
	.section	.text._ZN4ViewD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4ViewD2Ev
	.hidden	_ZN4ViewD2Ev
	.type	_ZN4ViewD2Ev, %function
_ZN4ViewD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r2, .L41
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
.LPIC8:
	add	r2, pc, r2
	add	r2, r2, #8
	cmp	r3, #0
	str	r2, [r0]
	beq	.L27
	ldr	r0, [r0, #8]
.L28:
	cmp	r0, #0
	beq	.L33
	bl	free(PLT)
.L33:
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
.L27:
	ldr	r4, [r0, #8]
	ldr	r2, [r0, #12]
	cmp	r4, r2
	beq	.L34
.L32:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L30
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r2, [r5, #12]
.L30:
	cmp	r2, r4
	bne	.L32
	ldr	r0, [r5, #8]
.L29:
	str	r0, [r5, #12]
	b	.L28
.L34:
	mov	r0, r4
	b	.L29
.L42:
	.align	2
.L41:
	.word	.LANCHOR0-(.LPIC8+8)
	.size	_ZN4ViewD2Ev, .-_ZN4ViewD2Ev
	.global	_ZN4ViewD1Ev
	.hidden	_ZN4ViewD1Ev
	.set	_ZN4ViewD1Ev,_ZN4ViewD2Ev
	.section	.text._ZN4ViewD0Ev,"ax",%progbits
	.align	2
	.global	_ZN4ViewD0Ev
	.hidden	_ZN4ViewD0Ev
	.type	_ZN4ViewD0Ev, %function
_ZN4ViewD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r2, .L58
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
.LPIC9:
	add	r2, pc, r2
	add	r2, r2, #8
	cmp	r3, #0
	str	r2, [r0]
	beq	.L44
	ldr	r0, [r0, #8]
.L45:
	cmp	r0, #0
	beq	.L50
	bl	free(PLT)
.L50:
	mov	r0, r5
	bl	_ZdlPv(PLT)
	mov	r0, r5
	ldmfd	sp!, {r3, r4, r5, pc}
.L44:
	ldr	r4, [r0, #8]
	ldr	r2, [r0, #12]
	cmp	r4, r2
	beq	.L51
.L49:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L47
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r2, [r5, #12]
.L47:
	cmp	r2, r4
	bne	.L49
	ldr	r0, [r5, #8]
.L46:
	str	r0, [r5, #12]
	b	.L45
.L51:
	mov	r0, r4
	b	.L46
.L59:
	.align	2
.L58:
	.word	.LANCHOR0-(.LPIC9+8)
	.size	_ZN4ViewD0Ev, .-_ZN4ViewD0Ev
	.section	.text._ZN4ViewC2Ev,"ax",%progbits
	.align	2
	.global	_ZN4ViewC2Ev
	.hidden	_ZN4ViewC2Ev
	.type	_ZN4ViewC2Ev, %function
_ZN4ViewC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L61
	mov	r2, #0
.LPIC10:
	add	r1, pc, r1
	add	r1, r1, #8
	str	r1, [r0]
	strb	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r2, [r0, #12]
	str	r2, [r0, #16]
	bx	lr
.L62:
	.align	2
.L61:
	.word	.LANCHOR0-(.LPIC10+8)
	.size	_ZN4ViewC2Ev, .-_ZN4ViewC2Ev
	.global	_ZN4ViewC1Ev
	.hidden	_ZN4ViewC1Ev
	.set	_ZN4ViewC1Ev,_ZN4ViewC2Ev
	.hidden	_ZTS4View
	.global	_ZTS4View
	.hidden	_ZTI4View
	.global	_ZTI4View
	.hidden	_ZTV4View
	.global	_ZTV4View
	.section	.rodata
	.align	2
	.type	_ZTS4View, %object
	.size	_ZTS4View, 6
_ZTS4View:
	.ascii	"4View\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV4View, %object
	.size	_ZTV4View, 40
_ZTV4View:
	.word	0
	.word	_ZTI4View
	.word	_ZN4ViewD1Ev
	.word	_ZN4ViewD0Ev
	.word	_ZN4View5EnterEv
	.word	_ZN4View6UpdateEf
	.word	_ZN4View6RenderEv
	.word	_ZN4View12UpdateLayoutEv
	.word	_ZN4View4ExitEv
	.word	_ZN4View11HandleEventE9EventType
	.type	_ZTI4View, %object
	.size	_ZTI4View, 8
_ZTI4View:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS4View
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
