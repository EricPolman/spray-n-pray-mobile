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
	.file	"Button.cpp"
	.global	__aeabi_fdiv
	.global	__aeabi_fadd
	.section	.text._ZN6Button12UpdateLayoutEffff,"ax",%progbits
	.align	2
	.global	_ZN6Button12UpdateLayoutEffff
	.hidden	_ZN6Button12UpdateLayoutEffff
	.type	_ZN6Button12UpdateLayoutEffff, %function
_ZN6Button12UpdateLayoutEffff:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, [r0, #140]
	ldr	ip, [sp, #16]	@ float
	str	r2, [r4, #16]	@ float
	str	ip, [r4, #280]	@ float
	str	r1, [r4, #12]	@ float
	mov	r5, r3
	str	r3, [r4, #276]	@ float
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #140]
	ldr	r5, [r4, #280]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	str	r6, [r4, #48]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #264]
	ldr	r5, [r4, #276]	@ float
	str	r0, [r4, #52]	@ float
	ldr	r2, [r3]
	mov	r0, r3
	ldr	r3, [r2]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #264]
	ldr	r5, [r4, #280]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	str	r6, [r4, #172]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #16]	@ float
	ldr	r5, [r4, #12]	@ float
	str	r3, [r4, #28]	@ float
	str	r3, [r4, #152]	@ float
	ldr	r1, [r4, #280]	@ float
	str	r5, [r4, #24]	@ float
	str	r5, [r4, #148]	@ float
	str	r0, [r4, #176]	@ float
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r4, #276]	@ float
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	str	r6, [r4, #288]	@ float
	str	r0, [r4, #284]	@ float
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN6Button12UpdateLayoutEffff, .-_ZN6Button12UpdateLayoutEffff
	.section	.text._ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE,"ax",%progbits
	.align	2
	.global	_ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE
	.hidden	_ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE
	.type	_ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE, %function
_ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	mov	r4, r3
	mov	r7, r1
	mov	r6, r2
	ldr	r5, [sp, #40]	@ float
	ldr	fp, [sp, #52]
	bl	_ZN10GuiElementC2Ev(PLT)
	ldr	r2, .L3
	add	r10, r9, #20
.LPIC0:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r2, [r9]
	add	r8, r9, #144
	str	r7, [r9, #12]	@ float
	str	r6, [r9, #16]	@ float
	mov	r0, r10
	bl	_ZN6SpriteC1Ev(PLT)
	mov	r0, r8
	bl	_ZN6SpriteC1Ev(PLT)
	mov	r2, #0
	strb	r2, [r9, #268]
	strb	r2, [r9, #269]
	mov	r0, r10
	str	r4, [r9, #276]	@ float
	str	r5, [r9, #280]	@ float
	ldr	r1, [sp, #44]
	str	fp, [r9, #272]
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r1, [sp, #48]
	mov	r0, r8
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r0, [r9, #140]
	str	r4, [r9, #276]	@ float
	str	r5, [r9, #280]	@ float
	str	r7, [r9, #12]	@ float
	str	r6, [r9, #16]	@ float
	ldr	r2, [r0]
	ldr	r2, [r2]
	blx	r2
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r9, #140]
	ldr	r4, [r9, #280]	@ float
	mov	r5, r0
	mov	r0, r2
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	blx	r2
	str	r5, [r9, #48]	@ float
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r9, #264]
	ldr	r4, [r9, #276]	@ float
	str	r0, [r9, #52]	@ float
	ldr	r1, [r2]
	mov	r0, r2
	ldr	r2, [r1]
	blx	r2
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r9, #264]
	ldr	r4, [r9, #280]	@ float
	mov	r5, r0
	mov	r0, r2
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	blx	r2
	str	r5, [r9, #172]	@ float
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r9, #16]	@ float
	ldr	r4, [r9, #12]	@ float
	str	r2, [r9, #28]	@ float
	str	r2, [r9, #152]	@ float
	ldr	r1, [r9, #280]	@ float
	str	r4, [r9, #24]	@ float
	str	r4, [r9, #148]	@ float
	str	r0, [r9, #176]	@ float
	mov	r0, r2
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r9, #276]	@ float
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	mov	r2, #2
	str	r5, [r9, #288]	@ float
	str	r2, [r9, #4]
	str	r0, [r9, #284]	@ float
	mov	r0, r9
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L4:
	.align	2
.L3:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE, .-_ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE
	.global	_ZN6ButtonC1EffffP10CIw2DImageS1_PFvvE
	.hidden	_ZN6ButtonC1EffffP10CIw2DImageS1_PFvvE
	.set	_ZN6ButtonC1EffffP10CIw2DImageS1_PFvvE,_ZN6ButtonC2EffffP10CIw2DImageS1_PFvvE
	.section	.text._ZN6ButtonD2Ev,"ax",%progbits
	.align	2
	.global	_ZN6ButtonD2Ev
	.hidden	_ZN6ButtonD2Ev
	.type	_ZN6ButtonD2Ev, %function
_ZN6ButtonD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6
	stmfd	sp!, {r4, lr}
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #144
	bl	_ZN6SpriteD1Ev(PLT)
	add	r0, r4, #20
	bl	_ZN6SpriteD1Ev(PLT)
	mov	r0, r4
	bl	_ZN10GuiElementD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN6ButtonD2Ev, .-_ZN6ButtonD2Ev
	.global	_ZN6ButtonD1Ev
	.hidden	_ZN6ButtonD1Ev
	.set	_ZN6ButtonD1Ev,_ZN6ButtonD2Ev
	.section	.text._ZN6ButtonD0Ev,"ax",%progbits
	.align	2
	.global	_ZN6ButtonD0Ev
	.hidden	_ZN6ButtonD0Ev
	.type	_ZN6ButtonD0Ev, %function
_ZN6ButtonD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	stmfd	sp!, {r4, lr}
.LPIC2:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #144
	bl	_ZN6SpriteD1Ev(PLT)
	add	r0, r4, #20
	bl	_ZN6SpriteD1Ev(PLT)
	mov	r0, r4
	bl	_ZN10GuiElementD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	_ZN6ButtonD0Ev, .-_ZN6ButtonD0Ev
	.global	__aeabi_i2f
	.global	__aeabi_fcmpge
	.global	__aeabi_fcmple
	.section	.text._ZN6Button6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN6Button6UpdateEf
	.hidden	_ZN6Button6UpdateEf
	.type	_ZN6Button6UpdateEf, %function
_ZN6Button6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L30
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
.LPIC3:
	add	r2, pc, r2
	ldrb	ip, [r0, #268]	@ zero_extendqisi2
	ldr	r3, .L30+4
	mov	r4, r0
	strb	ip, [r0, #269]
	ldr	r3, [r2, r3]
	mov	r5, r1
	ldrb	r2, [r3, #24]	@ zero_extendqisi2
	ldmia	r3, {r0, r6}
	ldrb	r3, [r3, #25]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L12
	bl	__aeabi_i2f(PLT)
	ldr	r1, [r4, #12]	@ float
	mov	r7, r0
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	beq	.L13
	mov	r0, r7
	ldr	r1, [r4, #284]	@ float
	bl	__aeabi_fcmple(PLT)
	cmp	r0, #0
	beq	.L13
	mov	r0, r6
	bl	__aeabi_i2f(PLT)
	ldr	r1, [r4, #16]	@ float
	mov	r6, r0
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	beq	.L13
	mov	r0, r6
	ldr	r1, [r4, #288]	@ float
	bl	__aeabi_fcmple(PLT)
	cmp	r0, #0
	movne	r3, #1
	strneb	r3, [r4, #268]
	bne	.L18
.L13:
	mov	r3, #0
	strb	r3, [r4, #268]
.L18:
	add	r0, r4, #20
	mov	r1, r5
	mov	r2, #1065353216
	bl	_ZN6Sprite6UpdateEff(PLT)
	add	r0, r4, #144
	mov	r1, r5
	mov	r2, #1065353216
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	b	_ZN6Sprite6UpdateEff(PLT)
.L12:
	cmp	r3, #0
	strb	r2, [r4, #268]
	beq	.L18
	cmp	ip, #0
	beq	.L18
	ldr	r3, [r4, #272]
	blx	r3
	b	.L18
.L31:
	.align	2
.L30:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	_ZN5Input9g_TouchesE(GOT)
	.size	_ZN6Button6UpdateEf, .-_ZN6Button6UpdateEf
	.section	.text._ZN6Button6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN6Button6RenderEv
	.hidden	_ZN6Button6RenderEv
	.type	_ZN6Button6RenderEv, %function
_ZN6Button6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #268]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L34
	add	r0, r0, #20
	b	_ZN6Sprite6RenderEv(PLT)
.L34:
	add	r0, r0, #144
	b	_ZN6Sprite6RenderEv(PLT)
	.size	_ZN6Button6RenderEv, .-_ZN6Button6RenderEv
	.hidden	_ZTS6Button
	.global	_ZTS6Button
	.hidden	_ZTI6Button
	.global	_ZTI6Button
	.hidden	_ZTV6Button
	.global	_ZTV6Button
	.section	.rodata
	.align	2
	.type	_ZTS6Button, %object
	.size	_ZTS6Button, 8
_ZTS6Button:
	.ascii	"6Button\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV6Button, %object
	.size	_ZTV6Button, 28
_ZTV6Button:
	.word	0
	.word	_ZTI6Button
	.word	_ZN6ButtonD1Ev
	.word	_ZN6ButtonD0Ev
	.word	_ZN6Button6UpdateEf
	.word	_ZN6Button12UpdateLayoutEffff
	.word	_ZN6Button6RenderEv
	.type	_ZTI6Button, %object
	.size	_ZTI6Button, 12
_ZTI6Button:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS6Button
	.word	_ZTI10GuiElement
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
