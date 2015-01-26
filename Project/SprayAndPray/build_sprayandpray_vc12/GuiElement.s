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
	.file	"GuiElement.cpp"
	.section	.text._ZN10GuiElementD2Ev,"ax",%progbits
	.align	2
	.global	_ZN10GuiElementD2Ev
	.hidden	_ZN10GuiElementD2Ev
	.type	_ZN10GuiElementD2Ev, %function
_ZN10GuiElementD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
.LPIC0:
	add	r3, pc, r3
	add	r3, r3, #8
	str	r3, [r0]
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN10GuiElementD2Ev, .-_ZN10GuiElementD2Ev
	.global	_ZN10GuiElementD1Ev
	.hidden	_ZN10GuiElementD1Ev
	.set	_ZN10GuiElementD1Ev,_ZN10GuiElementD2Ev
	.section	.text._ZN10GuiElement6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN10GuiElement6UpdateEf
	.hidden	_ZN10GuiElement6UpdateEf
	.type	_ZN10GuiElement6UpdateEf, %function
_ZN10GuiElement6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN10GuiElement6UpdateEf, .-_ZN10GuiElement6UpdateEf
	.section	.text._ZN10GuiElementD0Ev,"ax",%progbits
	.align	2
	.global	_ZN10GuiElementD0Ev
	.hidden	_ZN10GuiElementD0Ev
	.type	_ZN10GuiElementD0Ev, %function
_ZN10GuiElementD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6
	stmfd	sp!, {r4, lr}
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN10GuiElementD0Ev, .-_ZN10GuiElementD0Ev
	.section	.text._ZN10GuiElementC2Ev,"ax",%progbits
	.align	2
	.global	_ZN10GuiElementC2Ev
	.hidden	_ZN10GuiElementC2Ev
	.type	_ZN10GuiElementC2Ev, %function
_ZN10GuiElementC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L9
	mov	r1, #0
.LPIC2:
	add	ip, pc, ip
	add	ip, ip, #8
	mov	r2, #1
	str	ip, [r0]
	str	r1, [r0, #4]
	strb	r2, [r0, #8]
	bx	lr
.L10:
	.align	2
.L9:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	_ZN10GuiElementC2Ev, .-_ZN10GuiElementC2Ev
	.global	_ZN10GuiElementC1Ev
	.hidden	_ZN10GuiElementC1Ev
	.set	_ZN10GuiElementC1Ev,_ZN10GuiElementC2Ev
	.hidden	_ZTS10GuiElement
	.global	_ZTS10GuiElement
	.hidden	_ZTI10GuiElement
	.global	_ZTI10GuiElement
	.hidden	_ZTV10GuiElement
	.global	_ZTV10GuiElement
	.section	.rodata
	.align	2
	.type	_ZTS10GuiElement, %object
	.size	_ZTS10GuiElement, 13
_ZTS10GuiElement:
	.ascii	"10GuiElement\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV10GuiElement, %object
	.size	_ZTV10GuiElement, 28
_ZTV10GuiElement:
	.word	0
	.word	_ZTI10GuiElement
	.word	_ZN10GuiElementD1Ev
	.word	_ZN10GuiElementD0Ev
	.word	_ZN10GuiElement6UpdateEf
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.type	_ZTI10GuiElement, %object
	.size	_ZTI10GuiElement, 8
_ZTI10GuiElement:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS10GuiElement
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
