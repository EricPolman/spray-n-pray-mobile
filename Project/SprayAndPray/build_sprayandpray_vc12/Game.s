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
	.file	"Game.cpp"
	.section	.text._Z38OnScreenSizeOrientationChangedCallbackPvS_,"ax",%progbits
	.align	2
	.global	_Z38OnScreenSizeOrientationChangedCallbackPvS_
	.hidden	_Z38OnScreenSizeOrientationChangedCallbackPvS_
	.type	_Z38OnScreenSizeOrientationChangedCallbackPvS_, %function
_Z38OnScreenSizeOrientationChangedCallbackPvS_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	mov	r2, #1
.LPIC0:
	add	r3, pc, r3
	strb	r2, [r3]
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_Z38OnScreenSizeOrientationChangedCallbackPvS_, .-_Z38OnScreenSizeOrientationChangedCallbackPvS_
	.section	.text._ZN4GameD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameD2Ev
	.hidden	_ZN4GameD2Ev
	.type	_ZN4GameD2Ev, %function
_ZN4GameD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0, #36]
	ldr	r5, .L26
	cmp	r0, #0
.LPIC1:
	add	r5, pc, r5
	beq	.L5
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L5:
	ldr	r0, [r4, #40]
	cmp	r0, #0
	beq	.L6
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L6:
	ldr	r0, [r4, #32]
	cmp	r0, #0
	beq	.L7
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L7:
	ldr	r3, .L26+4
	ldr	r3, [r5, r3]
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L8
	mov	r0, r5
	bl	_ZN16CollisionManagerD1Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
.L8:
	ldr	r1, .L26+8
	mov	r0, #1
.LPIC2:
	add	r1, pc, r1
	bl	s3eSurfaceUnRegister(PLT)
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.L9
	bl	free(PLT)
.L9:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.word	_Z38OnScreenSizeOrientationChangedCallbackPvS_-(.LPIC2+8)
	.size	_ZN4GameD2Ev, .-_ZN4GameD2Ev
	.global	_ZN4GameD1Ev
	.hidden	_ZN4GameD1Ev
	.set	_ZN4GameD1Ev,_ZN4GameD2Ev
	.global	__aeabi_ui2f
	.global	__aeabi_fdiv
	.global	__aeabi_fcmpgt
	.global	__aeabi_fadd
	.section	.text._ZN4Game6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN4Game6UpdateEf
	.hidden	_ZN4Game6UpdateEf
	.type	_ZN4Game6UpdateEf, %function
_ZN4Game6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	ldr	r5, .L43
	ldr	r3, .L43+4
.LPIC3:
	add	r5, pc, r5
.LPIC4:
	add	r3, pc, r3
	ldrb	r2, [r5]	@ zero_extendqisi2
	mov	r6, r1
	cmp	r2, #0
	beq	.L29
	ldr	r2, .L43+8
	ldr	r10, .L43+12
	mov	r9, #1
	ldr	r3, [r3, r2]
.LPIC8:
	add	r10, pc, r10
	ldr	r8, [r3]
	ldr	r0, [r8, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r7, r0
	str	r7, [r5, #4]	@ float
	ldr	r0, [r8, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r8, r0
	mov	r1, r0
	str	r8, [r5, #8]	@ float
	mov	r0, r7
	bl	__aeabi_fdiv(PLT)
	mov	r1, r8
	str	r0, [r5, #12]	@ float
	mov	r0, r7
	bl	__aeabi_fcmpgt(PLT)
	mov	r1, #0
	cmp	r0, #0
	moveq	r9, r0
	ldr	r0, [r4, #44]
	eor	r9, r9, #1
	strb	r9, [r10]
	ldr	r3, [r0]
	ldr	r3, [r3, #28]
	blx	r3
	ldr	r3, .L43+16
	mov	r2, #0
.LPIC9:
	add	r3, pc, r3
	strb	r2, [r3]
.L29:
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L32
	cmp	r3, #3
	beq	.L32
.L31:
	ldr	r3, [r4, #44]
	mov	r1, r6
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	blx	r3
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L32:
	ldr	r1, [r4, #24]	@ float
	mov	r0, r6
	bl	__aeabi_fadd(PLT)
	ldr	r1, .L43+20
	mov	r5, r0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	movne	r2, #0
	movne	r3, #4
	streq	r5, [r4, #24]	@ float
	strne	r2, [r4, #24]	@ float
	strne	r3, [r4]
	b	.L31
.L44:
	.align	2
.L43:
	.word	.LANCHOR0-(.LPIC3+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	g_IwGxState(GOT)
	.word	.LANCHOR1-(.LPIC8+8)
	.word	.LANCHOR0-(.LPIC9+8)
	.word	1082130432
	.size	_ZN4Game6UpdateEf, .-_ZN4Game6UpdateEf
	.section	.text._ZN4Game6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN4Game6RenderEv
	.hidden	_ZN4Game6RenderEv
	.type	_ZN4Game6RenderEv, %function
_ZN4Game6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, [r0, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	blx	r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN4Game6RenderEv, .-_ZN4Game6RenderEv
	.section	.text._ZN4Game13StartButtonCBEv,"ax",%progbits
	.align	2
	.global	_ZN4Game13StartButtonCBEv
	.hidden	_ZN4Game13StartButtonCBEv
	.type	_ZN4Game13StartButtonCBEv, %function
_ZN4Game13StartButtonCBEv:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L57
	stmfd	sp!, {r4, r5, r6, r7, lr}
.LPIC10:
	add	r3, pc, r3
	mov	r0, #2
	ldr	r4, [r3, #16]
	mov	r2, #0
	ldr	r1, .L57+4
	ldr	r3, [r4, #40]
	str	r0, [r4]
.LPIC11:
	add	r1, pc, r1
	ldr	r3, [r3, #8]
	sub	sp, sp, #36
	ldr	r3, [r3, #8]
	strb	r2, [r3, #8]
	ldr	r3, [r4]
	sub	r3, r3, #1
	cmp	r3, #5
	addls	pc, pc, r3, asl #2
	b	.L46
.L49:
	b	.L48
	b	.L50
	b	.L46
	b	.L46
	b	.L51
	b	.L52
.L52:
	ldr	r3, [r4, #40]
	ldr	r2, .L57+8
	mov	r5, #1
	ldr	r3, [r3, #8]
	ldr	r4, .L57+12
	ldr	r0, [r3, #4]
.LPIC12:
	add	r4, pc, r4
	strb	r5, [r0, #8]
	ldr	r2, [r1, r2]
	ldr	r3, [r4, #20]
	ldr	r2, [r2]
	cmp	r2, r3
	bls	.L53
	ldr	r0, .L57+16
	ldr	r1, .L57+20
	mov	r3, #0
.LPIC15:
	add	r1, pc, r1
.LPIC14:
	add	r0, pc, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r2, [r4, #20]
	bl	s3eFileOpen(PLT)
	ldr	r1, .L57+24
	ldr	r2, [r4, #20]
.LPIC16:
	add	r1, pc, r1
	mov	r7, r0
	mov	r0, sp
	bl	sprintf(PLT)
	mov	r0, sp
	bl	strlen(PLT)
	mov	r2, r5
	mov	r3, r7
	mov	r1, r0
	mov	r0, sp
	bl	s3eFileWrite(PLT)
	mov	r0, r7
	bl	s3eFileClose(PLT)
.L53:
	ldr	r4, .L57+28
.LPIC18:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	beq	.L46
	mov	r0, r4
	bl	s3eFileDelete(PLT)
.L46:
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L48:
	ldr	r3, [r4, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #36]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
.L51:
	ldr	r3, [r4, #40]
	mov	r2, #1
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #8]
	strb	r2, [r3, #8]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L50:
	ldr	r3, [r4, #40]
	mov	r2, #0
	mov	r5, #0
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #4]
	strb	r2, [r3, #8]
	ldr	r3, [r4, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #40]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
	mov	r3, #4
	str	r3, [r4]
	mov	r1, r5
	mov	r0, r4
	bl	_ZN4Game6UpdateEf(PLT)
	mov	r3, #3
	str	r5, [r4, #24]	@ float
	str	r3, [r4]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L58:
	.align	2
.L57:
	.word	.LANCHOR0-(.LPIC10+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.word	.LANCHOR0-(.LPIC12+8)
	.word	.LC0-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.word	.LC2-(.LPIC16+8)
	.word	.LC3-(.LPIC18+8)
	.size	_ZN4Game13StartButtonCBEv, .-_ZN4Game13StartButtonCBEv
	.section	.text._ZN4Game16SettingsButtonCBEv,"ax",%progbits
	.align	2
	.global	_ZN4Game16SettingsButtonCBEv
	.hidden	_ZN4Game16SettingsButtonCBEv
	.type	_ZN4Game16SettingsButtonCBEv, %function
_ZN4Game16SettingsButtonCBEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L60
	mov	r1, #1
.LPIC20:
	add	r3, pc, r3
	ldr	r3, [r3, #16]
	ldr	r0, [r3, #36]
	b	_ZN4Menu4ShowE9MenuState(PLT)
.L61:
	.align	2
.L60:
	.word	.LANCHOR0-(.LPIC20+8)
	.size	_ZN4Game16SettingsButtonCBEv, .-_ZN4Game16SettingsButtonCBEv
	.section	.text._ZN4Game12BackButtonCBEv,"ax",%progbits
	.align	2
	.global	_ZN4Game12BackButtonCBEv
	.hidden	_ZN4Game12BackButtonCBEv
	.type	_ZN4Game12BackButtonCBEv, %function
_ZN4Game12BackButtonCBEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L63
	mov	r1, #0
.LPIC21:
	add	r3, pc, r3
	ldr	r3, [r3, #16]
	ldr	r0, [r3, #36]
	b	_ZN4Menu4ShowE9MenuState(PLT)
.L64:
	.align	2
.L63:
	.word	.LANCHOR0-(.LPIC21+8)
	.size	_ZN4Game12BackButtonCBEv, .-_ZN4Game12BackButtonCBEv
	.section	.text._ZN4Game10TrackpadCBE8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN4Game10TrackpadCBE8CIwFVec2
	.hidden	_ZN4Game10TrackpadCBE8CIwFVec2
	.type	_ZN4Game10TrackpadCBE8CIwFVec2, %function
_ZN4Game10TrackpadCBE8CIwFVec2:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L82
	stmfd	sp!, {r4, r5, r6, r7, lr}
.LPIC22:
	add	r2, pc, r2
	sub	sp, sp, #44
	ldr	r4, [r2, #16]
	ldr	ip, .L82+4
	stmia	sp, {r0, r1}
	ldr	r2, [r4]
.LPIC23:
	add	ip, pc, ip
	cmp	r2, #4
	beq	.L79
	cmp	r2, #5
	beq	.L80
.L65:
	add	sp, sp, #44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L80:
	ldr	r3, [r4, #40]
	mov	r2, #4
	str	r2, [r4]
	ldr	r3, [r3, #8]
	mov	r2, #0
	ldr	r3, [r3, #8]
	strb	r2, [r3, #8]
	ldr	r3, [r4]
	sub	r3, r3, #1
	cmp	r3, #5
	addls	pc, pc, r3, asl #2
	b	.L65
.L70:
	b	.L69
	b	.L71
	b	.L65
	b	.L65
	b	.L72
	b	.L73
.L69:
	ldr	r3, [r4, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #36]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
.L72:
	ldr	r3, [r4, #40]
	mov	r2, #1
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #8]
	strb	r2, [r3, #8]
	b	.L65
.L79:
	ldr	r0, [r4, #40]
	ldmia	sp, {r1, r2}
	bl	_ZN8GameView16TrackpadMovementE8CIwFVec2(PLT)
	b	.L65
.L73:
	ldr	r3, [r4, #40]
	ldr	r2, .L82+8
	mov	r5, #1
	ldr	r3, [r3, #8]
	ldr	r4, .L82+12
	ldr	r1, [r3, #4]
.LPIC24:
	add	r4, pc, r4
	strb	r5, [r1, #8]
	ldr	r2, [ip, r2]
	ldr	r3, [r4, #20]
	ldr	r2, [r2]
	cmp	r2, r3
	bhi	.L81
.L74:
	ldr	r4, .L82+16
.LPIC30:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	beq	.L65
	mov	r0, r4
	bl	s3eFileDelete(PLT)
	b	.L65
.L71:
	ldr	r3, [r4, #40]
	mov	r2, #0
	mov	r5, #0
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #4]
	strb	r2, [r3, #8]
	ldr	r3, [r4, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #40]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
	mov	r3, #4
	str	r3, [r4]
	mov	r1, r5
	mov	r0, r4
	bl	_ZN4Game6UpdateEf(PLT)
	mov	r3, #3
	str	r5, [r4, #24]	@ float
	str	r3, [r4]
	b	.L65
.L81:
	ldr	r0, .L82+20
	ldr	r1, .L82+24
	mov	r3, #0
.LPIC27:
	add	r1, pc, r1
.LPIC26:
	add	r0, pc, r0
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	str	r3, [sp, #36]
	str	r2, [r4, #20]
	bl	s3eFileOpen(PLT)
	ldr	r1, .L82+28
	add	r6, sp, #8
	ldr	r2, [r4, #20]
.LPIC28:
	add	r1, pc, r1
	mov	r7, r0
	mov	r0, r6
	bl	sprintf(PLT)
	mov	r0, r6
	bl	strlen(PLT)
	mov	r2, r5
	mov	r3, r7
	mov	r1, r0
	mov	r0, r6
	bl	s3eFileWrite(PLT)
	mov	r0, r7
	bl	s3eFileClose(PLT)
	b	.L74
.L83:
	.align	2
.L82:
	.word	.LANCHOR0-(.LPIC22+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+8)
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.word	.LANCHOR0-(.LPIC24+8)
	.word	.LC3-(.LPIC30+8)
	.word	.LC0-(.LPIC26+8)
	.word	.LC1-(.LPIC27+8)
	.word	.LC2-(.LPIC28+8)
	.size	_ZN4Game10TrackpadCBE8CIwFVec2, .-_ZN4Game10TrackpadCBE8CIwFVec2
	.section	.text._ZN4Game13SfxCheckboxCBEb,"ax",%progbits
	.align	2
	.global	_ZN4Game13SfxCheckboxCBEb
	.hidden	_ZN4Game13SfxCheckboxCBEb
	.type	_ZN4Game13SfxCheckboxCBEb, %function
_ZN4Game13SfxCheckboxCBEb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L85
.LPIC32:
	add	r3, pc, r3
	ldr	r3, [r3, #16]
	strb	r0, [r3, #20]
	ldr	r0, [r3, #36]
	b	_ZN4Menu20UpdateSettingsInFileEv(PLT)
.L86:
	.align	2
.L85:
	.word	.LANCHOR0-(.LPIC32+8)
	.size	_ZN4Game13SfxCheckboxCBEb, .-_ZN4Game13SfxCheckboxCBEb
	.section	.text._ZN4Game8SetStateE9GameState,"ax",%progbits
	.align	2
	.global	_ZN4Game8SetStateE9GameState
	.hidden	_ZN4Game8SetStateE9GameState
	.type	_ZN4Game8SetStateE9GameState, %function
_ZN4Game8SetStateE9GameState:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r3, #0
	ldr	r2, [r0, #40]
	str	r1, [r0]
	ldr	r1, .L98
	ldr	r2, [r2, #8]
.LPIC33:
	add	r1, pc, r1
	sub	sp, sp, #36
	ldr	r2, [r2, #8]
	mov	r4, r0
	strb	r3, [r2, #8]
	ldr	r3, [r0]
	sub	r3, r3, #1
	cmp	r3, #5
	addls	pc, pc, r3, asl #2
	b	.L87
.L90:
	b	.L89
	b	.L91
	b	.L87
	b	.L87
	b	.L92
	b	.L93
.L93:
	ldr	r3, [r0, #40]
	ldr	r2, .L98+4
	mov	r5, #1
	ldr	r3, [r3, #8]
	ldr	r4, .L98+8
	ldr	r0, [r3, #4]
.LPIC34:
	add	r4, pc, r4
	strb	r5, [r0, #8]
	ldr	r2, [r1, r2]
	ldr	r3, [r4, #20]
	ldr	r2, [r2]
	cmp	r2, r3
	bls	.L94
	ldr	r0, .L98+12
	ldr	r1, .L98+16
	mov	r3, #0
.LPIC37:
	add	r1, pc, r1
.LPIC36:
	add	r0, pc, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r2, [r4, #20]
	bl	s3eFileOpen(PLT)
	ldr	r1, .L98+20
	ldr	r2, [r4, #20]
.LPIC38:
	add	r1, pc, r1
	mov	r7, r0
	mov	r0, sp
	bl	sprintf(PLT)
	mov	r0, sp
	bl	strlen(PLT)
	mov	r2, r5
	mov	r3, r7
	mov	r1, r0
	mov	r0, sp
	bl	s3eFileWrite(PLT)
	mov	r0, r7
	bl	s3eFileClose(PLT)
.L94:
	ldr	r4, .L98+24
.LPIC40:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	beq	.L87
	mov	r0, r4
	bl	s3eFileDelete(PLT)
.L87:
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L89:
	ldr	r3, [r0, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #36]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
.L92:
	ldr	r3, [r4, #40]
	mov	r2, #1
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #8]
	strb	r2, [r3, #8]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L91:
	ldr	r3, [r0, #40]
	mov	r2, #0
	mov	r5, #0
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #4]
	strb	r2, [r3, #8]
	ldr	r3, [r0, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #40]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
	mov	r3, #4
	str	r3, [r4]
	mov	r1, r5
	mov	r0, r4
	bl	_ZN4Game6UpdateEf(PLT)
	mov	r3, #3
	str	r5, [r4, #24]	@ float
	str	r3, [r4]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L99:
	.align	2
.L98:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+8)
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.word	.LANCHOR0-(.LPIC34+8)
	.word	.LC0-(.LPIC36+8)
	.word	.LC1-(.LPIC37+8)
	.word	.LC2-(.LPIC38+8)
	.word	.LC3-(.LPIC40+8)
	.size	_ZN4Game8SetStateE9GameState, .-_ZN4Game8SetStateE9GameState
	.section	.text._ZN4Game10PlayerDiedEv,"ax",%progbits
	.align	2
	.global	_ZN4Game10PlayerDiedEv
	.hidden	_ZN4Game10PlayerDiedEv
	.type	_ZN4Game10PlayerDiedEv, %function
_ZN4Game10PlayerDiedEv:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r2, #6
	ldr	r3, [r0, #40]
	str	r2, [r0]
	mov	r2, #0
	ldr	r3, [r3, #8]
	ldr	r1, .L111
	sub	sp, sp, #36
	ldr	r3, [r3, #8]
.LPIC42:
	add	r1, pc, r1
	mov	r4, r0
	strb	r2, [r3, #8]
	ldr	r3, [r0]
	sub	r3, r3, #1
	cmp	r3, #5
	addls	pc, pc, r3, asl #2
	b	.L100
.L103:
	b	.L102
	b	.L104
	b	.L100
	b	.L100
	b	.L105
	b	.L106
.L106:
	ldr	r3, [r0, #40]
	ldr	r2, .L111+4
	mov	r5, #1
	ldr	r3, [r3, #8]
	ldr	r4, .L111+8
	ldr	r0, [r3, #4]
.LPIC43:
	add	r4, pc, r4
	strb	r5, [r0, #8]
	ldr	r2, [r1, r2]
	ldr	r3, [r4, #20]
	ldr	r2, [r2]
	cmp	r2, r3
	bls	.L107
	ldr	r0, .L111+12
	ldr	r1, .L111+16
	mov	r3, #0
.LPIC46:
	add	r1, pc, r1
.LPIC45:
	add	r0, pc, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r2, [r4, #20]
	bl	s3eFileOpen(PLT)
	ldr	r1, .L111+20
	ldr	r2, [r4, #20]
.LPIC47:
	add	r1, pc, r1
	mov	r7, r0
	mov	r0, sp
	bl	sprintf(PLT)
	mov	r0, sp
	bl	strlen(PLT)
	mov	r2, r5
	mov	r3, r7
	mov	r1, r0
	mov	r0, sp
	bl	s3eFileWrite(PLT)
	mov	r0, r7
	bl	s3eFileClose(PLT)
.L107:
	ldr	r4, .L111+24
.LPIC49:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	beq	.L100
	mov	r0, r4
	bl	s3eFileDelete(PLT)
.L100:
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L102:
	ldr	r3, [r0, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #36]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
.L105:
	ldr	r3, [r4, #40]
	mov	r2, #1
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #8]
	strb	r2, [r3, #8]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L104:
	ldr	r3, [r0, #40]
	mov	r2, #0
	mov	r5, #0
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #4]
	strb	r2, [r3, #8]
	ldr	r3, [r0, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r0, [r4, #40]
	str	r0, [r4, #44]
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
	mov	r3, #4
	str	r3, [r4]
	mov	r1, r5
	mov	r0, r4
	bl	_ZN4Game6UpdateEf(PLT)
	mov	r3, #3
	str	r5, [r4, #24]	@ float
	str	r3, [r4]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L112:
	.align	2
.L111:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC42+8)
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.word	.LANCHOR0-(.LPIC43+8)
	.word	.LC0-(.LPIC45+8)
	.word	.LC1-(.LPIC46+8)
	.word	.LC2-(.LPIC47+8)
	.word	.LC3-(.LPIC49+8)
	.size	_ZN4Game10PlayerDiedEv, .-_ZN4Game10PlayerDiedEv
	.section	.text._ZN4Game25RetrieveHighscoreFromFileEv,"ax",%progbits
	.align	2
	.global	_ZN4Game25RetrieveHighscoreFromFileEv
	.hidden	_ZN4Game25RetrieveHighscoreFromFileEv
	.type	_ZN4Game25RetrieveHighscoreFromFileEv, %function
_ZN4Game25RetrieveHighscoreFromFileEv:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #36
	ldr	r4, .L117
.LPIC51:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
	subs	r3, r0, #0
	movne	r4, sp
	bne	.L114
	ldr	r1, .L117+4
	mov	r0, r4
.LPIC53:
	add	r1, pc, r1
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	bl	s3eFileOpen(PLT)
	ldr	r3, .L117+8
	ldr	r1, .L117+12
.LPIC55:
	add	r3, pc, r3
.LPIC54:
	add	r1, pc, r1
	ldr	r2, [r3, #20]
	mov	r5, r0
	mov	r0, sp
	bl	sprintf(PLT)
	mov	r0, sp
	bl	strlen(PLT)
	mov	r3, r5
	mov	r2, #1
	mov	r1, r0
	mov	r0, sp
	bl	s3eFileWrite(PLT)
	mov	r0, r5
	bl	s3eFileClose(PLT)
.L114:
	ldr	r0, .L117+16
	ldr	r1, .L117+20
.LPIC56:
	add	r0, pc, r0
.LPIC57:
	add	r1, pc, r1
	bl	s3eFileOpen(PLT)
	mov	r5, r0
	bl	s3eFileGetSize(PLT)
	mov	r3, #0
	mov	r2, r5
	mov	r1, #30
	mov	r0, sp
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	bl	s3eFileReadString(PLT)
	mov	r0, sp
	bl	atoi(PLT)
	ldr	r3, .L117+24
.LPIC58:
	add	r3, pc, r3
	str	r0, [r3, #20]
	mov	r0, r5
	bl	s3eFileClose(PLT)
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L118:
	.align	2
.L117:
	.word	.LC0-(.LPIC51+8)
	.word	.LC1-(.LPIC53+8)
	.word	.LANCHOR0-(.LPIC55+8)
	.word	.LC2-(.LPIC54+8)
	.word	.LC0-(.LPIC56+8)
	.word	.LC4-(.LPIC57+8)
	.word	.LANCHOR0-(.LPIC58+8)
	.size	_ZN4Game25RetrieveHighscoreFromFileEv, .-_ZN4Game25RetrieveHighscoreFromFileEv
	.section	.text._ZN4Game21UpdateHighscoreInFileEv,"ax",%progbits
	.align	2
	.global	_ZN4Game21UpdateHighscoreInFileEv
	.hidden	_ZN4Game21UpdateHighscoreInFileEv
	.type	_ZN4Game21UpdateHighscoreInFileEv, %function
_ZN4Game21UpdateHighscoreInFileEv:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L120
	ldr	r1, .L120+4
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #36
	mov	r3, #0
.LPIC60:
	add	r1, pc, r1
.LPIC59:
	add	r0, pc, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	bl	s3eFileOpen(PLT)
	ldr	r3, .L120+8
	ldr	r1, .L120+12
.LPIC62:
	add	r3, pc, r3
.LPIC61:
	add	r1, pc, r1
	ldr	r2, [r3, #20]
	mov	r5, r0
	mov	r0, sp
	bl	sprintf(PLT)
	mov	r0, sp
	bl	strlen(PLT)
	mov	r3, r5
	mov	r2, #1
	mov	r1, r0
	mov	r0, sp
	bl	s3eFileWrite(PLT)
	mov	r0, r5
	bl	s3eFileClose(PLT)
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L121:
	.align	2
.L120:
	.word	.LC0-(.LPIC59+8)
	.word	.LC1-(.LPIC60+8)
	.word	.LANCHOR0-(.LPIC62+8)
	.word	.LC2-(.LPIC61+8)
	.size	_ZN4Game21UpdateHighscoreInFileEv, .-_ZN4Game21UpdateHighscoreInFileEv
	.section	.text._ZN4Game17SaveInternalStateEv,"ax",%progbits
	.align	2
	.global	_ZN4Game17SaveInternalStateEv
	.hidden	_ZN4Game17SaveInternalStateEv
	.type	_ZN4Game17SaveInternalStateEv, %function
_ZN4Game17SaveInternalStateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r1, .L130
	ldr	r0, .L130+4
.LPIC72:
	add	r1, pc, r1
.LPIC71:
	add	r0, pc, r0
	bl	s3eFileOpen(PLT)
	ldr	r5, .L130+8
	ldr	r2, .L130+12
.LPIC73:
	add	r5, pc, r5
	mov	r1, #4
	mov	r7, r0
	mov	r3, r0
	ldr	r0, [r5, r2]
	mov	r2, #1
	bl	s3eFileWrite(PLT)
	ldr	r2, .L130+16
	mov	r3, r7
	mov	r1, #4
	ldr	r0, [r5, r2]
	mov	r2, #1
	bl	s3eFileWrite(PLT)
	ldr	r0, [r4, #16]
	mov	r3, r7
	mov	r1, #4
	mov	r2, #1
	add	r0, r0, #280
	bl	s3eFileWrite(PLT)
	ldr	r0, [r4, #16]
	mov	r3, r7
	mov	r1, #4
	mov	r2, #1
	add	r0, r0, #4
	bl	s3eFileWrite(PLT)
	ldr	r0, [r4, #16]
	mov	r2, #1
	mov	r3, r7
	add	r0, r0, #8
	mov	r1, #4
	bl	s3eFileWrite(PLT)
	ldr	r8, [r4, #32]
	ldr	r4, [r8, #56]
	ldr	r2, [r8, #60]
	cmp	r4, r2
	bne	.L126
	b	.L125
.L124:
	cmp	r2, r4
	beq	.L125
.L126:
	ldr	r5, [r4], #4
	ldr	r6, [r5, #240]
	cmp	r6, #4
	bne	.L124
	ldrb	r3, [r5, #232]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L124
	mov	r1, r6
	mov	r2, #1
	mov	r3, r7
	add	r0, r5, #248
	bl	s3eFileWrite(PLT)
	mov	r1, r6
	mov	r2, #1
	mov	r3, r7
	add	r0, r5, #4
	bl	s3eFileWrite(PLT)
	mov	r2, #1
	add	r0, r5, #8
	mov	r1, r6
	mov	r3, r7
	bl	s3eFileWrite(PLT)
	ldr	r2, [r8, #60]
	cmp	r2, r4
	bne	.L126
.L125:
	mov	r0, r7
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	s3eFileClose(PLT)
.L131:
	.align	2
.L130:
	.word	.LC5-(.LPIC72+8)
	.word	.LC3-(.LPIC71+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC73+8)
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.word	_ZN5Enemy14g_enemiesAliveE(GOT)
	.size	_ZN4Game17SaveInternalStateEv, .-_ZN4Game17SaveInternalStateEv
	.section	.text._ZN4_STL14__malloc_allocILi0EE8allocateEj,"axG",%progbits,_ZN4_STL14__malloc_allocILi0EE8allocateEj,comdat
	.align	2
	.weak	_ZN4_STL14__malloc_allocILi0EE8allocateEj
	.hidden	_ZN4_STL14__malloc_allocILi0EE8allocateEj
	.type	_ZN4_STL14__malloc_allocILi0EE8allocateEj, %function
_ZN4_STL14__malloc_allocILi0EE8allocateEj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	malloc(PLT)
	cmp	r0, #0
	ldmnefd	sp!, {r4, pc}
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	.size	_ZN4_STL14__malloc_allocILi0EE8allocateEj, .-_ZN4_STL14__malloc_allocILi0EE8allocateEj
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.section	.text._ZN4Game10SpawnEnemyEv,"ax",%progbits
	.align	2
	.global	_ZN4Game10SpawnEnemyEv
	.hidden	_ZN4Game10SpawnEnemyEv
	.type	_ZN4Game10SpawnEnemyEv, %function
_ZN4Game10SpawnEnemyEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8
	mov	r4, r0
	bl	rand(PLT)
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #21
	add	r0, r0, r3
	mov	r0, r0, asl #21
	rsb	r0, r3, r0, lsr #21
	bl	__aeabi_i2f(PLT)
	mov	r1, #973078528
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L153
	bl	__aeabi_fmul(PLT)
	mov	r5, r0
	bl	cosf(PLT)
	mov	r7, r0
	mov	r0, r5
	bl	sinf(PLT)
	ldr	r5, [r4, #16]
	ldr	r1, .L153+4
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r5, #8]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, .L153+4
	mov	r6, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r5, #4]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r4, [r4, #32]
	str	r6, [sp, #4]	@ float
	str	r0, [sp]	@ float
	mov	r0, #252
	bl	_Znwj(PLT)
	add	r3, sp, #8
	ldmdb	r3, {r1, r2}
	mov	r5, r0
	bl	_ZN5EnemyC1E8CIwFVec2(PLT)
	ldr	r2, [r4, #172]
	ldr	r3, [r4, #164]
	sub	r2, r2, #4
	cmp	r3, r2
	beq	.L135
	str	r5, [r3]
	ldr	r3, [r4, #164]
	add	r3, r3, #4
	str	r3, [r4, #164]
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L135:
	ldr	r6, [r4, #176]
	ldr	r2, [r4, #180]
	ldr	r3, [r4, #184]
	rsb	r1, r2, r6
	sub	r1, r3, r1, asr #2
	cmp	r1, #1
	bls	.L151
.L137:
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L152
.L145:
	str	r0, [r6, #4]
	ldr	r3, [r4, #164]
	str	r5, [r3]
	ldr	r3, [r4, #176]
	add	r2, r3, #4
	str	r2, [r4, #176]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r3, [r4, #164]
	str	r2, [r4, #172]
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L151:
	ldr	r1, [r4, #160]
	rsb	r8, r1, r6
	mov	r8, r8, asr #2
	add	r8, r8, #1
	add	r7, r8, #1
	cmp	r3, r7, asl #1
	bls	.L138
	rsb	r7, r7, r3
	mov	r7, r7, lsr #1
	add	r7, r2, r7, asl #2
	cmp	r1, r7
	add	r2, r6, #4
	bls	.L139
	cmp	r1, r2
	beq	.L140
	rsb	r2, r1, r2
	mov	r0, r7
	bl	memmove(PLT)
.L140:
	str	r7, [r4, #160]
	sub	r8, r8, #-1073741823
	ldr	r3, [r7]
	add	r6, r7, r8, asl #2
	add	r2, r3, #128
	str	r2, [r4, #156]
	str	r3, [r4, #152]
	str	r6, [r4, #176]
	ldr	r3, [r7, r8, asl #2]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r2, [r4, #172]
	b	.L137
.L138:
	cmp	r3, #0
	beq	.L146
	mov	r3, r3, asl #1
	adds	r9, r3, #2
	moveq	r10, r9
	bne	.L141
.L142:
	rsb	r7, r7, r9
	add	r2, r6, #4
	mov	r7, r7, lsr #1
	cmp	r2, r1
	add	r7, r10, r7, asl #2
	beq	.L143
	rsb	r2, r1, r2
	mov	r0, r7
	bl	memmove(PLT)
.L143:
	ldr	r0, [r4, #180]
	cmp	r0, #0
	beq	.L144
	bl	free(PLT)
.L144:
	str	r10, [r4, #180]
	str	r9, [r4, #184]
	b	.L140
.L152:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L145
.L146:
	mov	r9, #3
.L141:
	mov	r0, r9, asl #2
	bl	_ZN4_STL14__malloc_allocILi0EE8allocateEj(PLT)
	ldr	r1, [r4, #160]
	ldr	r6, [r4, #176]
	mov	r10, r0
	b	.L142
.L139:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L140
	add	r0, r7, r8, asl #2
	rsb	r0, r2, r0
	bl	memmove(PLT)
	b	.L140
.L154:
	.align	2
.L153:
	.word	1086918619
	.word	1128792064
	.size	_ZN4Game10SpawnEnemyEv, .-_ZN4Game10SpawnEnemyEv
	.section	.text._ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_,"axG",%progbits,_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_
	.hidden	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_
	.type	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_, %function
_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r6, r3
	ldr	r3, [r1]
	mov	r5, r1
	cmp	r6, r3
	mov	r7, r0
	ldr	r8, [sp, #24]
	beq	.L156
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L165
.L157:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L166
.L161:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L159:
	mov	r3, #0
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r6, [r4, #4]
	ldr	r1, [r5]
	mov	r0, r4
	add	r1, r1, #4
	bl	_ZN4_STL10_Rb_globalIbE10_RebalanceEPNS_18_Rb_tree_node_baseERS3_(PLT)
	ldr	r3, [r5, #4]
	mov	r0, r7
	add	r3, r3, #1
	str	r3, [r5, #4]
	str	r4, [r7]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L165:
	cmp	r2, #0
	beq	.L167
.L156:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L168
.L163:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L169
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L159
.L169:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L159
.L168:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L163
.L166:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L161
.L167:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L156
	b	.L157
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_
	.section	.text._ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_,"axG",%progbits,_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.hidden	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.type	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, %function
_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r2
	ldr	r8, [r1]
	ldr	ip, [r2]
	sub	sp, sp, #16
	ldr	r2, [r8, #8]
	mov	r7, r1
	cmp	ip, r2
	mov	r6, r3
	mov	r5, r0
	beq	.L246
	cmp	ip, r8
	beq	.L247
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L248
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L249
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L207
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L208
.L207:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L240
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L170
.L248:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L250
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L251
.L242:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L170:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L247:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L252
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L201
	b	.L262
.L253:
	mov	r4, r0
.L201:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L253
	cmp	r1, #0
	beq	.L231
	cmp	r2, r4
	beq	.L254
.L197:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L202:
	cmp	r8, r3
	bhi	.L255
.L215:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L250:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L208:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L223
	ldr	r0, [r6]
	b	.L212
.L256:
	mov	r4, r3
.L212:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L256
	cmp	r1, #0
	moveq	r3, r4
	bne	.L223
.L213:
	cmp	r0, r2
	bls	.L215
.L243:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L215
.L252:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L246:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L257
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L258
	strls	ip, [r0]
	bls	.L170
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L259
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L185
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L186
.L240:
	mov	r2, r0
	b	.L242
.L231:
	mov	ip, r4
	b	.L202
.L251:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L170
.L257:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L224
	ldr	r0, [r6]
	b	.L177
.L260:
	mov	r4, r3
.L177:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L260
	cmp	r1, #0
	moveq	r3, r4
	bne	.L173
.L178:
	cmp	r2, r0
	bcs	.L215
	b	.L243
.L223:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L245
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L213
.L255:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L215
.L258:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L170
.L224:
	mov	r4, r8
.L173:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L244
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L178
.L262:
	mov	r4, ip
	b	.L197
.L185:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L191
	b	.L263
.L261:
	mov	r4, r3
.L191:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L261
	cmp	r0, #0
	moveq	r3, r4
	bne	.L187
.L192:
	cmp	r2, r1
	bcs	.L215
	b	.L243
.L254:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L215
.L259:
	ldr	r3, [r4]
.L186:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L170
.L245:
	mov	r2, r4
.L244:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L215
.L263:
	mov	r4, ip
.L187:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L245
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L192
.L249:
	str	r3, [r5]
	b	.L170
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN4GameC2Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameC2Ev
	.hidden	_ZN4GameC2Ev
	.type	_ZN4GameC2Ev, %function
_ZN4GameC2Ev:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r0
	ldr	r5, .L312
	ldr	r1, .L312+4
	mov	r4, #0
.LPIC74:
	add	r5, pc, r5
	mov	r0, #1
	sub	sp, sp, #20
	str	r4, [r6, #4]
	str	r4, [r6, #8]
	str	r4, [r6, #12]
	str	r4, [r6, #32]
	mov	r2, r6
.LPIC75:
	add	r1, pc, r1
	strb	r0, [r6, #20]
	strb	r0, [r6, #21]
	str	r6, [r5, #16]
	bl	s3eSurfaceRegister(PLT)
	ldr	r2, [r5, #24]
	ldr	r1, .L312+8
	mov	r3, r4
	ldr	r0, [r2, #12]
	ldr	r2, .L312+12
.LPIC77:
	add	r1, pc, r1
.LPIC78:
	add	r2, pc, r2
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r7, .L312+16
	ldr	r3, .L312+20
.LPIC80:
	add	r7, pc, r7
	ldr	r1, [r5, #24]
	ldr	r4, [r7, r3]
	ldr	r2, [r1, #12]
	ldr	r3, [r4]
	str	r2, [r3, #100]
	ldr	r8, [r1]
	ldr	ip, [r8, #4]
	cmp	ip, #0
	mov	r9, r0
	ldr	lr, [r0, #4]
	beq	.L270
	mov	r5, r8
	mov	r3, ip
.L269:
	ldr	r2, [r3, #16]
	cmp	r2, lr
	movcs	r5, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L269
	cmp	r8, r5
	beq	.L270
	ldr	r3, [r5, #16]
	cmp	r3, lr
	bls	.L310
.L270:
	mov	r0, lr
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r3, .L312+24
	ldr	ip, [r9, #4]
.LPIC81:
	add	r3, pc, r3
	ldr	r1, [r3, #24]
	mov	r5, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L277
.L276:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L276
	cmp	r0, lr
	beq	.L277
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L303
.L277:
	add	r3, sp, #8
	mov	r8, #0
	add	r0, sp, #4
	mov	r2, sp
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r8, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, .L312+28
	ldr	lr, [sp, #4]
.LPIC86:
	add	r3, pc, r3
	ldr	r1, [r3, #24]
.L303:
	str	r5, [lr, #20]
	mov	lr, r5
	b	.L278
.L310:
	mov	r5, r8
.L282:
	ldr	r3, [ip, #16]
	cmp	r3, lr
	movcs	r5, ip
	ldrcc	ip, [ip, #12]
	ldrcs	ip, [ip, #8]
	cmp	ip, #0
	bne	.L282
	cmp	r8, r5
	beq	.L283
	ldr	r3, [r5, #16]
	cmp	r3, lr
	bls	.L304
.L283:
	mov	ip, #0
	add	r3, sp, #8
	add	r0, sp, #4
	mov	r2, sp
	str	r5, [sp]
	str	lr, [sp, #8]
	str	ip, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, .L312+32
	ldr	r5, [sp, #4]
.LPIC87:
	add	r3, pc, r3
	ldr	r1, [r3, #24]
.L304:
	ldr	lr, [r5, #20]
.L278:
	ldr	r3, .L312+36
	ldr	r0, [r1, #12]
	ldr	r2, .L312+40
	ldr	ip, [r7, r3]
	ldr	r1, .L312+44
.LPIC83:
	add	r2, pc, r2
.LPIC82:
	add	r1, pc, r1
	mov	r3, #0
	str	lr, [ip]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r2, .L312+48
	ldr	r3, [r4]
.LPIC84:
	add	r2, pc, r2
	ldr	r1, [r2, #24]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r8, [r1]
	ldr	ip, [r8, #4]
	cmp	ip, #0
	mov	r9, r0
	ldr	r4, [r0, #4]
	beq	.L289
	mov	r2, r8
	mov	r3, ip
.L288:
	ldr	r5, [r3, #16]
	cmp	r5, r4
	movcs	r2, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L288
	cmp	r2, r8
	beq	.L289
	ldr	r3, [r2, #16]
	cmp	r3, r4
	bls	.L311
.L289:
	mov	r0, r4
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r3, .L312+52
	ldr	ip, [r9, #4]
.LPIC85:
	add	r3, pc, r3
	ldr	r1, [r3, #24]
	ldr	r5, [r1]
	mov	r4, r5
	ldr	r3, [r5, #4]
	cmp	r3, #0
	mov	r8, r0
	beq	.L296
.L295:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	r4, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L295
	cmp	r4, r5
	beq	.L296
	ldr	r3, [r4, #16]
	cmp	r3, ip
	bls	.L305
.L296:
	mov	lr, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	r4, [sp]
	str	ip, [sp, #8]
	str	lr, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r4, [sp, #4]
.L305:
	str	r8, [r4, #20]
	mov	r0, r8
	b	.L297
.L311:
	mov	r5, r8
.L301:
	ldr	r3, [ip, #16]
	cmp	r3, r4
	movcs	r5, ip
	ldrcc	ip, [ip, #12]
	ldrcs	ip, [ip, #8]
	cmp	ip, #0
	bne	.L301
	cmp	r5, r8
	beq	.L302
	ldr	r3, [r5, #16]
	cmp	r3, r4
	bls	.L306
.L302:
	mov	ip, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	r5, [sp]
	str	r4, [sp, #8]
	str	ip, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r5, [sp, #4]
.L306:
	ldr	r0, [r5, #20]
.L297:
	ldr	r3, .L312+56
	ldr	r3, [r7, r3]
	str	r0, [r3]
	mov	r0, r6
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L313:
	.align	2
.L312:
	.word	.LANCHOR0-(.LPIC74+8)
	.word	_Z38OnScreenSizeOrientationChangedCallbackPvS_-(.LPIC75+8)
	.word	.LC6-(.LPIC77+8)
	.word	.LC7-(.LPIC78+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC80+8)
	.word	g_IwResManager(GOT)
	.word	.LANCHOR0-(.LPIC81+8)
	.word	.LANCHOR0-(.LPIC86+8)
	.word	.LANCHOR0-(.LPIC87+8)
	.word	_ZN6Bullet7g_imageE(GOT)
	.word	.LC7-(.LPIC83+8)
	.word	.LC8-(.LPIC82+8)
	.word	.LANCHOR0-(.LPIC84+8)
	.word	.LANCHOR0-(.LPIC85+8)
	.word	_ZN5Enemy7g_imageE(GOT)
	.size	_ZN4GameC2Ev, .-_ZN4GameC2Ev
	.global	_ZN4GameC1Ev
	.hidden	_ZN4GameC1Ev
	.set	_ZN4GameC1Ev,_ZN4GameC2Ev
	.section	.text._ZN4Game5SetupEv,"ax",%progbits
	.align	2
	.global	_ZN4Game5SetupEv
	.hidden	_ZN4Game5SetupEv
	.type	_ZN4Game5SetupEv, %function
_ZN4Game5SetupEv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #20
	mov	r0, #36
	bl	_Znwj(PLT)
	ldr	r6, .L358
	ldr	r7, .L358+4
.LPIC88:
	add	r6, pc, r6
.LPIC89:
	add	r7, pc, r7
	ldr	r10, .L358+8
	mov	r9, #1
.LPIC92:
	add	r10, pc, r10
	mov	r5, r0
	bl	_ZN16CollisionManagerC1Ev(PLT)
	ldr	r3, .L358+12
	mov	r0, #244
	ldr	r3, [r6, r3]
	str	r5, [r3]
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN10GameSpriteC1Ev(PLT)
	ldr	r3, .L358+16
	str	r5, [r4, #32]
	ldr	r3, [r6, r3]
	ldr	r8, [r3]
	ldr	r0, [r8, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r5, r0
	str	r5, [r7, #4]	@ float
	ldr	r0, [r8, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r8, r0
	mov	r1, r0
	str	r8, [r7, #8]	@ float
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	mov	r1, r8
	str	r0, [r7, #12]	@ float
	mov	r0, r5
	bl	__aeabi_fcmpgt(PLT)
	mov	r7, #0
	cmp	r0, #0
	moveq	r9, r0
	eor	r9, r9, #1
	mov	r0, #28
	strb	r9, [r10]
	bl	_Znwj(PLT)
	ldr	r9, .L358+20
.LPIC93:
	add	r9, pc, r9
	mov	r5, r0
	bl	_ZN8GameViewC1Ev(PLT)
	str	r5, [r4, #40]
	mov	r0, #108
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN4MenuC1Ev(PLT)
	ldr	r3, .L358+24
	str	r5, [r4, #36]
	ldr	r0, [r6, r3]
	bl	_Z22Iw2DSetTransformMatrixRK9CIwFMat2D(PLT)
	ldr	r0, [r4, #32]
	bl	_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv(PLT)
	ldr	r3, [r4, #40]
	mov	r0, #244
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #4]
	strb	r7, [r3, #8]
	bl	_Znwj(PLT)
	mov	r5, r0
	bl	_ZN10GameSpriteC1Ev(PLT)
	ldr	r2, [r9, #24]
	ldr	r1, .L358+28
	mov	r3, r7
	ldr	r0, [r2, #12]
	ldr	r2, .L358+32
.LPIC94:
	add	r1, pc, r1
.LPIC95:
	add	r2, pc, r2
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r3, .L358+36
	ldr	r1, [r9, #24]
	ldr	r3, [r6, r3]
	ldr	r2, [r1, #12]
	ldr	r3, [r3]
	str	r2, [r3, #100]
	ldr	r7, [r1]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	mov	r8, r0
	ldr	ip, [r0, #4]
	beq	.L321
	mov	r6, r7
	mov	r3, r2
.L320:
	ldr	lr, [r3, #16]
	cmp	ip, lr
	movls	r6, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L320
	cmp	r7, r6
	beq	.L321
	ldr	r3, [r6, #16]
	cmp	ip, r3
	bcs	.L355
.L321:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r3, .L358+40
	ldr	ip, [r8, #4]
.LPIC97:
	add	r3, pc, r3
	ldr	r1, [r3, #24]
	ldr	r6, [r1]
	mov	lr, r6
	ldr	r3, [r6, #4]
	cmp	r3, #0
	mov	r7, r0
	beq	.L328
.L327:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L327
	cmp	lr, r6
	beq	.L328
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L346
.L328:
	mov	r6, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r6, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L346:
	str	r7, [lr, #20]
	mov	r1, r7
	b	.L329
.L355:
	mov	lr, r7
.L333:
	ldr	r3, [r2, #16]
	cmp	ip, r3
	movls	lr, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L333
	cmp	r7, lr
	beq	.L334
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L347
.L334:
	mov	r6, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r6, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L347:
	ldr	r1, [lr, #20]
.L329:
	mov	r0, r5
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r6, [r4, #32]
	ldr	r2, [r6, #172]
	ldr	r3, [r6, #164]
	sub	r2, r2, #4
	cmp	r3, r2
	beq	.L335
	str	r5, [r3]
	ldr	r3, [r6, #164]
	add	r3, r3, #4
	str	r3, [r6, #164]
	mov	r3, #0
	strb	r3, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L335:
	ldr	r7, [r6, #176]
	ldr	r2, [r6, #180]
	ldr	r3, [r6, #184]
	rsb	r1, r2, r7
	sub	r1, r3, r1, asr #2
	cmp	r1, #1
	bls	.L356
.L337:
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L357
.L345:
	str	r0, [r7, #4]
	ldr	r3, [r6, #164]
	str	r5, [r3]
	ldr	r3, [r6, #176]
	add	r2, r3, #4
	str	r2, [r6, #176]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r6, #168]
	str	r3, [r6, #164]
	mov	r3, #0
	str	r2, [r6, #172]
	strb	r3, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L356:
	ldr	r1, [r6, #160]
	rsb	r9, r1, r7
	mov	r9, r9, asr #2
	add	r9, r9, #1
	add	r8, r9, #1
	cmp	r3, r8, asl #1
	bls	.L338
	rsb	r8, r8, r3
	mov	r8, r8, lsr #1
	add	r8, r2, r8, asl #2
	cmp	r1, r8
	add	r2, r7, #4
	bls	.L339
	cmp	r1, r2
	beq	.L340
	rsb	r2, r1, r2
	mov	r0, r8
	bl	memmove(PLT)
.L340:
	str	r8, [r6, #160]
	sub	r9, r9, #-1073741823
	ldr	r3, [r8]
	add	r7, r8, r9, asl #2
	add	r2, r3, #128
	str	r2, [r6, #156]
	str	r3, [r6, #152]
	str	r7, [r6, #176]
	ldr	r3, [r8, r9, asl #2]
	add	r2, r3, #128
	str	r3, [r6, #168]
	str	r2, [r6, #172]
	b	.L337
.L338:
	cmp	r3, #0
	beq	.L348
	mov	r3, r3, asl #1
	adds	r10, r3, #2
	moveq	fp, r10
	bne	.L341
.L342:
	rsb	r8, r8, r10
	add	r2, r7, #4
	mov	r8, r8, lsr #1
	cmp	r1, r2
	add	r8, fp, r8, asl #2
	beq	.L343
	rsb	r2, r1, r2
	mov	r0, r8
	bl	memmove(PLT)
.L343:
	ldr	r0, [r6, #180]
	cmp	r0, #0
	beq	.L344
	bl	free(PLT)
.L344:
	str	fp, [r6, #180]
	str	r10, [r6, #184]
	b	.L340
.L348:
	mov	r10, #3
.L341:
	mov	r0, r10, asl #2
	bl	_ZN4_STL14__malloc_allocILi0EE8allocateEj(PLT)
	ldr	r1, [r6, #160]
	ldr	r7, [r6, #176]
	mov	fp, r0
	b	.L342
.L357:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L345
.L339:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L340
	add	r0, r8, r9, asl #2
	rsb	r0, r2, r0
	bl	memmove(PLT)
	b	.L340
.L359:
	.align	2
.L358:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC88+8)
	.word	.LANCHOR0-(.LPIC89+8)
	.word	.LANCHOR1-(.LPIC92+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.word	g_IwGxState(GOT)
	.word	.LANCHOR0-(.LPIC93+8)
	.word	_ZN9CIwFMat2D10g_IdentityE(GOT)
	.word	.LC9-(.LPIC94+8)
	.word	.LC7-(.LPIC95+8)
	.word	g_IwResManager(GOT)
	.word	.LANCHOR0-(.LPIC97+8)
	.size	_ZN4Game5SetupEv, .-_ZN4Game5SetupEv
	.section	.text._ZN4Game12InitFromFileEPKc,"ax",%progbits
	.align	2
	.global	_ZN4Game12InitFromFileEPKc
	.hidden	_ZN4Game12InitFromFileEPKc
	.type	_ZN4Game12InitFromFileEPKc, %function
_ZN4Game12InitFromFileEPKc:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	sub	sp, sp, #44
	mov	fp, r1
	bl	_ZN4Game5SetupEv(PLT)
	ldr	r3, [r8, #40]
	ldr	r1, .L407
	str	r3, [r8, #44]
.LPIC98:
	add	r1, pc, r1
	mov	r0, fp
	bl	s3eFileOpen(PLT)
	ldr	r5, .L407+4
	ldr	r3, .L407+8
.LPIC99:
	add	r5, pc, r5
	ldr	r2, .L407+12
	mov	ip, #0
	mov	r1, #4
	mov	r6, r0
	ldr	r0, [r5, r3]
	mov	r3, r6
	str	ip, [r0]
	ldr	r0, [r5, r2]
	mov	r2, #1
	bl	s3eFileRead(PLT)
	mov	r3, r6
	mov	r2, #1
	mov	r1, #4
	add	r0, sp, #28
	bl	s3eFileRead(PLT)
	mov	r0, #292
	bl	_Znwj(PLT)
	mov	r7, r0
	bl	_ZN6PlayerC1Ev(PLT)
	ldr	r4, [r8, #32]
	str	r7, [r8, #16]
	ldr	r2, [r4, #172]
	ldr	r3, [r4, #164]
	sub	r2, r2, #4
	cmp	r3, r2
	beq	.L361
	str	r7, [r3]
	ldr	r3, [r4, #164]
	add	r3, r3, #4
	str	r3, [r4, #164]
.L362:
	ldr	r0, [r8, #16]
	mov	r1, #4
	mov	r2, #1
	mov	r3, r6
	add	r0, r0, #280
	bl	s3eFileRead(PLT)
	ldr	r0, [r8, #16]
	mov	r1, #4
	add	r0, r0, r1
	mov	r2, #1
	mov	r3, r6
	bl	s3eFileRead(PLT)
	ldr	r0, [r8, #16]
	mov	r3, r6
	mov	r1, #4
	add	r0, r0, #8
	mov	r2, #1
	bl	s3eFileRead(PLT)
	ldr	r3, [sp, #28]
	cmp	r3, #0
	movne	r10, #0
	movne	r7, #0
	addne	r9, sp, #32
	strne	fp, [sp, #12]
	bne	.L386
	b	.L385
.L399:
	str	r5, [r3]
	ldr	r3, [r4, #164]
	add	r7, r7, #1
	add	r3, r3, #4
	str	r3, [r4, #164]
	ldr	r3, [sp, #28]
	cmp	r3, r7
	bls	.L398
.L386:
	mov	r0, #252
	str	r10, [sp, #32]	@ float
	str	r10, [sp, #36]	@ float
	bl	_Znwj(PLT)
	ldmia	r9, {r1, r2}
	mov	r5, r0
	bl	_ZN5EnemyC1E8CIwFVec2(PLT)
	mov	r1, #4
	mov	r2, #1
	mov	r3, r6
	add	r0, r5, #248
	bl	s3eFileRead(PLT)
	mov	r1, #4
	mov	r2, #1
	mov	r3, r6
	add	r0, r5, #4
	bl	s3eFileRead(PLT)
	mov	r2, #1
	mov	r3, r6
	add	r0, r5, #8
	mov	r1, #4
	bl	s3eFileRead(PLT)
	ldr	r4, [r8, #32]
	ldr	r2, [r4, #172]
	ldr	r3, [r4, #164]
	sub	r2, r2, #4
	cmp	r3, r2
	bne	.L399
	ldr	fp, [r4, #176]
	ldr	lr, [r4, #180]
	ldr	r0, [r4, #184]
	rsb	r3, lr, fp
	sub	r3, r0, r3, asr #2
	cmp	r3, #1
	bls	.L400
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L401
.L384:
	str	r0, [fp, #4]
	ldr	r3, [r4, #164]
	add	r7, r7, #1
	str	r5, [r3]
	ldr	r3, [r4, #176]
	add	r2, r3, #4
	str	r2, [r4, #176]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r3, [r4, #164]
	ldr	r3, [sp, #28]
	str	r2, [r4, #172]
	cmp	r3, r7
	bhi	.L386
.L398:
	ldr	fp, [sp, #12]
.L385:
	mov	r0, r6
	bl	s3eFileClose(PLT)
	mov	r0, fp
	bl	s3eFileDelete(PLT)
	ldr	r3, [r8, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	mov	r3, #4
	str	r3, [r8]
	mov	r0, r8
	mov	r1, #0
	bl	_ZN4Game6UpdateEf(PLT)
	mov	r0, r8
	mov	r1, #5
	bl	_ZN4Game8SetStateE9GameState(PLT)
	add	sp, sp, #44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L400:
	ldr	r1, [r4, #160]
	rsb	ip, r1, fp
	mov	ip, ip, asr #2
	add	ip, ip, #1
	add	r3, ip, #1
	cmp	r0, r3, asl #1
	bls	.L377
	rsb	r3, r3, r0
	add	r2, fp, #4
	mov	r3, r3, lsr #1
	add	r3, lr, r3, asl #2
	cmp	r1, r3
	bls	.L378
	cmp	r1, r2
	beq	.L379
	mov	r0, r3
	rsb	r2, r1, r2
	str	ip, [sp, #8]
	bl	memmove(PLT)
	ldr	ip, [sp, #8]
	mov	r3, r0
.L379:
	str	r3, [r4, #160]
	sub	ip, ip, #-1073741823
	ldr	r1, [r3]
	add	fp, r3, ip, asl #2
	add	r0, r1, #128
	str	r1, [r4, #152]
	str	r0, [r4, #156]
	str	fp, [r4, #176]
	ldr	r3, [r3, ip, asl #2]
	mov	r0, #128
	add	r1, r3, #128
	str	r3, [r4, #168]
	str	r1, [r4, #172]
	bl	malloc(PLT)
	cmp	r0, #0
	bne	.L384
.L401:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L384
.L377:
	cmp	r0, #0
	beq	.L389
	mov	r0, r0, asl #1
	adds	r0, r0, #2
	str	r0, [sp, #16]
	bne	.L402
	str	r0, [sp, #20]
	mov	r2, r0
	ldr	r0, [sp, #20]
.L381:
	rsb	r3, r3, r2
	add	r2, fp, #4
	mov	r3, r3, lsr #1
	cmp	r2, r1
	add	r3, r0, r3, asl #2
	beq	.L382
	mov	r0, r3
	rsb	r2, r1, r2
	str	ip, [sp, #8]
	bl	memmove(PLT)
	ldr	ip, [sp, #8]
	mov	r3, r0
.L382:
	ldr	r0, [r4, #180]
	cmp	r0, #0
	beq	.L383
	stmib	sp, {r3, ip}
	bl	free(PLT)
	ldmib	sp, {r3, ip}
.L383:
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #16]
	str	r2, [r4, #180]
	str	r0, [r4, #184]
	b	.L379
.L389:
	mov	r0, #3
	mov	r2, r0
	str	r0, [sp, #16]
.L380:
	mov	r0, r2, asl #2
	stmib	sp, {r3, ip}
	bl	_ZN4_STL14__malloc_allocILi0EE8allocateEj(PLT)
	ldr	r1, [r4, #160]
	ldr	fp, [r4, #176]
	ldmib	sp, {r3, ip}
	ldr	r2, [sp, #16]
	str	r0, [sp, #20]
	b	.L381
.L361:
	ldr	r5, [r4, #176]
	ldr	r0, [r4, #180]
	ldr	r3, [r4, #184]
	rsb	r2, r0, r5
	sub	r2, r3, r2, asr #2
	cmp	r2, #1
	bls	.L403
.L363:
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L404
.L372:
	str	r0, [r5, #4]
	ldr	r3, [r4, #164]
	str	r7, [r3]
	ldr	r3, [r4, #176]
	add	r2, r3, #4
	str	r2, [r4, #176]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r3, [r4, #164]
	str	r2, [r4, #172]
	b	.L362
.L378:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L379
	add	r0, r3, ip, asl #2
	rsb	r0, r2, r0
	stmib	sp, {r3, ip}
	bl	memmove(PLT)
	ldmib	sp, {r3, ip}
	b	.L379
.L403:
	ldr	r1, [r4, #160]
	rsb	r9, r1, r5
	mov	r9, r9, asr #2
	add	r9, r9, #1
	add	r10, r9, #1
	cmp	r3, r10, asl #1
	bls	.L364
	rsb	r3, r10, r3
	add	r2, r5, #4
	mov	r3, r3, lsr #1
	add	r10, r0, r3, asl #2
	cmp	r1, r10
	bls	.L365
	cmp	r1, r2
	beq	.L366
	rsb	r2, r1, r2
	mov	r0, r10
	bl	memmove(PLT)
.L366:
	str	r10, [r4, #160]
	sub	r9, r9, #-1073741823
	ldr	r2, [r10]
	add	r5, r10, r9, asl #2
	add	r1, r2, #128
	str	r2, [r4, #152]
	str	r1, [r4, #156]
	str	r5, [r4, #176]
	ldr	r3, [r10, r9, asl #2]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r2, [r4, #172]
	b	.L363
.L364:
	cmp	r3, #0
	beq	.L387
	mov	r3, r3, asl #1
	adds	r3, r3, #2
	moveq	ip, r3
	str	r3, [sp, #12]
	moveq	r2, ip
	bne	.L405
.L368:
	rsb	r3, r10, r2
	add	r2, r5, #4
	mov	r3, r3, lsr #1
	cmp	r2, r1
	add	r10, ip, r3, asl #2
	beq	.L370
	rsb	r2, r1, r2
	mov	r0, r10
	str	ip, [sp, #8]
	bl	memmove(PLT)
	ldr	ip, [sp, #8]
.L370:
	ldr	r0, [r4, #180]
	cmp	r0, #0
	beq	.L371
	str	ip, [sp, #8]
	bl	free(PLT)
	ldr	ip, [sp, #8]
.L371:
	ldr	r3, [sp, #12]
	str	ip, [r4, #180]
	str	r3, [r4, #184]
	b	.L366
.L387:
	mov	r3, #3
	mov	r0, r3
	str	r3, [sp, #12]
.L367:
	mov	r3, r0, asl #2
	mov	r0, r3
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	bl	malloc(PLT)
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #4]
	cmp	r0, #0
	beq	.L406
.L369:
	mov	ip, r0
	ldr	r2, [sp, #12]
	b	.L368
.L404:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L372
.L365:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L366
	add	r0, r10, r9, asl #2
	rsb	r0, r2, r0
	bl	memmove(PLT)
	b	.L366
.L406:
	mov	r0, r3
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #160]
	ldr	r5, [r4, #176]
	b	.L369
.L405:
	ldr	r0, [sp, #12]
	b	.L367
.L402:
	ldr	r2, [sp, #16]
	b	.L380
.L408:
	.align	2
.L407:
	.word	.LC10-(.LPIC98+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC99+8)
	.word	_ZN5Enemy14g_enemiesAliveE(GOT)
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.size	_ZN4Game12InitFromFileEPKc, .-_ZN4Game12InitFromFileEPKc
	.section	.text._ZN4Game4InitEv,"ax",%progbits
	.align	2
	.global	_ZN4Game4InitEv
	.hidden	_ZN4Game4InitEv
	.type	_ZN4Game4InitEv, %function
_ZN4Game4InitEv:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #52
	bl	_ZN4Game5SetupEv(PLT)
	ldr	r3, [r6, #36]
	mov	r0, #292
	str	r3, [r6, #44]
	bl	_Znwj(PLT)
	ldr	r8, .L452
.LPIC101:
	add	r8, pc, r8
	mov	r5, r0
	bl	_ZN6PlayerC1Ev(PLT)
	ldr	r4, [r6, #32]
	ldr	r2, .L452+4
	str	r5, [r6, #16]
.LPIC100:
	add	r2, pc, r2
	ldr	r1, [r4, #172]
	ldr	r3, [r4, #164]
	ldr	r2, [r2, #16]
	sub	r1, r1, #4
	cmp	r3, r1
	ldr	r5, [r2, #16]
	beq	.L410
	str	r5, [r3]
	ldr	r3, [r4, #164]
	add	r3, r3, #4
	str	r3, [r4, #164]
.L411:
	mov	r5, #10
	add	r7, sp, #16
	b	.L433
.L446:
	str	r9, [r3]
	ldr	r3, [r4, #164]
	subs	r5, r5, #1
	add	r3, r3, #4
	str	r3, [r4, #164]
	beq	.L445
.L433:
	bl	rand(PLT)
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #21
	add	r0, r0, r3
	mov	r0, r0, asl #21
	rsb	r0, r3, r0, lsr #21
	bl	__aeabi_i2f(PLT)
	mov	r1, #973078528
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L452+8
	bl	__aeabi_fmul(PLT)
	mov	r4, r0
	bl	cosf(PLT)
	mov	r10, r0
	mov	r0, r4
	bl	sinf(PLT)
	ldr	r4, [r6, #16]
	ldr	r1, .L452+12
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #8]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, .L452+12
	mov	r9, r0
	mov	r0, r10
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r4, #4]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r4, [r6, #32]
	str	r9, [sp, #20]	@ float
	str	r0, [sp, #16]	@ float
	mov	r0, #252
	bl	_Znwj(PLT)
	ldmia	r7, {r1, r2}
	mov	r9, r0
	bl	_ZN5EnemyC1E8CIwFVec2(PLT)
	ldr	r2, [r4, #172]
	ldr	r3, [r4, #164]
	sub	r2, r2, #4
	cmp	r3, r2
	bne	.L446
	ldr	fp, [r4, #176]
	ldr	ip, [r4, #180]
	ldr	r0, [r4, #184]
	rsb	r3, ip, fp
	sub	r3, r0, r3, asr #2
	cmp	r3, #1
	bls	.L447
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L448
.L431:
	str	r0, [fp, #4]
	ldr	r3, [r4, #164]
	subs	r5, r5, #1
	str	r9, [r3]
	ldr	r3, [r4, #176]
	add	r2, r3, #4
	str	r2, [r4, #176]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r3, [r4, #164]
	str	r2, [r4, #172]
	bne	.L433
.L445:
	ldr	r3, .L452+16
	ldr	r4, .L452+20
	ldr	r3, [r8, r3]
.LPIC102:
	add	r4, pc, r4
	mov	r0, r4
	str	r5, [r3]
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	bne	.L434
	ldr	r1, .L452+24
	mov	r0, r4
.LPIC104:
	add	r1, pc, r1
	str	r5, [sp, #16]
	str	r5, [sp, #20]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	r5, [sp, #32]
	str	r5, [sp, #36]
	str	r5, [sp, #40]
	str	r5, [sp, #44]
	bl	s3eFileOpen(PLT)
	ldr	r3, .L452+28
	ldr	r1, .L452+32
.LPIC106:
	add	r3, pc, r3
.LPIC105:
	add	r1, pc, r1
	ldr	r2, [r3, #20]
	mov	r4, r0
	mov	r0, r7
	bl	sprintf(PLT)
	mov	r0, r7
	bl	strlen(PLT)
	mov	r3, r4
	mov	r2, #1
	mov	r1, r0
	mov	r0, r7
	bl	s3eFileWrite(PLT)
	mov	r0, r4
	bl	s3eFileClose(PLT)
.L434:
	ldr	r0, .L452+36
	ldr	r1, .L452+40
.LPIC107:
	add	r0, pc, r0
.LPIC108:
	add	r1, pc, r1
	bl	s3eFileOpen(PLT)
	mov	r4, r0
	bl	s3eFileGetSize(PLT)
	mov	r3, #0
	mov	r2, r4
	mov	r1, #30
	mov	r0, r7
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	str	r3, [sp, #36]
	str	r3, [sp, #40]
	str	r3, [sp, #44]
	bl	s3eFileReadString(PLT)
	mov	r0, r7
	bl	atoi(PLT)
	ldr	r3, .L452+44
.LPIC109:
	add	r3, pc, r3
	str	r0, [r3, #20]
	mov	r0, r4
	bl	s3eFileClose(PLT)
	ldr	r3, [r6, #44]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	blx	r3
	add	sp, sp, #52
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L447:
	ldr	r1, [r4, #160]
	rsb	r3, r1, fp
	mov	r3, r3, asr #2
	add	r3, r3, #1
	add	r10, r3, #1
	cmp	r0, r10, asl #1
	bhi	.L449
	cmp	r0, #0
	beq	.L437
	mov	r0, r0, asl #1
	adds	ip, r0, #2
	streq	ip, [sp, #12]
	moveq	r0, ip
	bne	.L427
.L428:
	rsb	r10, r10, ip
	add	r2, fp, #4
	mov	r10, r10, lsr #1
	cmp	r2, r1
	add	r10, r0, r10, asl #2
	beq	.L429
	rsb	r2, r1, r2
	mov	r0, r10
	stmib	sp, {r3, ip}
	bl	memmove(PLT)
	ldmib	sp, {r3, ip}
.L429:
	ldr	r0, [r4, #180]
	cmp	r0, #0
	beq	.L430
	stmib	sp, {r3, ip}
	bl	free(PLT)
	ldmib	sp, {r3, ip}
.L430:
	ldr	r2, [sp, #12]
	str	ip, [r4, #184]
	str	r2, [r4, #180]
.L426:
	str	r10, [r4, #160]
	sub	r3, r3, #-1073741823
	ldr	r1, [r10]
	add	fp, r10, r3, asl #2
	add	r0, r1, #128
	str	r1, [r4, #152]
	str	r0, [r4, #156]
	str	fp, [r4, #176]
	ldr	r3, [r10, r3, asl #2]
	mov	r0, #128
	add	r1, r3, #128
	str	r3, [r4, #168]
	str	r1, [r4, #172]
	bl	malloc(PLT)
	cmp	r0, #0
	bne	.L431
.L448:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L431
.L449:
	rsb	r10, r10, r0
	add	r2, fp, #4
	mov	r10, r10, lsr #1
	add	r10, ip, r10, asl #2
	cmp	r1, r10
	bls	.L425
	cmp	r1, r2
	beq	.L426
	rsb	r2, r1, r2
	mov	r0, r10
	str	r3, [sp, #4]
	bl	memmove(PLT)
	ldr	r3, [sp, #4]
	b	.L426
.L410:
	ldr	r7, [r4, #176]
	ldr	r2, [r4, #180]
	ldr	r3, [r4, #184]
	rsb	r1, r2, r7
	sub	r1, r3, r1, asr #2
	cmp	r1, #1
	bls	.L450
.L412:
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L451
.L420:
	str	r0, [r7, #4]
	ldr	r3, [r4, #164]
	str	r5, [r3]
	ldr	r3, [r4, #176]
	add	r2, r3, #4
	str	r2, [r4, #176]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r3, [r4, #164]
	str	r2, [r4, #172]
	b	.L411
.L437:
	mov	ip, #3
.L427:
	mov	r0, ip, asl #2
	stmib	sp, {r3, ip}
	bl	_ZN4_STL14__malloc_allocILi0EE8allocateEj(PLT)
	ldr	r1, [r4, #160]
	ldr	fp, [r4, #176]
	ldmib	sp, {r3, ip}
	str	r0, [sp, #12]
	b	.L428
.L425:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L426
	add	r0, r10, r3, asl #2
	rsb	r0, r2, r0
	str	r3, [sp, #4]
	bl	memmove(PLT)
	ldr	r3, [sp, #4]
	b	.L426
.L450:
	ldr	r1, [r4, #160]
	rsb	r10, r1, r7
	mov	r10, r10, asr #2
	add	r10, r10, #1
	add	r9, r10, #1
	cmp	r3, r9, asl #1
	bls	.L413
	rsb	r9, r9, r3
	mov	r9, r9, lsr #1
	add	r9, r2, r9, asl #2
	cmp	r1, r9
	add	r2, r7, #4
	bls	.L414
	cmp	r1, r2
	beq	.L415
	rsb	r2, r1, r2
	mov	r0, r9
	bl	memmove(PLT)
.L415:
	str	r9, [r4, #160]
	sub	r10, r10, #-1073741823
	ldr	r3, [r9]
	add	r7, r9, r10, asl #2
	add	r2, r3, #128
	str	r2, [r4, #156]
	str	r3, [r4, #152]
	str	r7, [r4, #176]
	ldr	r3, [r9, r10, asl #2]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r2, [r4, #172]
	b	.L412
.L413:
	cmp	r3, #0
	beq	.L435
	mov	r3, r3, asl #1
	adds	fp, r3, #2
	moveq	r3, fp
	bne	.L416
.L417:
	rsb	r9, r9, fp
	add	r2, r7, #4
	mov	r9, r9, lsr #1
	cmp	r2, r1
	add	r9, r3, r9, asl #2
	beq	.L418
	rsb	r2, r1, r2
	mov	r0, r9
	str	r3, [sp, #4]
	bl	memmove(PLT)
	ldr	r3, [sp, #4]
.L418:
	ldr	r0, [r4, #180]
	cmp	r0, #0
	beq	.L419
	str	r3, [sp, #4]
	bl	free(PLT)
	ldr	r3, [sp, #4]
.L419:
	str	r3, [r4, #180]
	str	fp, [r4, #184]
	b	.L415
.L435:
	mov	fp, #3
.L416:
	mov	r0, fp, asl #2
	bl	_ZN4_STL14__malloc_allocILi0EE8allocateEj(PLT)
	ldr	r1, [r4, #160]
	ldr	r7, [r4, #176]
	mov	r3, r0
	b	.L417
.L451:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L420
.L414:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L415
	add	r0, r9, r10, asl #2
	rsb	r0, r2, r0
	bl	memmove(PLT)
	b	.L415
.L453:
	.align	2
.L452:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC101+8)
	.word	.LANCHOR0-(.LPIC100+8)
	.word	1086918619
	.word	1128792064
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.word	.LC0-(.LPIC102+8)
	.word	.LC1-(.LPIC104+8)
	.word	.LANCHOR0-(.LPIC106+8)
	.word	.LC2-(.LPIC105+8)
	.word	.LC0-(.LPIC107+8)
	.word	.LC4-(.LPIC108+8)
	.word	.LANCHOR0-(.LPIC109+8)
	.size	_ZN4Game4InitEv, .-_ZN4Game4InitEv
	.section	.text._ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_,"axG",%progbits,_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_
	.hidden	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_
	.type	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_, %function
_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r6, r3
	ldr	r3, [r1]
	mov	r5, r1
	cmp	r6, r3
	mov	r7, r0
	ldr	r8, [sp, #24]
	beq	.L455
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L464
.L456:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L465
.L460:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L458:
	mov	r3, #0
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r6, [r4, #4]
	ldr	r1, [r5]
	mov	r0, r4
	add	r1, r1, #4
	bl	_ZN4_STL10_Rb_globalIbE10_RebalanceEPNS_18_Rb_tree_node_baseERS3_(PLT)
	ldr	r3, [r5, #4]
	mov	r0, r7
	add	r3, r3, #1
	str	r3, [r5, #4]
	str	r4, [r7]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L464:
	cmp	r2, #0
	beq	.L466
.L455:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L467
.L462:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L468
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L458
.L468:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L458
.L467:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L462
.L465:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L460
.L466:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L455
	b	.L456
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_
	.section	.text._ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_,"axG",%progbits,_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.hidden	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.type	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, %function
_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r2
	ldr	r8, [r1]
	ldr	ip, [r2]
	sub	sp, sp, #16
	ldr	r2, [r8, #8]
	mov	r7, r1
	cmp	ip, r2
	mov	r6, r3
	mov	r5, r0
	beq	.L545
	cmp	ip, r8
	beq	.L546
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L547
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L548
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L506
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L507
.L506:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L539
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L469
.L547:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L549
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L550
.L541:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L469:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L546:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L551
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L500
	b	.L561
.L552:
	mov	r4, r0
.L500:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L552
	cmp	r1, #0
	beq	.L530
	cmp	r2, r4
	beq	.L553
.L496:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L501:
	cmp	r8, r3
	bhi	.L554
.L514:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L549:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L507:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L522
	ldr	r0, [r6]
	b	.L511
.L555:
	mov	r4, r3
.L511:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L555
	cmp	r1, #0
	moveq	r3, r4
	bne	.L522
.L512:
	cmp	r0, r2
	bls	.L514
.L542:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L514
.L551:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L545:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L556
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L557
	strls	ip, [r0]
	bls	.L469
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L558
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L484
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L485
.L539:
	mov	r2, r0
	b	.L541
.L530:
	mov	ip, r4
	b	.L501
.L550:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L469
.L556:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L523
	ldr	r0, [r6]
	b	.L476
.L559:
	mov	r4, r3
.L476:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L559
	cmp	r1, #0
	moveq	r3, r4
	bne	.L472
.L477:
	cmp	r2, r0
	bcs	.L514
	b	.L542
.L522:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L544
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L512
.L554:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L514
.L557:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L469
.L523:
	mov	r4, r8
.L472:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L543
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L477
.L561:
	mov	r4, ip
	b	.L496
.L484:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L490
	b	.L562
.L560:
	mov	r4, r3
.L490:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L560
	cmp	r0, #0
	moveq	r3, r4
	bne	.L486
.L491:
	cmp	r2, r1
	bcs	.L514
	b	.L542
.L553:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L514
.L558:
	ldr	r3, [r4]
.L485:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L469
.L544:
	mov	r2, r4
.L543:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L514
.L562:
	mov	r4, ip
.L486:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L544
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L491
.L548:
	str	r3, [r5]
	b	.L469
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN4Game15MusicCheckboxCBEb,"ax",%progbits
	.align	2
	.global	_ZN4Game15MusicCheckboxCBEb
	.hidden	_ZN4Game15MusicCheckboxCBEb
	.type	_ZN4Game15MusicCheckboxCBEb, %function
_ZN4Game15MusicCheckboxCBEb:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L590
	stmfd	sp!, {r4, r5, r6, r7, lr}
.LPIC110:
	add	r3, pc, r3
	cmp	r0, #0
	ldr	r2, [r3, #16]
	ldr	r3, .L590+4
	sub	sp, sp, #20
.LPIC111:
	add	r3, pc, r3
	strb	r0, [r2, #21]
	beq	.L589
	ldr	r0, .L590+8
	ldr	r1, .L590+12
	ldr	r5, [r2, #36]
	ldr	r2, [r3, r0]
	ldr	r3, [r3, r1]
	ldr	r1, .L590+16
	ldr	r4, [r2]
	ldr	r0, [r3]
	ldr	r2, .L590+20
	ldr	ip, [r4]
.LPIC114:
	add	r2, pc, r2
	str	ip, [r0, #100]
.LPIC113:
	add	r1, pc, r1
	mov	r3, #0
	ldr	r0, [r4]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	mov	r1, #0
	bl	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams(PLT)
	subs	r6, r0, #0
	mvneq	r2, #0
	beq	.L575
	ldr	r1, [r4, #4]
	ldr	ip, [r4, #16]
	mov	lr, r1
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L576
.L580:
	ldr	r2, [r3, #16]
	cmp	ip, r2
	movls	lr, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L580
	cmp	r1, lr
	beq	.L576
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L582
.L576:
	mov	r7, #0
	add	r0, sp, #4
	add	r1, r4, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r7, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L582:
	str	r6, [lr, #20]
	ldr	r2, [r4, #16]
	add	r3, r2, #1
	str	r3, [r4, #16]
.L575:
	ldr	r3, .L590+24
	str	r2, [r5, #20]
.LPIC115:
	add	r3, pc, r3
	ldr	r3, [r3, #16]
	ldr	r0, [r3, #36]
.L565:
	bl	_ZN4Menu20UpdateSettingsInFileEv(PLT)
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L589:
	ldr	r1, .L590+8
	ldr	r0, [r2, #36]
	ldr	r3, [r3, r1]
	ldr	ip, [r0, #20]
	ldr	r1, [r3]
	ldr	r5, [r1, #4]
	ldr	r2, [r5, #4]
	cmp	r2, #0
	beq	.L565
	mov	r4, r5
	mov	r3, r2
.L569:
	ldr	lr, [r3, #16]
	cmp	ip, lr
	movls	r4, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L569
	cmp	r5, r4
	beq	.L565
	ldr	r3, [r4, #16]
	cmp	ip, r3
	bcc	.L565
	mov	lr, r5
.L573:
	ldr	r3, [r2, #16]
	cmp	ip, r3
	movls	lr, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L573
	cmp	r5, lr
	beq	.L574
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L581
.L574:
	add	r1, r1, #4
	mov	r4, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r4, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L581:
	ldr	r0, [lr, #20]
	bl	_ZN12CIwSoundInst4StopEv(PLT)
	ldr	r3, .L590+28
.LPIC112:
	add	r3, pc, r3
	ldr	r3, [r3, #16]
	ldr	r0, [r3, #36]
	bl	_ZN4Menu20UpdateSettingsInFileEv(PLT)
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L591:
	.align	2
.L590:
	.word	.LANCHOR0-(.LPIC110+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC111+8)
	.word	_ZN12AudioManager9singletonE(GOT)
	.word	g_IwResManager(GOT)
	.word	.LC11-(.LPIC113+8)
	.word	.LC12-(.LPIC114+8)
	.word	.LANCHOR0-(.LPIC115+8)
	.word	.LANCHOR0-(.LPIC112+8)
	.size	_ZN4Game15MusicCheckboxCBEb, .-_ZN4Game15MusicCheckboxCBEb
	.hidden	_ZN4Game9highscoreE
	.global	_ZN4Game9highscoreE
	.hidden	_ZN4Game10g_instanceE
	.global	_ZN4Game10g_instanceE
	.hidden	_ZN4Game12g_inPortraitE
	.global	_ZN4Game12g_inPortraitE
	.hidden	_ZN4Game13g_heightScaleE
	.global	_ZN4Game13g_heightScaleE
	.hidden	_ZN4Game16g_viewportHeightE
	.global	_ZN4Game16g_viewportHeightE
	.hidden	_ZN4Game15g_viewportWidthE
	.global	_ZN4Game15g_viewportWidthE
	.hidden	_ZN12ImageManager9singletonE
	.global	_ZN12ImageManager9singletonE
	.data
	.set	.LANCHOR1,. + 0
	.type	_ZN4Game12g_inPortraitE, %object
	.size	_ZN4Game12g_inPortraitE, 1
_ZN4Game12g_inPortraitE:
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"highscore.dat\000"
	.space	2
.LC1:
	.ascii	"w\000"
	.space	2
.LC2:
	.ascii	"%u\000"
	.space	1
.LC3:
	.ascii	"savedstate.dat\000"
	.space	1
.LC4:
	.ascii	"r\000"
	.space	2
.LC5:
	.ascii	"wb\000"
	.space	1
.LC6:
	.ascii	"bullet\000"
	.space	1
.LC7:
	.ascii	"CIwTexture\000"
	.space	1
.LC8:
	.ascii	"enemy\000"
	.space	2
.LC9:
	.ascii	"playground\000"
	.space	1
.LC10:
	.ascii	"rb\000"
	.space	1
.LC11:
	.ascii	"bgm_menu\000"
	.space	3
.LC12:
	.ascii	"CIwSoundSpec\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZL18orientationChanged, %object
	.size	_ZL18orientationChanged, 1
_ZL18orientationChanged:
	.space	1
	.space	3
	.type	_ZN4Game15g_viewportWidthE, %object
	.size	_ZN4Game15g_viewportWidthE, 4
_ZN4Game15g_viewportWidthE:
	.space	4
	.type	_ZN4Game16g_viewportHeightE, %object
	.size	_ZN4Game16g_viewportHeightE, 4
_ZN4Game16g_viewportHeightE:
	.space	4
	.type	_ZN4Game13g_heightScaleE, %object
	.size	_ZN4Game13g_heightScaleE, 4
_ZN4Game13g_heightScaleE:
	.space	4
	.type	_ZN4Game10g_instanceE, %object
	.size	_ZN4Game10g_instanceE, 4
_ZN4Game10g_instanceE:
	.space	4
	.type	_ZN4Game9highscoreE, %object
	.size	_ZN4Game9highscoreE, 4
_ZN4Game9highscoreE:
	.space	4
	.type	_ZN12ImageManager9singletonE, %object
	.size	_ZN12ImageManager9singletonE, 4
_ZN12ImageManager9singletonE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
