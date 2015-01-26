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
	.file	"Checkbox.cpp"
	.global	__aeabi_fdiv
	.global	__aeabi_fadd
	.section	.text._ZN8Checkbox12UpdateLayoutEffff,"ax",%progbits
	.align	2
	.global	_ZN8Checkbox12UpdateLayoutEffff
	.hidden	_ZN8Checkbox12UpdateLayoutEffff
	.type	_ZN8Checkbox12UpdateLayoutEffff, %function
_ZN8Checkbox12UpdateLayoutEffff:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, [r0, #140]
	ldr	ip, [sp, #16]	@ float
	str	r2, [r4, #16]	@ float
	str	ip, [r4, #404]	@ float
	str	r1, [r4, #12]	@ float
	mov	r5, r3
	str	r3, [r4, #400]	@ float
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #140]
	ldr	r5, [r4, #404]	@ float
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
	ldr	r5, [r4, #400]	@ float
	str	r0, [r4, #52]	@ float
	ldr	r2, [r3]
	mov	r0, r3
	ldr	r3, [r2]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #264]
	ldr	r5, [r4, #404]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	str	r6, [r4, #172]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #264]
	ldr	r5, [r4, #400]	@ float
	str	r0, [r4, #176]	@ float
	ldr	r2, [r3]
	mov	r0, r3
	ldr	r3, [r2]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #264]
	ldr	r5, [r4, #404]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	str	r6, [r4, #296]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #16]	@ float
	ldr	r5, [r4, #12]	@ float
	str	r3, [r4, #28]	@ float
	str	r3, [r4, #152]	@ float
	str	r3, [r4, #276]	@ float
	ldr	r1, [r4, #404]	@ float
	str	r5, [r4, #24]	@ float
	str	r5, [r4, #148]	@ float
	str	r5, [r4, #272]	@ float
	str	r0, [r4, #300]	@ float
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r4, #400]	@ float
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	str	r6, [r4, #412]	@ float
	str	r0, [r4, #408]	@ float
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN8Checkbox12UpdateLayoutEffff, .-_ZN8Checkbox12UpdateLayoutEffff
	.section	.text._ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE,"ax",%progbits
	.align	2
	.global	_ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE
	.hidden	_ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE
	.type	_ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE, %function
_ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	mov	r4, r3
	mov	r7, r1
	mov	r6, r2
	ldr	r5, [sp, #40]	@ float
	bl	_ZN10GuiElementC2Ev(PLT)
	ldr	r2, .L3
	add	fp, r10, #20
.LPIC0:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r2, [r10]
	add	r9, r10, #144
	str	r7, [r10, #12]	@ float
	str	r6, [r10, #16]	@ float
	mov	r0, fp
	bl	_ZN6SpriteC1Ev(PLT)
	add	r8, r10, #268
	mov	r0, r9
	bl	_ZN6SpriteC1Ev(PLT)
	mov	r0, r8
	bl	_ZN6SpriteC1Ev(PLT)
	ldr	r3, [sp, #56]
	mov	ip, #1
	mov	r2, #0
	str	r3, [r10, #396]
	strb	ip, [r10, #392]
	strb	r2, [r10, #393]
	strb	r2, [r10, #394]
	mov	r0, fp
	str	r4, [r10, #400]	@ float
	str	r5, [r10, #404]	@ float
	ldr	r1, [sp, #44]
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	mov	r0, r9
	ldr	r1, [sp, #48]
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r1, [sp, #52]
	mov	r0, r8
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r0, [r10, #140]
	str	r4, [r10, #400]	@ float
	str	r5, [r10, #404]	@ float
	str	r7, [r10, #12]	@ float
	str	r6, [r10, #16]	@ float
	ldr	r2, [r0]
	ldr	r2, [r2]
	blx	r2
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r10, #140]
	ldr	r4, [r10, #404]	@ float
	mov	r5, r0
	mov	r0, r2
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	blx	r2
	str	r5, [r10, #48]	@ float
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r10, #264]
	ldr	r4, [r10, #400]	@ float
	str	r0, [r10, #52]	@ float
	ldr	r1, [r2]
	mov	r0, r2
	ldr	r2, [r1]
	blx	r2
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r10, #264]
	ldr	r4, [r10, #404]	@ float
	mov	r5, r0
	mov	r0, r2
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	blx	r2
	str	r5, [r10, #172]	@ float
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r10, #264]
	ldr	r4, [r10, #400]	@ float
	str	r0, [r10, #176]	@ float
	ldr	r1, [r2]
	mov	r0, r2
	ldr	r2, [r1]
	blx	r2
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r10, #264]
	ldr	r4, [r10, #404]	@ float
	mov	r5, r0
	mov	r0, r2
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	blx	r2
	str	r5, [r10, #296]	@ float
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [r10, #16]	@ float
	ldr	r4, [r10, #12]	@ float
	str	r2, [r10, #28]	@ float
	str	r2, [r10, #152]	@ float
	str	r2, [r10, #276]	@ float
	ldr	r1, [r10, #404]	@ float
	str	r4, [r10, #24]	@ float
	str	r4, [r10, #148]	@ float
	str	r4, [r10, #272]	@ float
	str	r0, [r10, #300]	@ float
	mov	r0, r2
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r10, #400]	@ float
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	mov	r2, #5
	str	r5, [r10, #412]	@ float
	str	r2, [r10, #4]
	str	r0, [r10, #408]	@ float
	mov	r0, r10
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L4:
	.align	2
.L3:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE, .-_ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE
	.global	_ZN8CheckboxC1EffffP10CIw2DImageS1_S1_PFvbE
	.hidden	_ZN8CheckboxC1EffffP10CIw2DImageS1_S1_PFvbE
	.set	_ZN8CheckboxC1EffffP10CIw2DImageS1_S1_PFvbE,_ZN8CheckboxC2EffffP10CIw2DImageS1_S1_PFvbE
	.section	.text._ZN8CheckboxD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8CheckboxD2Ev
	.hidden	_ZN8CheckboxD2Ev
	.type	_ZN8CheckboxD2Ev, %function
_ZN8CheckboxD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6
	stmfd	sp!, {r4, lr}
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #268
	bl	_ZN6SpriteD1Ev(PLT)
	add	r0, r4, #144
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
	.size	_ZN8CheckboxD2Ev, .-_ZN8CheckboxD2Ev
	.global	_ZN8CheckboxD1Ev
	.hidden	_ZN8CheckboxD1Ev
	.set	_ZN8CheckboxD1Ev,_ZN8CheckboxD2Ev
	.section	.text._ZN8CheckboxD0Ev,"ax",%progbits
	.align	2
	.global	_ZN8CheckboxD0Ev
	.hidden	_ZN8CheckboxD0Ev
	.type	_ZN8CheckboxD0Ev, %function
_ZN8CheckboxD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	stmfd	sp!, {r4, lr}
.LPIC2:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #268
	bl	_ZN6SpriteD1Ev(PLT)
	add	r0, r4, #144
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
	.size	_ZN8CheckboxD0Ev, .-_ZN8CheckboxD0Ev
	.global	__aeabi_i2f
	.global	__aeabi_fcmpge
	.global	__aeabi_fcmple
	.section	.text._ZN8Checkbox6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN8Checkbox6UpdateEf
	.hidden	_ZN8Checkbox6UpdateEf
	.type	_ZN8Checkbox6UpdateEf, %function
_ZN8Checkbox6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L30
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
.LPIC3:
	add	r2, pc, r2
	ldrb	ip, [r0, #393]	@ zero_extendqisi2
	ldr	r3, .L30+4
	mov	r4, r0
	strb	ip, [r0, #394]
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
	ldr	r1, [r4, #408]	@ float
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
	ldr	r1, [r4, #412]	@ float
	bl	__aeabi_fcmple(PLT)
	cmp	r0, #0
	movne	r3, #1
	strneb	r3, [r4, #393]
	bne	.L18
.L13:
	mov	r3, #0
	strb	r3, [r4, #393]
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
	strb	r2, [r4, #393]
	beq	.L18
	cmp	ip, #0
	beq	.L18
	ldrb	r0, [r4, #392]	@ zero_extendqisi2
	ldr	r3, [r4, #396]
	eor	r0, r0, #1
	strb	r0, [r4, #392]
	blx	r3
	b	.L18
.L31:
	.align	2
.L30:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	_ZN5Input9g_TouchesE(GOT)
	.size	_ZN8Checkbox6UpdateEf, .-_ZN8Checkbox6UpdateEf
	.section	.text._ZN8Checkbox6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN8Checkbox6RenderEv
	.hidden	_ZN8Checkbox6RenderEv
	.type	_ZN8Checkbox6RenderEv, %function
_ZN8Checkbox6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldrb	r3, [r0, #393]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r0, r0, #144
	addeq	r0, r4, #20
	bl	_ZN6Sprite6RenderEv(PLT)
	ldrb	r3, [r4, #392]	@ zero_extendqisi2
	cmp	r3, #0
	ldmeqfd	sp!, {r4, pc}
	add	r0, r4, #268
	ldmfd	sp!, {r4, lr}
	b	_ZN6Sprite6RenderEv(PLT)
	.size	_ZN8Checkbox6RenderEv, .-_ZN8Checkbox6RenderEv
	.hidden	_ZTS8Checkbox
	.global	_ZTS8Checkbox
	.hidden	_ZTI8Checkbox
	.global	_ZTI8Checkbox
	.hidden	_ZTV8Checkbox
	.global	_ZTV8Checkbox
	.section	.rodata
	.align	2
	.type	_ZTS8Checkbox, %object
	.size	_ZTS8Checkbox, 10
_ZTS8Checkbox:
	.ascii	"8Checkbox\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV8Checkbox, %object
	.size	_ZTV8Checkbox, 28
_ZTV8Checkbox:
	.word	0
	.word	_ZTI8Checkbox
	.word	_ZN8CheckboxD1Ev
	.word	_ZN8CheckboxD0Ev
	.word	_ZN8Checkbox6UpdateEf
	.word	_ZN8Checkbox12UpdateLayoutEffff
	.word	_ZN8Checkbox6RenderEv
	.type	_ZTI8Checkbox, %object
	.size	_ZTI8Checkbox, 12
_ZTI8Checkbox:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS8Checkbox
	.word	_ZTI10GuiElement
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
