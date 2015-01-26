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
	.file	"Trackpad.cpp"
	.global	__aeabi_fdiv
	.global	__aeabi_fadd
	.section	.text._ZN8Trackpad12UpdateLayoutEffff,"ax",%progbits
	.align	2
	.global	_ZN8Trackpad12UpdateLayoutEffff
	.hidden	_ZN8Trackpad12UpdateLayoutEffff
	.type	_ZN8Trackpad12UpdateLayoutEffff, %function
_ZN8Trackpad12UpdateLayoutEffff:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, [r0, #148]
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
	ldr	r3, [r4, #148]
	ldr	r5, [r4, #280]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	str	r6, [r4, #56]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #272]
	ldr	r5, [r4, #276]	@ float
	str	r0, [r4, #60]	@ float
	ldr	r2, [r3]
	mov	r0, r3
	ldr	r3, [r2]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #272]
	ldr	r5, [r4, #280]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	str	r6, [r4, #180]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #16]	@ float
	ldr	r5, [r4, #12]	@ float
	str	r3, [r4, #36]	@ float
	str	r3, [r4, #160]	@ float
	ldr	r1, [r4, #280]	@ float
	str	r5, [r4, #32]	@ float
	str	r5, [r4, #156]	@ float
	str	r0, [r4, #184]	@ float
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r4, #276]	@ float
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	str	r6, [r4, #288]	@ float
	str	r0, [r4, #284]	@ float
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN8Trackpad12UpdateLayoutEffff, .-_ZN8Trackpad12UpdateLayoutEffff
	.section	.text._ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E,"ax",%progbits
	.align	2
	.global	_ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E
	.hidden	_ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E
	.type	_ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E, %function
_ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	mov	r5, r3
	mov	r8, r1
	mov	r7, r2
	ldr	r6, [sp, #40]	@ float
	ldr	r9, [sp, #52]
	ldr	fp, [sp, #44]
	bl	_ZN10GuiElementC2Ev(PLT)
	ldr	r1, .L3
	mov	r2, #0
.LPIC0:
	add	r1, pc, r1
	add	r1, r1, #8
	add	r10, r4, #28
	strb	r2, [r4, #20]
	strb	r2, [r4, #21]
	str	r1, [r4]
	str	r9, [r4, #24]
	str	r8, [r4, #12]	@ float
	add	r9, r4, #152
	str	r7, [r4, #16]	@ float
	mov	r0, r10
	bl	_ZN6SpriteC1Ev(PLT)
	mov	r0, r9
	bl	_ZN6SpriteC1Ev(PLT)
	mov	r0, r10
	str	r5, [r4, #276]	@ float
	str	r6, [r4, #280]	@ float
	mov	r1, fp
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r1, [sp, #48]
	mov	r0, r9
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r0, [r4, #148]
	str	r5, [r4, #276]	@ float
	str	r6, [r4, #280]	@ float
	str	r8, [r4, #12]	@ float
	str	r7, [r4, #16]	@ float
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #148]
	ldr	r5, [r4, #280]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	str	r6, [r4, #56]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #272]
	ldr	r5, [r4, #276]	@ float
	str	r0, [r4, #60]	@ float
	ldr	r2, [r3]
	mov	r0, r3
	ldr	r3, [r2]
	blx	r3
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #272]
	ldr	r5, [r4, #280]	@ float
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	blx	r3
	str	r6, [r4, #180]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #16]	@ float
	ldr	r5, [r4, #12]	@ float
	str	r3, [r4, #36]	@ float
	str	r3, [r4, #160]	@ float
	ldr	r1, [r4, #280]	@ float
	str	r5, [r4, #32]	@ float
	str	r5, [r4, #156]	@ float
	str	r0, [r4, #184]	@ float
	mov	r0, r3
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r4, #276]	@ float
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r3, #3
	str	r6, [r4, #288]	@ float
	str	r3, [r4, #4]
	str	r0, [r4, #284]	@ float
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L4:
	.align	2
.L3:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E, .-_ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E
	.global	_ZN8TrackpadC1EffffP10CIw2DImageS1_PFv8CIwFVec2E
	.hidden	_ZN8TrackpadC1EffffP10CIw2DImageS1_PFv8CIwFVec2E
	.set	_ZN8TrackpadC1EffffP10CIw2DImageS1_PFv8CIwFVec2E,_ZN8TrackpadC2EffffP10CIw2DImageS1_PFv8CIwFVec2E
	.section	.text._ZN8TrackpadD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8TrackpadD2Ev
	.hidden	_ZN8TrackpadD2Ev
	.type	_ZN8TrackpadD2Ev, %function
_ZN8TrackpadD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6
	stmfd	sp!, {r4, lr}
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #152
	bl	_ZN6SpriteD1Ev(PLT)
	add	r0, r4, #28
	bl	_ZN6SpriteD1Ev(PLT)
	mov	r0, r4
	bl	_ZN10GuiElementD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN8TrackpadD2Ev, .-_ZN8TrackpadD2Ev
	.global	_ZN8TrackpadD1Ev
	.hidden	_ZN8TrackpadD1Ev
	.set	_ZN8TrackpadD1Ev,_ZN8TrackpadD2Ev
	.section	.text._ZN8TrackpadD0Ev,"ax",%progbits
	.align	2
	.global	_ZN8TrackpadD0Ev
	.hidden	_ZN8TrackpadD0Ev
	.type	_ZN8TrackpadD0Ev, %function
_ZN8TrackpadD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	stmfd	sp!, {r4, lr}
.LPIC2:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #152
	bl	_ZN6SpriteD1Ev(PLT)
	add	r0, r4, #28
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
	.size	_ZN8TrackpadD0Ev, .-_ZN8TrackpadD0Ev
	.global	__aeabi_i2f
	.global	__aeabi_fcmpge
	.global	__aeabi_fcmple
	.global	__aeabi_fmul
	.global	__aeabi_fsub
	.section	.text._ZN8Trackpad6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN8Trackpad6UpdateEf
	.hidden	_ZN8Trackpad6UpdateEf
	.type	_ZN8Trackpad6UpdateEf, %function
_ZN8Trackpad6UpdateEf:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldrb	lr, [r0, #20]	@ zero_extendqisi2
	ldr	r2, .L30
	ldr	r0, .L30+4
	ldr	r3, .L30+8
.LPIC19:
	add	r2, pc, r2
.LPIC20:
	add	r0, pc, r0
	mvn	ip, #0
	sub	sp, sp, #28
	strb	lr, [r4, #21]
	str	ip, [r2]
	ldr	r3, [r0, r3]
	mov	fp, #0
	str	r1, [sp, #4]	@ float
	add	r9, r3, #24
	mov	r7, fp
.L20:
	ldrb	r1, [r9]	@ zero_extendqisi2
	ldr	r0, [r9, #-24]
	ldr	r10, [r9, #-20]
	cmp	r1, #0
	beq	.L12
	bl	__aeabi_i2f(PLT)
	ldr	r6, [r4, #12]	@ float
	mov	r1, r6
	mov	r5, r0
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	mov	r0, r5
	beq	.L13
	ldr	r8, [r4, #284]	@ float
	mov	r1, r8
	bl	__aeabi_fcmple(PLT)
	cmp	r0, #0
	mov	r0, r10
	beq	.L13
	bl	__aeabi_i2f(PLT)
	ldr	r3, [r4, #16]	@ float
	mov	r1, r3
	str	r3, [sp, #8]	@ float
	mov	r10, r0
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	mov	r0, r10
	beq	.L13
	ldr	r3, [r4, #288]	@ float
	mov	r1, r3
	str	r3, [sp, #12]	@ float
	bl	__aeabi_fcmple(PLT)
	cmp	r0, #0
	bne	.L29
.L13:
	strb	r7, [r4, #20]
.L12:
	add	fp, fp, #1
	cmp	fp, #10
	add	r9, r9, #32
	bne	.L20
	mov	r3, #0
	strb	r3, [r4, #20]
.L18:
	add	r0, r4, #28
	ldr	r1, [sp, #4]	@ float
	mov	r2, #1065353216
	bl	_ZN6Sprite6UpdateEff(PLT)
	add	r0, r4, #152
	ldr	r1, [sp, #4]	@ float
	mov	r2, #1065353216
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	_ZN6Sprite6UpdateEff(PLT)
.L29:
	mov	r3, #1
	strb	r3, [r4, #20]
	mov	r1, r8
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fsub(PLT)
	ldr	r1, [sp, #12]	@ float
	ldr	r5, [r4, #24]
	str	r0, [sp, #16]	@ float
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	add	r3, sp, #24
	str	r0, [sp, #20]	@ float
	ldmdb	r3, {r0, r1}
	blx	r5
	ldr	r3, .L30+12
.LPIC21:
	add	r3, pc, r3
	str	fp, [r3]
	b	.L18
.L31:
	.align	2
.L30:
	.word	.LANCHOR1-(.LPIC19+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+8)
	.word	_ZN5Input9g_TouchesE(GOT)
	.word	.LANCHOR1-(.LPIC21+8)
	.size	_ZN8Trackpad6UpdateEf, .-_ZN8Trackpad6UpdateEf
	.section	.text._ZN8Trackpad6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN8Trackpad6RenderEv
	.hidden	_ZN8Trackpad6RenderEv
	.type	_ZN8Trackpad6RenderEv, %function
_ZN8Trackpad6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #20]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L34
	add	r0, r0, #28
	b	_ZN6Sprite6RenderEv(PLT)
.L34:
	add	r0, r0, #152
	b	_ZN6Sprite6RenderEv(PLT)
	.size	_ZN8Trackpad6RenderEv, .-_ZN8Trackpad6RenderEv
	.hidden	_ZTS8Trackpad
	.global	_ZTS8Trackpad
	.hidden	_ZTI8Trackpad
	.global	_ZTI8Trackpad
	.hidden	_ZTV8Trackpad
	.global	_ZTV8Trackpad
	.hidden	_ZN8Trackpad9m_TouchIDE
	.global	_ZN8Trackpad9m_TouchIDE
	.section	.rodata
	.align	2
	.type	_ZTS8Trackpad, %object
	.size	_ZTS8Trackpad, 10
_ZTS8Trackpad:
	.ascii	"8Trackpad\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV8Trackpad, %object
	.size	_ZTV8Trackpad, 28
_ZTV8Trackpad:
	.word	0
	.word	_ZTI8Trackpad
	.word	_ZN8TrackpadD1Ev
	.word	_ZN8TrackpadD0Ev
	.word	_ZN8Trackpad6UpdateEf
	.word	_ZN8Trackpad12UpdateLayoutEffff
	.word	_ZN8Trackpad6RenderEv
	.type	_ZTI8Trackpad, %object
	.size	_ZTI8Trackpad, 12
_ZTI8Trackpad:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS8Trackpad
	.word	_ZTI10GuiElement
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZN8Trackpad9m_TouchIDE, %object
	.size	_ZN8Trackpad9m_TouchIDE, 4
_ZN8Trackpad9m_TouchIDE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
