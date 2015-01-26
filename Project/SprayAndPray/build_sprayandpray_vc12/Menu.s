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
	.file	"Menu.cpp"
	.global	__aeabi_fcmplt
	.global	__aeabi_fmul
	.global	__aeabi_fsub
	.global	__aeabi_fadd
	.global	__aeabi_fdiv
	.section	.text._ZN4Menu12UpdateLayoutEv,"ax",%progbits
	.align	2
	.global	_ZN4Menu12UpdateLayoutEv
	.hidden	_ZN4Menu12UpdateLayoutEv
	.type	_ZN4Menu12UpdateLayoutEv, %function
_ZN4Menu12UpdateLayoutEv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r9, .L18
	ldr	r0, [r0, #68]
	ldr	r2, .L18+4
	ldr	r3, .L18+8
.LPIC0:
	add	r9, pc, r9
	ldr	ip, [r0]
	ldr	r6, [r9, r2]
	ldr	r4, [r9, r3]
	sub	sp, sp, #36
	mov	r3, #0
	ldr	r1, [r6]	@ float
	ldr	r2, [r4]	@ float
	str	r3, [sp]	@ float
	ldr	ip, [ip, #12]
	blx	ip
	ldr	r6, [r6]	@ float
	ldr	r7, [r4]	@ float
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	beq	.L14
	ldr	r1, .L18+12
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r4, r0
	mov	r1, r4
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	mov	r10, r0
	mov	r0, r6
.L15:
	ldr	r1, .L18+16
	bl	__aeabi_fmul(PLT)
	mov	r8, r0
	mov	r1, r8
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	mov	r1, r8
	ldr	r10, [r5, #76]
	mov	fp, r0
	mov	r0, r8
	bl	__aeabi_fadd(PLT)
	ldr	ip, [r10]
	str	ip, [sp, #12]
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	ldr	ip, [sp, #12]
	mov	r3, #0
	str	r3, [sp]	@ float
	mov	r1, r6
	ldr	ip, [ip, #12]
	mov	r2, r0
	mov	r0, r10
	blx	ip
	ldr	r3, [r5, #84]
	mov	r1, fp
	mov	r0, r3
	ldr	ip, [r3]
	mov	r2, r8
	mov	r3, r4
	str	r4, [sp]	@ float
	ldr	ip, [ip, #12]
	blx	ip
	ldr	r1, .L18+16
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r10, [r5, #88]
	mov	r3, r4
	mov	r2, r8
	ldr	fp, [r10]
	str	r4, [sp]	@ float
	ldr	ip, [fp, #12]
	mov	r1, r0
	mov	r0, r10
	blx	ip
	ldr	r3, .L18+20
	mov	r0, r6
	ldr	r3, [r9, r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r5, #80]
	bne	.L17
	ldr	r1, .L18+24
	ldr	r8, [r3, #140]
	bl	__aeabi_fmul(PLT)
	ldr	r3, [r8]
	ldr	r3, [r3, #4]
	mov	r9, r0
	mov	r0, r8
	blx	r3
	ldr	r3, [r8]
	ldr	r3, [r3]
	mov	r10, r0
	mov	r0, r8
	blx	r3
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fdiv(PLT)
	mov	r1, r9
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+28
	ldr	r8, [r5, #80]
	mov	r10, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+28
	str	r0, [sp, #20]	@ float
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r9
	bl	__aeabi_fsub(PLT)
	mov	r1, r10
	ldr	fp, [r8]
	mov	r3, r0
	ldr	r0, [sp, #20]	@ float
	str	r3, [sp, #16]
	bl	__aeabi_fsub(PLT)
	ldr	r3, [sp, #16]
	str	r10, [sp]	@ float
	ldr	ip, [fp, #12]
	mov	r1, r3
	mov	r3, r9
	mov	r2, r0
	mov	r0, r8
	blx	ip
	mov	r0, r4
	ldr	r1, .L18+32
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	str	r0, [sp, #24]	@ float
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	mov	r1, #1048576000
	ldr	r10, [r5, #104]
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+36
	mov	r9, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+24
	mov	fp, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	r2, [r10]
	mov	r1, fp
	str	r2, [sp, #16]
	str	r0, [sp, #28]	@ float
	mov	r0, r9
	bl	__aeabi_fsub(PLT)
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #24]	@ float
	mov	r3, r0
	ldr	r0, [sp, #28]	@ float
	str	r0, [sp]	@ float
	mov	r0, r10
	ldr	ip, [r2, #12]
	mov	r2, r8
	blx	ip
	mov	r0, r6
	mov	r1, #1061158912
	bl	__aeabi_fmul(PLT)
	ldr	r10, [r5, #100]
	mov	r1, fp
	ldr	r2, [r10]
	str	r2, [sp, #16]
	str	r0, [sp, #12]
	bl	__aeabi_fsub(PLT)
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #24]	@ float
	mov	r3, r0
	ldr	r0, [sp, #28]	@ float
	str	r0, [sp]	@ float
	mov	r0, r10
	ldr	r10, [r2, #12]
	mov	r2, r8
	blx	r10
	mov	r0, r7
	ldr	r1, .L18+40
	bl	__aeabi_fmul(PLT)
	ldr	fp, [r5, #96]
	mov	r1, r4
	ldr	r3, [fp]
	str	r3, [sp, #16]
	mov	r10, r0
	mov	r0, r9
	bl	__aeabi_fsub(PLT)
	ldr	r3, [sp, #16]
	mov	r2, r10
	str	r8, [sp]	@ float
	mov	r1, r0
	mov	r0, fp
	ldr	fp, [r3, #12]
	mov	r3, r8
	blx	fp
	ldr	ip, [sp, #12]
	mov	r1, r4
	mov	r0, ip
	bl	__aeabi_fsub(PLT)
	ldr	fp, [r5, #92]
	mov	r2, r10
	mov	r3, r8
	ldr	r4, [fp]
	str	r8, [sp]	@ float
	ldr	ip, [r4, #12]
	mov	r1, r0
	mov	r0, fp
	blx	ip
	mov	r0, r6
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+12
	mov	r6, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r9
	mov	r4, r0
	ldr	r0, [sp, #20]	@ float
	bl	__aeabi_fsub(PLT)
	ldr	ip, [r5, #72]
	mov	r1, r6
	mov	r2, r9
	ldr	lr, [ip]
	mov	r3, r4
	str	r0, [sp]	@ float
	mov	r0, ip
	ldr	ip, [lr, #12]
	blx	ip
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	ldr	r1, .L18+12
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r4, r0
	mov	r1, r4
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	mov	r10, r0
	mov	r0, r7
	b	.L15
.L17:
	ldr	r1, .L18+44
	ldr	r8, [r3, #140]
	bl	__aeabi_fmul(PLT)
	mov	r9, r0
	mov	r1, r9
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	ldr	r3, [r8]
	ldr	r3, [r3, #4]
	mov	fp, r0
	mov	r0, r8
	blx	r3
	ldr	r3, [r8]
	ldr	r3, [r3]
	mov	r10, r0
	mov	r0, r8
	blx	r3
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fdiv(PLT)
	mov	r1, r9
	bl	__aeabi_fmul(PLT)
	mov	r1, #1056964608
	ldr	r8, [r5, #80]
	mov	r10, r0
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+48
	ldr	fp, [r8]
	mov	r3, r0
	mov	r0, r7
	str	r3, [sp, #16]
	bl	__aeabi_fsub(PLT)
	mov	r1, r10
	bl	__aeabi_fsub(PLT)
	ldr	r3, [sp, #16]
	str	r10, [sp]	@ float
	ldr	ip, [fp, #12]
	mov	r1, r3
	mov	r3, r9
	mov	r2, r0
	mov	r0, r8
	blx	ip
	mov	r0, r4
	ldr	r1, .L18+32
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	mov	fp, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	mov	r1, #1056964608
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+36
	mov	r10, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	ldr	r1, .L18+52
	str	r0, [sp, #20]	@ float
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	ip, [r5, #104]
	mov	r2, r8
	ldr	r3, [sp, #20]	@ float
	ldr	lr, [ip]
	mov	r1, fp
	str	r0, [sp]	@ float
	mov	r0, ip
	ldr	ip, [lr, #12]
	blx	ip
	mov	r0, r7
	ldr	r1, .L18+56
	bl	__aeabi_fmul(PLT)
	ldr	ip, [r5, #100]
	mov	r2, r8
	ldr	r3, [sp, #20]	@ float
	ldr	lr, [ip]
	mov	r1, fp
	str	r0, [sp]	@ float
	mov	r0, ip
	ldr	ip, [lr, #12]
	blx	ip
	mov	r1, r4
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	ldr	fp, [r5, #96]
	ldr	r1, .L18+24
	ldr	r3, [fp]
	str	r3, [sp, #16]
	mov	r10, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	r3, [sp, #16]
	str	r8, [sp]	@ float
	mov	r1, r10
	ldr	ip, [r3, #12]
	mov	r3, r8
	mov	r2, r0
	mov	r0, fp
	blx	ip
	mov	r0, r7
	mov	r1, #1061158912
	bl	__aeabi_fmul(PLT)
	ldr	fp, [r5, #92]
	mov	r3, r8
	mov	r1, r10
	ldr	r7, [fp]
	str	r8, [sp]	@ float
	ldr	ip, [r7, #12]
	mov	r2, r0
	mov	r0, fp
	blx	ip
	mov	r0, r9
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+12
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L18+52
	mov	r7, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	ldr	ip, [r5, #72]
	mov	r1, r9
	mov	r2, r8
	ldr	lr, [ip]
	mov	r3, r7
	str	r0, [sp]	@ float
	mov	r0, ip
	ldr	ip, [lr, #12]
	blx	ip
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	_ZN4Game15g_viewportWidthE(GOT)
	.word	_ZN4Game16g_viewportHeightE(GOT)
	.word	1036831949
	.word	1028443341
	.word	_ZN4Game12g_inPortraitE(GOT)
	.word	1051931443
	.word	1063675494
	.word	1084227584
	.word	1075838976
	.word	1057803469
	.word	1061997773
	.word	1101004800
	.word	1045220557
	.word	1058642330
	.size	_ZN4Menu12UpdateLayoutEv, .-_ZN4Menu12UpdateLayoutEv
	.section	.text._ZN4Menu4ShowE9MenuState,"ax",%progbits
	.align	2
	.global	_ZN4Menu4ShowE9MenuState
	.hidden	_ZN4Menu4ShowE9MenuState
	.type	_ZN4Menu4ShowE9MenuState, %function
_ZN4Menu4ShowE9MenuState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0]
	stmfd	sp!, {r3, lr}
	str	r1, [r0, #24]
	ldr	r3, [r2, #20]
	blx	r3
	ldmfd	sp!, {r3, pc}
	.size	_ZN4Menu4ShowE9MenuState, .-_ZN4Menu4ShowE9MenuState
	.section	.text._ZN4Menu24RetrieveSettingsFromFileEv,"ax",%progbits
	.align	2
	.global	_ZN4Menu24RetrieveSettingsFromFileEv
	.hidden	_ZN4Menu24RetrieveSettingsFromFileEv
	.type	_ZN4Menu24RetrieveSettingsFromFileEv, %function
_ZN4Menu24RetrieveSettingsFromFileEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r4, .L30
	ldr	r9, .L30+4
.LPIC1:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
.LPIC7:
	add	r9, pc, r9
	subs	r2, r0, #0
	beq	.L27
.L22:
	ldr	r0, .L30+8
	ldr	r1, .L30+12
.LPIC12:
	add	r0, pc, r0
.LPIC13:
	add	r1, pc, r1
	bl	s3eFileOpen(PLT)
	ldr	r4, .L30+16
	ldr	fp, .L30+20
.LPIC14:
	add	r4, pc, r4
	mov	r8, #0
.LPIC18:
	add	fp, pc, fp
	add	r5, r4, #32
	mov	r10, r8
	mov	r6, #2
	mov	r7, r0
	bl	s3eFileGetSize(PLT)
	ldr	r3, .L30+24
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp, #4]
.L26:
	str	r10, [r5]
	mov	r1, #30
	mov	r2, r7
	mov	r0, r5
	str	r10, [r4, #36]
	str	r10, [r4, #40]
	str	r10, [r4, #44]
	str	r10, [r4, #48]
	str	r10, [r4, #52]
	str	r10, [r4, #56]
	str	r10, [r4, #60]
	bl	s3eFileReadString(PLT)
	mov	r1, fp
	mov	r2, #7
	mov	r0, r5
	strb	r8, [r4, #40]
	bl	strncmp(PLT)
	ldr	r1, [sp, #4]
	mov	r2, #7
	cmp	r0, #0
	mov	r0, r5
	beq	.L28
	bl	strncmp(PLT)
	cmp	r0, #0
	beq	.L29
.L24:
	subs	r6, r6, #1
	bne	.L26
	mov	r0, r7
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	s3eFileClose(PLT)
.L28:
	ldr	r2, .L30+28
	add	r0, r4, #39
	ldr	r2, [r9, r2]
	ldr	r2, [r2]
	str	r2, [sp]
	bl	atoi(PLT)
	ldr	r2, [sp]
	adds	r0, r0, #0
	movne	r0, #1
	strb	r0, [r2, #20]
	b	.L24
.L29:
	ldr	r2, .L30+28
	add	r0, r4, #39
	ldr	r2, [r9, r2]
	ldr	r2, [r2]
	str	r2, [sp]
	bl	atoi(PLT)
	ldr	r2, [sp]
	adds	r0, r0, #0
	movne	r0, #1
	strb	r0, [r2, #21]
	b	.L24
.L27:
	ldr	r3, .L30+32
	mov	r0, r4
.LPIC2:
	add	r3, pc, r3
	mov	r4, r3
	ldr	r1, .L30+36
	str	r2, [r3], #4
	add	r3, r3, #4
	str	r2, [r4, #4]
.LPIC4:
	add	r1, pc, r1
	str	r2, [r3], #4
	str	r2, [r3], #4
	str	r2, [r3], #4
	str	r2, [r3], #4
	str	r2, [r3], #4
	str	r2, [r3]
	bl	s3eFileOpen(PLT)
	ldr	r3, .L30+28
	ldr	r1, .L30+40
	ldr	r6, [r9, r3]
.LPIC6:
	add	r1, pc, r1
	ldr	r3, [r6]
	ldrb	r2, [r3, #20]	@ zero_extendqisi2
	mov	r5, r0
	mov	r0, r4
	bl	sprintf(PLT)
	mov	r3, r5
	mov	r0, r4
	mov	r1, #9
	mov	r2, #1
	bl	s3eFileWrite(PLT)
	ldr	r3, [r6]
	ldr	r1, .L30+44
	mov	r0, r4
	ldrb	r2, [r3, #21]	@ zero_extendqisi2
.LPIC10:
	add	r1, pc, r1
	bl	sprintf(PLT)
	mov	r0, r4
	mov	r3, r5
	mov	r1, #9
	mov	r2, #1
	bl	s3eFileWrite(PLT)
	mov	r0, r5
	bl	s3eFileClose(PLT)
	b	.L22
.L31:
	.align	2
.L30:
	.word	.LC0-(.LPIC1+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LC0-(.LPIC12+8)
	.word	.LC4-(.LPIC13+8)
	.word	.LANCHOR0-(.LPIC14+8)
	.word	.LC5-(.LPIC18+8)
	.word	.LC6-(.LPIC21+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	.LANCHOR0-(.LPIC2+8)
	.word	.LC1-(.LPIC4+8)
	.word	.LC2-(.LPIC6+8)
	.word	.LC3-(.LPIC10+8)
	.size	_ZN4Menu24RetrieveSettingsFromFileEv, .-_ZN4Menu24RetrieveSettingsFromFileEv
	.section	.text._ZN4Menu20UpdateSettingsInFileEv,"ax",%progbits
	.align	2
	.global	_ZN4Menu20UpdateSettingsInFileEv
	.hidden	_ZN4Menu20UpdateSettingsInFileEv
	.type	_ZN4Menu20UpdateSettingsInFileEv, %function
_ZN4Menu20UpdateSettingsInFileEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #0
	ldr	r4, .L33
	ldr	r0, .L33+4
.LPIC23:
	add	r4, pc, r4
	mov	r3, r4
	ldr	r1, .L33+8
	str	r2, [r3], #4
	add	r3, r3, #4
	str	r2, [r4, #4]
.LPIC25:
	add	r1, pc, r1
	str	r2, [r3], #4
.LPIC24:
	add	r0, pc, r0
	str	r2, [r3], #4
	str	r2, [r3], #4
	str	r2, [r3], #4
	str	r2, [r3], #4
	str	r2, [r3]
	bl	s3eFileOpen(PLT)
	ldr	r3, .L33+12
	ldr	r2, .L33+16
.LPIC28:
	add	r3, pc, r3
	ldr	r1, .L33+20
	ldr	r6, [r3, r2]
.LPIC27:
	add	r1, pc, r1
	ldr	r3, [r6]
	ldrb	r2, [r3, #20]	@ zero_extendqisi2
	mov	r5, r0
	mov	r0, r4
	bl	sprintf(PLT)
	mov	r3, r5
	mov	r0, r4
	mov	r1, #9
	mov	r2, #1
	bl	s3eFileWrite(PLT)
	ldr	r3, [r6]
	ldr	r1, .L33+24
	mov	r0, r4
	ldrb	r2, [r3, #21]	@ zero_extendqisi2
.LPIC31:
	add	r1, pc, r1
	bl	sprintf(PLT)
	mov	r0, r4
	mov	r3, r5
	mov	r1, #9
	mov	r2, #1
	bl	s3eFileWrite(PLT)
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, lr}
	b	s3eFileClose(PLT)
.L34:
	.align	2
.L33:
	.word	.LANCHOR0-(.LPIC23+8)
	.word	.LC0-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	.LC2-(.LPIC27+8)
	.word	.LC3-(.LPIC31+8)
	.size	_ZN4Menu20UpdateSettingsInFileEv, .-_ZN4Menu20UpdateSettingsInFileEv
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
	beq	.L36
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L45
.L37:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L46
.L41:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L39:
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
.L45:
	cmp	r2, #0
	beq	.L47
.L36:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L48
.L43:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L49
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L39
.L49:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L39
.L48:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L43
.L46:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L41
.L47:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L36
	b	.L37
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
	beq	.L126
	cmp	ip, r8
	beq	.L127
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L128
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L129
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L87
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L88
.L87:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L120
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L50
.L128:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L130
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L131
.L122:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L50:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L127:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L132
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L81
	b	.L142
.L133:
	mov	r4, r0
.L81:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L133
	cmp	r1, #0
	beq	.L111
	cmp	r2, r4
	beq	.L134
.L77:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L82:
	cmp	r8, r3
	bhi	.L135
.L95:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L130:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L88:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L103
	ldr	r0, [r6]
	b	.L92
.L136:
	mov	r4, r3
.L92:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L136
	cmp	r1, #0
	moveq	r3, r4
	bne	.L103
.L93:
	cmp	r0, r2
	bls	.L95
.L123:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L95
.L132:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L126:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L137
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L138
	strls	ip, [r0]
	bls	.L50
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L139
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L65
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L66
.L120:
	mov	r2, r0
	b	.L122
.L111:
	mov	ip, r4
	b	.L82
.L131:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L50
.L137:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L104
	ldr	r0, [r6]
	b	.L57
.L140:
	mov	r4, r3
.L57:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L140
	cmp	r1, #0
	moveq	r3, r4
	bne	.L53
.L58:
	cmp	r2, r0
	bcs	.L95
	b	.L123
.L103:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L125
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L93
.L135:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L95
.L138:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L50
.L104:
	mov	r4, r8
.L53:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L124
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L58
.L142:
	mov	r4, ip
	b	.L77
.L65:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L71
	b	.L143
.L141:
	mov	r4, r3
.L71:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L141
	cmp	r0, #0
	moveq	r3, r4
	bne	.L67
.L72:
	cmp	r2, r1
	bcs	.L95
	b	.L123
.L134:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L95
.L139:
	ldr	r3, [r4]
.L66:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L50
.L125:
	mov	r2, r4
.L124:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L95
.L143:
	mov	r4, ip
.L67:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L125
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L72
.L129:
	str	r3, [r5]
	b	.L50
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN4MenuC2Ev,"ax",%progbits
	.align	2
	.global	_ZN4MenuC2Ev
	.hidden	_ZN4MenuC2Ev
	.type	_ZN4MenuC2Ev, %function
_ZN4MenuC2Ev:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #76
	mov	r4, r0
	bl	_ZN4ViewC2Ev(PLT)
	ldr	r3, .L515
	mov	r0, r4
.LPIC33:
	add	r3, pc, r3
	add	r3, r3, #8
	str	r3, [r0], #28
	bl	_ZN4ViewC1Ev(PLT)
	add	r0, r4, #48
	bl	_ZN4ViewC1Ev(PLT)
	mov	r7, #0
	mov	r3, #1
	strb	r3, [r4, #52]
	strb	r3, [r4, #32]
	mov	r0, r4
	str	r7, [r4, #24]
	bl	_ZN4Menu24RetrieveSettingsFromFileEv(PLT)
	mov	r0, #136
	bl	_Znwj(PLT)
	ldr	r1, .L515+4
	mov	r5, #0
.LPIC34:
	add	r1, pc, r1
	mov	r6, r0
	bl	_ZN10BackgroundC1EPKc(PLT)
	str	r6, [r4, #68]
	mov	r0, #136
	bl	_Znwj(PLT)
	ldr	r1, .L515+8
	mov	r2, r5
	mov	r3, r5
.LPIC35:
	add	r1, pc, r1
	str	r5, [sp]	@ float
	str	r5, [sp, #4]	@ float
	mov	r6, r0
	bl	_ZN10GuiTextureC1EPKcffff(PLT)
	str	r6, [r4, #72]
	mov	r0, #136
	bl	_Znwj(PLT)
	ldr	r1, .L515+12
	mov	r2, r5
	mov	r3, r5
	str	r5, [sp]	@ float
	str	r5, [sp, #4]	@ float
.LPIC36:
	add	r1, pc, r1
	ldr	r6, .L515+16
.LPIC37:
	add	r6, pc, r6
	mov	r8, r0
	bl	_ZN10GuiTextureC1EPKcffff(PLT)
	ldr	r2, .L515+20
	str	r8, [r4, #76]
	ldr	r1, .L515+24
	ldr	r5, [r6, r2]
	ldr	r2, .L515+28
	mov	r3, r7
	ldr	r0, [r5]
.LPIC38:
	add	r1, pc, r1
.LPIC39:
	add	r2, pc, r2
	ldr	r0, [r0, #12]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r3, .L515+32
	ldr	r1, [r5]
	ldr	r10, [r6, r3]
	ldr	r2, [r1, #12]
	ldr	r3, [r10]
	str	r2, [r3, #100]
	ldr	r8, [r1]
	ldr	r2, [r8, #4]
	cmp	r2, r7
	mov	r9, r0
	ldr	ip, [r0, #4]
	beq	.L150
	mov	r7, r8
	mov	r3, r2
.L149:
	ldr	r0, [r3, #16]
	cmp	r0, ip
	movcs	r7, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L149
	cmp	r8, r7
	beq	.L150
	ldr	r3, [r7, #16]
	cmp	r3, ip
	bls	.L500
.L150:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	ip, [r9, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L157
.L156:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L156
	cmp	r0, lr
	beq	.L157
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L400
.L157:
	mov	r8, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	lr, [sp, #56]
	str	ip, [sp, #64]
	str	r8, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #60]
	ldr	r1, [r5]
.L400:
	str	r7, [lr, #20]
	str	r7, [sp, #36]
	b	.L158
.L500:
	mov	lr, r8
.L162:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L162
	cmp	r8, lr
	beq	.L163
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L401
.L163:
	mov	r7, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	lr, [sp, #56]
	str	ip, [sp, #64]
	str	r7, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #60]
	ldr	r1, [r5]
.L401:
	ldr	lr, [lr, #20]
	str	lr, [sp, #36]
.L158:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+36
	ldr	r1, .L515+40
.LPIC41:
	add	r2, pc, r2
.LPIC40:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r7, [r1]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	mov	r8, r0
	ldr	ip, [r0, #4]
	beq	.L169
	mov	r0, r7
	mov	r3, r2
.L168:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r0, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L168
	cmp	r7, r0
	beq	.L169
	ldr	r3, [r0, #16]
	cmp	r3, ip
	bls	.L501
.L169:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	lr, [r8, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	ip, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L176
.L175:
	ldr	r2, [r3, #16]
	cmp	r2, lr
	movcs	ip, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L175
	cmp	r0, ip
	beq	.L176
	ldr	r3, [ip, #16]
	cmp	r3, lr
	bls	.L402
.L176:
	mov	r8, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	ip, [sp, #56]
	str	lr, [sp, #64]
	str	r8, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #60]
	ldr	r1, [r5]
.L402:
	str	r7, [ip, #20]
	str	r7, [sp, #40]
	b	.L177
.L501:
	mov	lr, r7
.L181:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L181
	cmp	r7, lr
	beq	.L182
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L403
.L182:
	mov	r7, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	lr, [sp, #56]
	str	ip, [sp, #64]
	str	r7, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #60]
	ldr	r1, [r5]
.L403:
	ldr	lr, [lr, #20]
	str	lr, [sp, #40]
.L177:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+44
	ldr	r1, .L515+48
.LPIC43:
	add	r2, pc, r2
.LPIC42:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r7, [r1]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	mov	r8, r0
	ldr	ip, [r0, #4]
	beq	.L188
	mov	r0, r7
	mov	r3, r2
.L187:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r0, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L187
	cmp	r7, r0
	beq	.L188
	ldr	r3, [r0, #16]
	cmp	r3, ip
	bls	.L502
.L188:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	ip, [r8, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L195
.L194:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L194
	cmp	r0, lr
	beq	.L195
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L404
.L195:
	mov	r8, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	lr, [sp, #56]
	str	ip, [sp, #64]
	str	r8, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #60]
	ldr	r1, [r5]
.L404:
	str	r7, [lr, #20]
	str	r7, [sp, #44]
	b	.L196
.L502:
	mov	lr, r7
.L200:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L200
	cmp	r7, lr
	beq	.L201
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L405
.L201:
	mov	r7, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	lr, [sp, #56]
	str	ip, [sp, #64]
	str	r7, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #60]
	ldr	r1, [r5]
.L405:
	ldr	lr, [lr, #20]
	str	lr, [sp, #44]
.L196:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+52
	ldr	r1, .L515+56
.LPIC45:
	add	r2, pc, r2
.LPIC44:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r7, [r1]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	mov	r8, r0
	ldr	ip, [r0, #4]
	beq	.L207
	mov	r0, r7
	mov	r3, r2
.L206:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r0, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L206
	cmp	r7, r0
	beq	.L207
	ldr	r3, [r0, #16]
	cmp	r3, ip
	bls	.L503
.L207:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	r3, [r8, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	ip, r0
	ldr	r2, [r0, #4]
	cmp	r2, #0
	beq	.L214
.L213:
	ldr	lr, [r2, #16]
	cmp	lr, r3
	movcs	ip, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L213
	cmp	r0, ip
	beq	.L214
	ldr	r2, [ip, #16]
	cmp	r2, r3
	bls	.L406
.L214:
	mov	lr, #0
	str	r3, [sp, #64]
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	ip, [sp, #56]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #60]
	ldr	r1, [r5]
.L406:
	str	r7, [ip, #20]
	str	r7, [sp, #48]
	b	.L215
.L503:
	mov	lr, r7
.L219:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L219
	cmp	r7, lr
	beq	.L220
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L407
.L220:
	mov	r7, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	lr, [sp, #56]
	str	ip, [sp, #64]
	str	r7, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #60]
	ldr	r1, [r5]
.L407:
	ldr	lr, [lr, #20]
	str	lr, [sp, #48]
.L215:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+60
	ldr	r1, .L515+64
.LPIC47:
	add	r2, pc, r2
.LPIC46:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r7, [r1]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	mov	r8, r0
	ldr	ip, [r0, #4]
	beq	.L226
	mov	r0, r7
	mov	r3, r2
.L225:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r0, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L225
	cmp	r7, r0
	beq	.L226
	ldr	r3, [r0, #16]
	cmp	r3, ip
	bls	.L504
.L226:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	r2, [r8, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	ip, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L233
.L232:
	ldr	lr, [r3, #16]
	cmp	lr, r2
	movcs	ip, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L232
	cmp	ip, r0
	beq	.L233
	ldr	r3, [ip, #16]
	cmp	r3, r2
	bls	.L408
.L233:
	mov	lr, #0
	str	r2, [sp, #64]
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	ip, [sp, #56]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #60]
	ldr	r1, [r5]
.L408:
	str	r7, [ip, #20]
	str	r7, [sp, #52]
	b	.L234
.L504:
	mov	lr, r7
.L238:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L238
	cmp	r7, lr
	beq	.L239
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L409
.L239:
	mov	r7, #0
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	lr, [sp, #56]
	str	ip, [sp, #64]
	str	r7, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #60]
	ldr	r1, [r5]
.L409:
	ldr	lr, [lr, #20]
	str	lr, [sp, #52]
.L234:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+68
	ldr	r1, .L515+72
.LPIC49:
	add	r2, pc, r2
.LPIC48:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r7, [r1]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	mov	r9, r0
	ldr	ip, [r0, #4]
	beq	.L245
	mov	r0, r7
	mov	r3, r2
.L244:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r0, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L244
	cmp	r0, r7
	beq	.L245
	ldr	r3, [r0, #16]
	cmp	r3, ip
	bls	.L505
.L245:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	r2, [r9, #4]
	mov	r8, r0
	ldr	r0, [r1]
	mov	ip, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L252
.L251:
	ldr	lr, [r3, #16]
	cmp	lr, r2
	movcs	ip, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L251
	cmp	ip, r0
	beq	.L252
	ldr	r3, [ip, #16]
	cmp	r3, r2
	bls	.L410
.L252:
	mov	lr, #0
	str	r2, [sp, #64]
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	ip, [sp, #56]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #60]
	ldr	r1, [r5]
.L410:
	str	r8, [ip, #20]
	b	.L253
.L505:
	mov	r3, r7
.L257:
	ldr	r0, [r2, #16]
	cmp	r0, ip
	movcs	r3, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L257
	cmp	r3, r7
	beq	.L258
	ldr	r2, [r3, #16]
	cmp	r2, ip
	bls	.L411
.L258:
	mov	lr, #0
	str	r3, [sp, #56]
	add	r0, sp, #60
	add	r3, sp, #64
	add	r2, sp, #56
	str	ip, [sp, #64]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, [sp, #60]
	ldr	r1, [r5]
.L411:
	ldr	r8, [r3, #20]
.L253:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+76
	ldr	r1, .L515+80
.LPIC51:
	add	r2, pc, r2
.LPIC50:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r7, [r1]
	ldr	r2, [r7, #4]
	cmp	r2, #0
	mov	r9, r0
	ldr	ip, [r0, #4]
	beq	.L264
	mov	r0, r7
	mov	r3, r2
.L263:
	ldr	lr, [r3, #16]
	cmp	ip, lr
	movls	r0, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L263
	cmp	r0, r7
	beq	.L264
	ldr	r3, [r0, #16]
	cmp	ip, r3
	bcs	.L506
.L264:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	r2, [r9, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	ip, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L271
.L270:
	ldr	lr, [r3, #16]
	cmp	r2, lr
	movls	ip, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L270
	cmp	ip, r0
	beq	.L271
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcs	.L412
.L271:
	mov	lr, #0
	str	r2, [sp, #64]
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	ip, [sp, #56]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #60]
	ldr	r1, [r5]
.L412:
	str	r7, [ip, #20]
	b	.L272
.L506:
	mov	r3, r7
.L276:
	ldr	r0, [r2, #16]
	cmp	ip, r0
	movls	r3, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L276
	cmp	r3, r7
	beq	.L277
	ldr	r2, [r3, #16]
	cmp	ip, r2
	bcs	.L413
.L277:
	mov	lr, #0
	str	r3, [sp, #56]
	add	r0, sp, #60
	add	r3, sp, #64
	add	r2, sp, #56
	str	ip, [sp, #64]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, [sp, #60]
	ldr	r1, [r5]
.L413:
	ldr	r7, [r3, #20]
.L272:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+84
	ldr	r1, .L515+88
.LPIC53:
	add	r2, pc, r2
.LPIC52:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r9, [r1]
	ldr	r2, [r9, #4]
	cmp	r2, #0
	mov	fp, r0
	ldr	ip, [r0, #4]
	beq	.L283
	mov	r0, r9
	mov	r3, r2
.L282:
	ldr	lr, [r3, #16]
	cmp	ip, lr
	movls	r0, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L282
	cmp	r0, r9
	beq	.L283
	ldr	r3, [r0, #16]
	cmp	ip, r3
	bcs	.L507
.L283:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	r2, [fp, #4]
	mov	r9, r0
	ldr	r0, [r1]
	mov	ip, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L290
.L289:
	ldr	lr, [r3, #16]
	cmp	r2, lr
	movls	ip, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L289
	cmp	ip, r0
	beq	.L290
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcs	.L414
.L290:
	mov	lr, #0
	str	r2, [sp, #64]
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	ip, [sp, #56]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #60]
	ldr	r1, [r5]
.L414:
	str	r9, [ip, #20]
	b	.L291
.L507:
	mov	r3, r9
.L295:
	ldr	r0, [r2, #16]
	cmp	ip, r0
	movls	r3, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L295
	cmp	r3, r9
	beq	.L296
	ldr	r2, [r3, #16]
	cmp	ip, r2
	bcs	.L415
.L296:
	mov	lr, #0
	str	r3, [sp, #56]
	add	r0, sp, #60
	add	r3, sp, #64
	add	r2, sp, #56
	str	ip, [sp, #64]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, [sp, #60]
	ldr	r1, [r5]
.L415:
	ldr	r9, [r3, #20]
.L291:
	ldr	r0, [r1, #12]
	ldr	r2, .L515+92
	ldr	r1, .L515+96
.LPIC55:
	add	r2, pc, r2
.LPIC54:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r5]
	ldr	r3, [r10]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r10, [r1]
	ldr	r2, [r10, #4]
	cmp	r2, #0
	mov	fp, r0
	ldr	ip, [r0, #4]
	beq	.L302
	mov	r0, r10
	mov	r3, r2
.L301:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r0, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L301
	cmp	r0, r10
	beq	.L302
	ldr	r3, [r0, #16]
	cmp	r3, ip
	bls	.L508
.L302:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r5]
	ldr	r2, [fp, #4]
	mov	r10, r0
	ldr	r0, [r1]
	mov	ip, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L309
.L308:
	ldr	lr, [r3, #16]
	cmp	lr, r2
	movcs	ip, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L308
	cmp	ip, r0
	beq	.L309
	ldr	r3, [ip, #16]
	cmp	r3, r2
	bls	.L416
.L309:
	mov	lr, #0
	str	r2, [sp, #64]
	add	r0, sp, #60
	add	r2, sp, #56
	add	r3, sp, #64
	str	ip, [sp, #56]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #60]
.L416:
	str	r10, [ip, #20]
	b	.L310
.L516:
	.align	2
.L515:
	.word	.LANCHOR1-(.LPIC33+8)
	.word	.LC7-(.LPIC34+8)
	.word	.LC8-(.LPIC35+8)
	.word	.LC9-(.LPIC36+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC37+8)
	.word	_ZN12ImageManager9singletonE(GOT)
	.word	.LC10-(.LPIC38+8)
	.word	.LC11-(.LPIC39+8)
	.word	g_IwResManager(GOT)
	.word	.LC11-(.LPIC41+8)
	.word	.LC12-(.LPIC40+8)
	.word	.LC11-(.LPIC43+8)
	.word	.LC13-(.LPIC42+8)
	.word	.LC11-(.LPIC45+8)
	.word	.LC14-(.LPIC44+8)
	.word	.LC11-(.LPIC47+8)
	.word	.LC15-(.LPIC46+8)
	.word	.LC11-(.LPIC49+8)
	.word	.LC16-(.LPIC48+8)
	.word	.LC11-(.LPIC51+8)
	.word	.LC17-(.LPIC50+8)
	.word	.LC11-(.LPIC53+8)
	.word	.LC18-(.LPIC52+8)
	.word	.LC11-(.LPIC55+8)
	.word	.LC19-(.LPIC54+8)
	.word	_ZN4Game13StartButtonCBEv(GOT)
	.word	_ZN4Game16SettingsButtonCBEv(GOT)
	.word	_ZN4Game12BackButtonCBEv(GOT)
	.word	.LC20-(.LPIC56+8)
	.word	.LC21-(.LPIC57+8)
	.word	_ZN4Game15MusicCheckboxCBEb(GOT)
	.word	_ZN4Game13SfxCheckboxCBEb(GOT)
	.word	_ZN4Game10g_instanceE(GOT)
.L508:
	mov	r3, r10
.L314:
	ldr	r0, [r2, #16]
	cmp	r0, ip
	movcs	r3, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L314
	cmp	r3, r10
	beq	.L315
	ldr	r2, [r3, #16]
	cmp	r2, ip
	bls	.L417
.L315:
	mov	lr, #0
	str	r3, [sp, #56]
	add	r0, sp, #60
	add	r3, sp, #64
	add	r2, sp, #56
	str	ip, [sp, #64]
	str	lr, [sp, #68]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, [sp, #60]
.L417:
	ldr	r10, [r3, #20]
.L310:
	mov	r0, #292
	bl	_Znwj(PLT)
	ldr	r2, [sp, #36]
	ldr	r3, .L515+100
	str	r2, [sp, #4]
	ldr	r2, [sp, #40]
	mov	fp, #0
	str	r2, [sp, #8]
	str	fp, [sp]	@ float
	ldr	r3, [r6, r3]
	mov	r1, fp
	mov	r2, fp
	str	r3, [sp, #12]
	mov	r3, fp
	mov	r5, r0
	bl	_ZN6ButtonC1EffffP10CIw2DImageS1_PFvvE(PLT)
	str	r5, [r4, #80]
	mov	r0, #292
	bl	_Znwj(PLT)
	ldr	r2, [sp, #44]
	ldr	r3, .L515+104
	str	r2, [sp, #4]
	ldr	r2, [sp, #48]
	str	fp, [sp]	@ float
	str	r2, [sp, #8]
	ldr	r3, [r6, r3]
	mov	r1, fp
	str	r3, [sp, #12]
	mov	r2, fp
	mov	r3, fp
	mov	r5, r0
	bl	_ZN6ButtonC1EffffP10CIw2DImageS1_PFvvE(PLT)
	ldr	ip, [r4, #40]
	ldr	r3, [r4, #44]
	str	r5, [r4, #84]
	cmp	ip, r3
	ldr	r5, [r4, #68]
	beq	.L316
	str	r5, [ip]
	ldr	r5, [r4, #40]
	ldr	fp, [r4, #44]
	add	r5, r5, #4
	str	r5, [r4, #40]
.L317:
	cmp	r5, fp
	ldr	ip, [r4, #76]
	beq	.L323
	str	ip, [r5]
	ldr	r1, [r4, #40]
	ldr	r5, [r4, #44]
	add	r1, r1, #4
	str	r1, [r4, #40]
.L324:
	cmp	r5, r1
	ldr	ip, [r4, #80]
	beq	.L330
	str	ip, [r1]
	ldr	r2, [r4, #40]
	ldr	fp, [r4, #44]
	add	r2, r2, #4
	str	r2, [r4, #40]
.L331:
	cmp	fp, r2
	ldr	ip, [r4, #84]
	beq	.L337
	str	ip, [r2]
	ldr	r2, [r4, #40]
	ldr	r5, [r4, #44]
	add	r2, r2, #4
	str	r2, [r4, #40]
.L338:
	cmp	r5, r2
	ldr	r3, [r4, #72]
	beq	.L344
	str	r3, [r2]
	ldr	r3, [r4, #40]
	add	r3, r3, #4
	str	r3, [r4, #40]
.L345:
	mov	r0, #292
	bl	_Znwj(PLT)
	ldr	r2, [sp, #52]
	ldr	r3, .L515+108
	mov	r5, #0
	stmib	sp, {r2, r8}
	str	r5, [sp]	@ float
	ldr	r3, [r6, r3]
	mov	r1, r5
	mov	r2, r5
	str	r3, [sp, #12]
	mov	r3, r5
	mov	fp, r0
	bl	_ZN6ButtonC1EffffP10CIw2DImageS1_PFvvE(PLT)
	str	fp, [r4, #88]
	mov	r0, #136
	bl	_Znwj(PLT)
	ldr	r1, .L515+112
	mov	r2, r5
	mov	r3, r5
.LPIC56:
	add	r1, pc, r1
	str	r5, [sp]	@ float
	str	r5, [sp, #4]	@ float
	mov	r8, r0
	bl	_ZN10GuiTextureC1EPKcffff(PLT)
	str	r8, [r4, #100]
	mov	r0, #136
	bl	_Znwj(PLT)
	ldr	r1, .L515+116
	mov	r2, r5
	mov	r3, r5
.LPIC57:
	add	r1, pc, r1
	str	r5, [sp]	@ float
	str	r5, [sp, #4]	@ float
	mov	r8, r0
	bl	_ZN10GuiTextureC1EPKcffff(PLT)
	str	r8, [r4, #104]
	mov	r0, #416
	bl	_Znwj(PLT)
	ldr	r3, .L515+120
	str	r5, [sp]	@ float
	stmib	sp, {r7, r9, r10}
	mov	r1, r5
	ldr	r3, [r6, r3]
	mov	r2, r5
	str	r3, [sp, #16]
	mov	r3, r5
	mov	r8, r0
	bl	_ZN8CheckboxC1EffffP10CIw2DImageS1_S1_PFvbE(PLT)
	str	r8, [r4, #96]
	mov	r0, #416
	bl	_Znwj(PLT)
	ldr	r3, .L515+124
	str	r5, [sp]	@ float
	stmib	sp, {r7, r9, r10}
	mov	r1, r5
	ldr	r3, [r6, r3]
	mov	r2, r5
	str	r3, [sp, #16]
	mov	r3, r5
	mov	r8, r0
	bl	_ZN8CheckboxC1EffffP10CIw2DImageS1_S1_PFvbE(PLT)
	ldr	r3, .L515+128
	str	r8, [r4, #92]
	ldr	r2, [r4, #96]
	ldr	r3, [r6, r3]
	ldr	r3, [r3]
	ldrb	r1, [r3, #21]	@ zero_extendqisi2
	strb	r1, [r2, #392]
	ldrb	r2, [r3, #20]	@ zero_extendqisi2
	ldr	r3, [r4, #92]
	strb	r2, [r3, #392]
	ldr	r5, [r4, #60]
	ldr	r3, [r4, #64]
	ldr	r6, [r4, #68]
	cmp	r5, r3
	beq	.L351
	str	r6, [r5]
	ldr	r3, [r4, #60]
	ldr	r5, [r4, #64]
	add	r3, r3, #4
	cmp	r5, r3
	str	r3, [r4, #60]
	ldr	r6, [r4, #76]
	beq	.L358
.L509:
	str	r6, [r3]
	ldr	r5, [r4, #60]
	ldr	r3, [r4, #64]
	add	r5, r5, #4
	cmp	r5, r3
	str	r5, [r4, #60]
	ldr	r6, [r4, #88]
	beq	.L365
.L510:
	str	r6, [r5]
	ldr	r5, [r4, #60]
	ldr	r3, [r4, #64]
	add	r5, r5, #4
	cmp	r5, r3
	str	r5, [r4, #60]
	ldr	r7, [r4, #96]
	beq	.L372
.L511:
	str	r7, [r5]
	ldr	r3, [r4, #60]
	ldr	r6, [r4, #64]
	add	r3, r3, #4
	cmp	r6, r3
	str	r3, [r4, #60]
	ldr	r7, [r4, #92]
	beq	.L379
.L512:
	str	r7, [r3]
	ldr	r3, [r4, #60]
	ldr	r5, [r4, #64]
	add	r3, r3, #4
	cmp	r5, r3
	str	r3, [r4, #60]
	ldr	r6, [r4, #104]
	beq	.L386
.L513:
	str	r6, [r3]
	ldr	r5, [r4, #60]
	ldr	r3, [r4, #64]
	add	r5, r5, #4
	cmp	r5, r3
	str	r5, [r4, #60]
	ldr	r6, [r4, #100]
	beq	.L393
.L514:
	str	r6, [r5]
	ldr	r3, [r4, #60]
	add	r3, r3, #4
	str	r3, [r4, #60]
.L394:
	mov	r0, r4
	bl	_ZN4Menu12UpdateLayoutEv(PLT)
	mov	r0, r4
	add	sp, sp, #76
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L351:
	ldr	r7, [r4, #56]
	rsb	r3, r7, r5
	movs	r3, r3, asr #2
	beq	.L433
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L353
.L354:
	cmp	r7, r5
	moveq	r0, r8
	beq	.L356
	rsb	r5, r7, r5
	mov	r1, r7
	mov	r2, r5
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r5
.L356:
	mov	r7, r0
	str	r6, [r7], #4
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L357
	bl	free(PLT)
.L357:
	add	r5, r8, r9
	mov	r3, r7
	cmp	r5, r3
	str	r5, [r4, #64]
	str	r8, [r4, #56]
	str	r7, [r4, #60]
	ldr	r6, [r4, #76]
	bne	.L509
.L358:
	ldr	r7, [r4, #56]
	rsb	r3, r7, r5
	movs	r3, r3, asr #2
	beq	.L436
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L360
.L361:
	cmp	r5, r7
	moveq	r0, r8
	beq	.L363
	rsb	r5, r7, r5
	mov	r1, r7
	mov	r2, r5
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r5
.L363:
	mov	r7, r0
	str	r6, [r7], #4
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L364
	bl	free(PLT)
.L364:
	add	r3, r8, r9
	mov	r5, r7
	cmp	r5, r3
	str	r3, [r4, #64]
	str	r8, [r4, #56]
	str	r7, [r4, #60]
	ldr	r6, [r4, #88]
	bne	.L510
.L365:
	ldr	r7, [r4, #56]
	rsb	r3, r7, r5
	movs	r3, r3, asr #2
	beq	.L439
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L367
.L368:
	cmp	r7, r5
	moveq	r0, r8
	beq	.L370
	rsb	r5, r7, r5
	mov	r1, r7
	mov	r2, r5
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r5
.L370:
	mov	r7, r0
	str	r6, [r7], #4
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L371
	bl	free(PLT)
.L371:
	mov	r5, r7
	add	r3, r8, r9
	cmp	r5, r3
	str	r7, [r4, #60]
	str	r3, [r4, #64]
	str	r8, [r4, #56]
	ldr	r7, [r4, #96]
	bne	.L511
.L372:
	ldr	r8, [r4, #56]
	rsb	r3, r8, r5
	movs	r3, r3, asr #2
	beq	.L442
	movs	r6, r3, asl #1
	moveq	r9, r6
	bne	.L374
.L375:
	cmp	r8, r5
	moveq	r0, r9
	beq	.L377
	rsb	r5, r8, r5
	mov	r1, r8
	mov	r2, r5
	mov	r0, r9
	bl	memmove(PLT)
	add	r0, r0, r5
.L377:
	mov	r5, r0
	str	r7, [r5], #4
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L378
	bl	free(PLT)
.L378:
	add	r6, r9, r6
	mov	r3, r5
	cmp	r6, r3
	str	r6, [r4, #64]
	str	r9, [r4, #56]
	str	r5, [r4, #60]
	ldr	r7, [r4, #92]
	bne	.L512
.L379:
	ldr	r8, [r4, #56]
	rsb	r3, r8, r6
	movs	r3, r3, asr #2
	beq	.L445
	movs	r5, r3, asl #1
	moveq	r9, r5
	bne	.L381
.L382:
	cmp	r8, r6
	moveq	r0, r9
	beq	.L384
	rsb	r6, r8, r6
	mov	r1, r8
	mov	r2, r6
	mov	r0, r9
	bl	memmove(PLT)
	add	r0, r0, r6
.L384:
	mov	r6, r0
	str	r7, [r6], #4
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L385
	bl	free(PLT)
.L385:
	mov	r3, r6
	add	r5, r9, r5
	cmp	r5, r3
	str	r6, [r4, #60]
	str	r5, [r4, #64]
	str	r9, [r4, #56]
	ldr	r6, [r4, #104]
	bne	.L513
.L386:
	ldr	r7, [r4, #56]
	rsb	r3, r7, r5
	movs	r3, r3, asr #2
	beq	.L448
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L388
.L389:
	cmp	r5, r7
	moveq	r0, r8
	beq	.L391
	rsb	r5, r7, r5
	mov	r1, r7
	mov	r2, r5
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r5
.L391:
	mov	r7, r0
	str	r6, [r7], #4
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L392
	bl	free(PLT)
.L392:
	add	r3, r8, r9
	mov	r5, r7
	cmp	r5, r3
	str	r3, [r4, #64]
	str	r8, [r4, #56]
	str	r7, [r4, #60]
	ldr	r6, [r4, #100]
	bne	.L514
.L393:
	ldr	r7, [r4, #56]
	rsb	r3, r7, r5
	movs	r3, r3, asr #2
	beq	.L451
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L395
.L396:
	cmp	r7, r5
	moveq	r0, r8
	beq	.L398
	rsb	r5, r7, r5
	mov	r1, r7
	mov	r2, r5
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r5
.L398:
	mov	r5, r0
	str	r6, [r5], #4
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L399
	bl	free(PLT)
.L399:
	add	r9, r8, r9
	str	r9, [r4, #64]
	str	r8, [r4, #56]
	str	r5, [r4, #60]
	b	.L394
.L344:
	ldr	r1, [r4, #36]
	rsb	r2, r1, r5
	movs	r2, r2, asr #2
	beq	.L430
	movs	fp, r2, asl #1
	moveq	ip, fp
	bne	.L346
.L347:
	cmp	r5, r1
	moveq	r0, ip
	beq	.L349
	rsb	r5, r1, r5
	mov	r0, ip
	mov	r2, r5
	str	r3, [sp, #28]
	bl	memmove(PLT)
	ldr	r3, [sp, #28]
	mov	ip, r0
	add	r0, r0, r5
.L349:
	mov	r5, r0
	str	r3, [r5], #4
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L350
	str	ip, [sp, #24]
	bl	free(PLT)
	ldr	ip, [sp, #24]
.L350:
	add	fp, ip, fp
	str	fp, [r4, #44]
	str	ip, [r4, #36]
	str	r5, [r4, #40]
	b	.L345
.L337:
	ldr	r1, [r4, #36]
	rsb	r3, r1, fp
	movs	r3, r3, asr #2
	beq	.L427
	movs	r5, r3, asl #1
	moveq	r3, r5
	bne	.L339
.L340:
	cmp	r1, fp
	moveq	r0, r3
	beq	.L342
	rsb	fp, r1, fp
	mov	r0, r3
	mov	r2, fp
	str	ip, [sp, #24]
	bl	memmove(PLT)
	ldr	ip, [sp, #24]
	mov	r3, r0
	add	r0, r0, fp
.L342:
	mov	fp, r0
	str	ip, [fp], #4
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L343
	str	r3, [sp, #28]
	bl	free(PLT)
	ldr	r3, [sp, #28]
.L343:
	add	r5, r3, r5
	mov	r2, fp
	str	r5, [r4, #44]
	str	r3, [r4, #36]
	str	fp, [r4, #40]
	b	.L338
.L330:
	ldr	r1, [r4, #36]
	rsb	r3, r1, r5
	movs	r3, r3, asr #2
	beq	.L424
	movs	fp, r3, asl #1
	moveq	r3, fp
	bne	.L332
.L333:
	cmp	r5, r1
	moveq	r0, r3
	beq	.L335
	rsb	r5, r1, r5
	mov	r0, r3
	mov	r2, r5
	str	ip, [sp, #24]
	bl	memmove(PLT)
	ldr	ip, [sp, #24]
	mov	r3, r0
	add	r0, r0, r5
.L335:
	mov	r5, r0
	str	ip, [r5], #4
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L336
	str	r3, [sp, #28]
	bl	free(PLT)
	ldr	r3, [sp, #28]
.L336:
	add	fp, r3, fp
	mov	r2, r5
	str	fp, [r4, #44]
	str	r3, [r4, #36]
	str	r5, [r4, #40]
	b	.L331
.L323:
	ldr	r1, [r4, #36]
	rsb	r3, r1, r5
	movs	r3, r3, asr #2
	beq	.L421
	movs	fp, r3, asl #1
	streq	fp, [sp, #36]
	bne	.L325
.L326:
	cmp	r5, r1
	moveq	r0, fp
	beq	.L328
	rsb	r5, r1, r5
	mov	r2, r5
	mov	r0, fp
	str	ip, [sp, #24]
	bl	memmove(PLT)
	ldr	ip, [sp, #24]
	add	r0, r0, r5
.L328:
	mov	r2, r0
	str	ip, [r2], #4
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L329
	str	r2, [sp, #32]
	bl	free(PLT)
	ldr	r2, [sp, #32]
.L329:
	ldr	r3, [sp, #36]
	mov	r1, r2
	add	r5, fp, r3
	str	r5, [r4, #44]
	str	fp, [r4, #36]
	str	r2, [r4, #40]
	b	.L324
.L316:
	ldr	r1, [r4, #36]
	rsb	r3, r1, ip
	movs	r3, r3, asr #2
	beq	.L418
	movs	fp, r3, asl #1
	moveq	r3, fp
	bne	.L318
.L319:
	cmp	ip, r1
	moveq	r0, r3
	beq	.L321
	rsb	ip, r1, ip
	mov	r2, ip
	mov	r0, r3
	str	ip, [sp, #24]
	bl	memmove(PLT)
	ldr	ip, [sp, #24]
	mov	r3, r0
	add	r0, r0, ip
.L321:
	mov	ip, r0
	str	r5, [ip], #4
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L322
	str	r3, [sp, #28]
	str	ip, [sp, #24]
	bl	free(PLT)
	ldr	ip, [sp, #24]
	ldr	r3, [sp, #28]
.L322:
	add	fp, r3, fp
	mov	r5, ip
	str	fp, [r4, #44]
	str	r3, [r4, #36]
	str	ip, [r4, #40]
	b	.L317
.L436:
	mov	r9, #1
.L360:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L361
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r4, #56]
	mov	r8, r0
	b	.L361
.L439:
	mov	r9, #1
.L367:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L368
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r4, #56]
	mov	r8, r0
	b	.L368
.L442:
	mov	r6, #1
.L374:
	mov	r6, r6, asl #2
	mov	r0, r6
	bl	malloc(PLT)
	subs	r9, r0, #0
	bne	.L375
	mov	r0, r6
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r8, [r4, #56]
	mov	r9, r0
	b	.L375
.L445:
	mov	r5, #1
.L381:
	mov	r5, r5, asl #2
	mov	r0, r5
	bl	malloc(PLT)
	subs	r9, r0, #0
	bne	.L382
	mov	r0, r5
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r8, [r4, #56]
	mov	r9, r0
	b	.L382
.L448:
	mov	r9, #1
.L388:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L389
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r4, #56]
	mov	r8, r0
	b	.L389
.L451:
	mov	r9, #1
.L395:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L396
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r4, #56]
	mov	r8, r0
	b	.L396
.L418:
	mov	fp, #1
.L318:
	mov	fp, fp, asl #2
	mov	r0, fp
	str	r1, [sp, #32]
	str	ip, [sp, #24]
	bl	malloc(PLT)
	ldr	r1, [sp, #32]
	ldr	ip, [sp, #24]
	subs	r3, r0, #0
	bne	.L319
	mov	r0, fp
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #36]
	ldr	ip, [sp, #24]
	mov	r3, r0
	b	.L319
.L421:
	mov	fp, #1
.L325:
	mov	fp, fp, asl #2
	mov	r0, fp
	str	fp, [sp, #36]
	str	r1, [sp, #32]
	str	ip, [sp, #24]
	bl	malloc(PLT)
	ldr	r1, [sp, #32]
	ldr	ip, [sp, #24]
	subs	fp, r0, #0
	bne	.L326
	ldr	r0, [sp, #36]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #36]
	ldr	ip, [sp, #24]
	mov	fp, r0
	b	.L326
.L424:
	mov	fp, #1
.L332:
	mov	fp, fp, asl #2
	mov	r0, fp
	str	r1, [sp, #32]
	str	ip, [sp, #24]
	bl	malloc(PLT)
	ldr	r1, [sp, #32]
	ldr	ip, [sp, #24]
	subs	r3, r0, #0
	bne	.L333
	mov	r0, fp
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #36]
	ldr	ip, [sp, #24]
	mov	r3, r0
	b	.L333
.L427:
	mov	r5, #1
.L339:
	mov	r5, r5, asl #2
	mov	r0, r5
	str	r1, [sp, #32]
	str	ip, [sp, #24]
	bl	malloc(PLT)
	ldr	r1, [sp, #32]
	ldr	ip, [sp, #24]
	subs	r3, r0, #0
	bne	.L340
	mov	r0, r5
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #36]
	ldr	ip, [sp, #24]
	mov	r3, r0
	b	.L340
.L430:
	mov	fp, #1
.L346:
	mov	fp, fp, asl #2
	mov	r0, fp
	str	r1, [sp, #32]
	str	r3, [sp, #28]
	bl	malloc(PLT)
	ldr	r1, [sp, #32]
	ldr	r3, [sp, #28]
	subs	ip, r0, #0
	bne	.L347
	mov	r0, fp
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #36]
	ldr	r3, [sp, #28]
	mov	ip, r0
	b	.L347
.L433:
	mov	r9, #1
.L353:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L354
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r4, #56]
	mov	r8, r0
	b	.L354
	.size	_ZN4MenuC2Ev, .-_ZN4MenuC2Ev
	.global	_ZN4MenuC1Ev
	.hidden	_ZN4MenuC1Ev
	.set	_ZN4MenuC1Ev,_ZN4MenuC2Ev
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
	beq	.L518
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L527
.L519:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L528
.L523:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L521:
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
.L527:
	cmp	r2, #0
	beq	.L529
.L518:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L530
.L525:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L531
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L521
.L531:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L521
.L530:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L525
.L528:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L523
.L529:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L518
	b	.L519
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
	beq	.L608
	cmp	ip, r8
	beq	.L609
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L610
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L611
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L569
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L570
.L569:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L602
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L532
.L610:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L612
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L613
.L604:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L532:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L609:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L614
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L563
	b	.L624
.L615:
	mov	r4, r0
.L563:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L615
	cmp	r1, #0
	beq	.L593
	cmp	r2, r4
	beq	.L616
.L559:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L564:
	cmp	r8, r3
	bhi	.L617
.L577:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L612:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L570:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L585
	ldr	r0, [r6]
	b	.L574
.L618:
	mov	r4, r3
.L574:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L618
	cmp	r1, #0
	moveq	r3, r4
	bne	.L585
.L575:
	cmp	r0, r2
	bls	.L577
.L605:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L577
.L614:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L608:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L619
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L620
	strls	ip, [r0]
	bls	.L532
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L621
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L547
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L548
.L602:
	mov	r2, r0
	b	.L604
.L593:
	mov	ip, r4
	b	.L564
.L613:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L532
.L619:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L586
	ldr	r0, [r6]
	b	.L539
.L622:
	mov	r4, r3
.L539:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L622
	cmp	r1, #0
	moveq	r3, r4
	bne	.L535
.L540:
	cmp	r2, r0
	bcs	.L577
	b	.L605
.L585:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L607
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L575
.L617:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L577
.L620:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L532
.L586:
	mov	r4, r8
.L535:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L606
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L540
.L624:
	mov	r4, ip
	b	.L559
.L547:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L553
	b	.L625
.L623:
	mov	r4, r3
.L553:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L623
	cmp	r0, #0
	moveq	r3, r4
	bne	.L549
.L554:
	cmp	r2, r1
	bcs	.L577
	b	.L605
.L616:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L577
.L621:
	ldr	r3, [r4]
.L548:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L532
.L607:
	mov	r2, r4
.L606:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L577
.L625:
	mov	r4, ip
.L549:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L607
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L554
.L611:
	str	r3, [r5]
	b	.L532
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN4MenuD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4MenuD2Ev
	.hidden	_ZN4MenuD2Ev
	.type	_ZN4MenuD2Ev, %function
_ZN4MenuD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L639
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #68]
.LPIC58:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r0, #0
	str	r3, [r4]
	beq	.L627
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L627:
	ldr	r0, [r4, #84]
	cmp	r0, #0
	beq	.L628
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L628:
	ldr	r0, [r4, #100]
	cmp	r0, #0
	beq	.L629
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L629:
	add	r0, r4, #48
	bl	_ZN4ViewD1Ev(PLT)
	add	r0, r4, #28
	bl	_ZN4ViewD1Ev(PLT)
	mov	r0, r4
	bl	_ZN4ViewD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L640:
	.align	2
.L639:
	.word	.LANCHOR1-(.LPIC58+8)
	.size	_ZN4MenuD2Ev, .-_ZN4MenuD2Ev
	.global	_ZN4MenuD1Ev
	.hidden	_ZN4MenuD1Ev
	.set	_ZN4MenuD1Ev,_ZN4MenuD2Ev
	.section	.text._ZN4MenuD0Ev,"ax",%progbits
	.align	2
	.global	_ZN4MenuD0Ev
	.hidden	_ZN4MenuD0Ev
	.type	_ZN4MenuD0Ev, %function
_ZN4MenuD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L654
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #68]
.LPIC59:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r0, #0
	str	r3, [r4]
	beq	.L642
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L642:
	ldr	r0, [r4, #84]
	cmp	r0, #0
	beq	.L643
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L643:
	ldr	r0, [r4, #100]
	cmp	r0, #0
	beq	.L644
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L644:
	add	r0, r4, #48
	bl	_ZN4ViewD1Ev(PLT)
	add	r0, r4, #28
	bl	_ZN4ViewD1Ev(PLT)
	mov	r0, r4
	bl	_ZN4ViewD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L655:
	.align	2
.L654:
	.word	.LANCHOR1-(.LPIC59+8)
	.size	_ZN4MenuD0Ev, .-_ZN4MenuD0Ev
	.section	.text._ZN4Menu5EnterEv,"ax",%progbits
	.align	2
	.global	_ZN4Menu5EnterEv
	.hidden	_ZN4Menu5EnterEv
	.type	_ZN4Menu5EnterEv, %function
_ZN4Menu5EnterEv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L672
	ldr	r2, .L672+4
.LPIC60:
	add	r3, pc, r3
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	ldr	r2, [r3, r2]
	mov	r4, r0
	ldr	r2, [r2]
	ldrb	r2, [r2, #21]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L671
	mov	r0, r4
	bl	_ZN4View5EnterEv(PLT)
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L671:
	ldr	r0, .L672+8
	ldr	r2, .L672+12
	ldr	r1, .L672+16
	ldr	r0, [r3, r0]
	ldr	r3, [r3, r2]
	ldr	r2, .L672+20
	ldr	r5, [r0]
	ldr	r0, [r3]
.LPIC61:
	add	r1, pc, r1
	ldr	ip, [r5]
	mov	r3, #0
	str	ip, [r0, #100]
.LPIC62:
	add	r2, pc, r2
	ldr	r0, [r5]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	mov	r1, #0
	bl	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams(PLT)
	subs	r6, r0, #0
	mvneq	r3, #0
	beq	.L658
	ldr	r1, [r5, #4]
	ldr	ip, [r5, #16]
	mov	lr, r1
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L659
.L663:
	ldr	r2, [r3, #16]
	cmp	ip, r2
	movls	lr, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L663
	cmp	r1, lr
	beq	.L659
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L664
.L659:
	mov	r7, #0
	add	r0, sp, #4
	add	r1, r5, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r7, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L664:
	str	r6, [lr, #20]
	ldr	r3, [r5, #16]
	add	r2, r3, #1
	str	r2, [r5, #16]
.L658:
	str	r3, [r4, #20]
	mov	r0, r4
	bl	_ZN4View5EnterEv(PLT)
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L673:
	.align	2
.L672:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC60+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	_ZN12AudioManager9singletonE(GOT)
	.word	g_IwResManager(GOT)
	.word	.LC22-(.LPIC61+8)
	.word	.LC23-(.LPIC62+8)
	.size	_ZN4Menu5EnterEv, .-_ZN4Menu5EnterEv
	.section	.text._ZN4Menu6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN4Menu6UpdateEf
	.hidden	_ZN4Menu6UpdateEf
	.type	_ZN4Menu6UpdateEf, %function
_ZN4Menu6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #24]
	mov	r5, r1
	cmp	r3, #0
	beq	.L676
	cmp	r3, #1
	bne	.L675
	add	r0, r0, #48
	bl	_ZN4View6UpdateEf(PLT)
.L675:
	mov	r0, r4
	mov	r1, r5
	ldmfd	sp!, {r3, r4, r5, lr}
	b	_ZN4View6UpdateEf(PLT)
.L676:
	add	r0, r0, #28
	bl	_ZN4View6UpdateEf(PLT)
	mov	r0, r4
	mov	r1, r5
	ldmfd	sp!, {r3, r4, r5, lr}
	b	_ZN4View6UpdateEf(PLT)
	.size	_ZN4Menu6UpdateEf, .-_ZN4Menu6UpdateEf
	.section	.text._ZN4Menu4ExitEv,"ax",%progbits
	.align	2
	.global	_ZN4Menu4ExitEv
	.hidden	_ZN4Menu4ExitEv
	.type	_ZN4Menu4ExitEv, %function
_ZN4Menu4ExitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L679
	ldr	r2, .L679+4
.LPIC63:
	add	r3, pc, r3
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r3, [r3, r2]
	ldr	r0, [r3]
	bl	_ZN15CIwSoundManager7StopAllEv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN4View4ExitEv(PLT)
.L680:
	.align	2
.L679:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC63+8)
	.word	g_IwSoundManager(GOT)
	.size	_ZN4Menu4ExitEv, .-_ZN4Menu4ExitEv
	.section	.text._ZN4Menu6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN4Menu6RenderEv
	.hidden	_ZN4Menu6RenderEv
	.type	_ZN4Menu6RenderEv, %function
_ZN4Menu6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN4View6RenderEv(PLT)
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L683
	cmp	r3, #1
	ldmnefd	sp!, {r4, pc}
	add	r0, r4, #48
	ldmfd	sp!, {r4, lr}
	b	_ZN4View6RenderEv(PLT)
.L683:
	add	r0, r4, #28
	ldmfd	sp!, {r4, lr}
	b	_ZN4View6RenderEv(PLT)
	.size	_ZN4Menu6RenderEv, .-_ZN4Menu6RenderEv
	.hidden	_ZTS4Menu
	.global	_ZTS4Menu
	.hidden	_ZTI4Menu
	.global	_ZTI4Menu
	.hidden	_ZTV4Menu
	.global	_ZTV4Menu
	.section	.rodata
	.align	2
	.type	_ZTS4Menu, %object
	.size	_ZTS4Menu, 6
_ZTS4Menu:
	.ascii	"4Menu\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR1,. + 0
	.type	_ZTV4Menu, %object
	.size	_ZTV4Menu, 40
_ZTV4Menu:
	.word	0
	.word	_ZTI4Menu
	.word	_ZN4MenuD1Ev
	.word	_ZN4MenuD0Ev
	.word	_ZN4Menu5EnterEv
	.word	_ZN4Menu6UpdateEf
	.word	_ZN4Menu6RenderEv
	.word	_ZN4Menu12UpdateLayoutEv
	.word	_ZN4Menu4ExitEv
	.word	_ZN4View11HandleEventE9EventType
	.type	_ZTI4Menu, %object
	.size	_ZTI4Menu, 12
_ZTI4Menu:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS4Menu
	.word	_ZTI4View
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"settings.dat\000"
	.space	3
.LC1:
	.ascii	"w\000"
	.space	2
.LC2:
	.ascii	"usesfx=%i\012\000"
	.space	1
.LC3:
	.ascii	"usemsc=%i\012\000"
	.space	1
.LC4:
	.ascii	"r\000"
	.space	2
.LC5:
	.ascii	"usesfx=\000"
.LC6:
	.ascii	"usemsc=\000"
.LC7:
	.ascii	"menu_background\000"
.LC8:
	.ascii	"logo\000"
	.space	3
.LC9:
	.ascii	"menu_bar\000"
	.space	3
.LC10:
	.ascii	"button_play_normal\000"
	.space	1
.LC11:
	.ascii	"CIwTexture\000"
	.space	1
.LC12:
	.ascii	"button_play_pressed\000"
.LC13:
	.ascii	"settings\000"
	.space	3
.LC14:
	.ascii	"settings_pressed\000"
	.space	3
.LC15:
	.ascii	"back\000"
	.space	3
.LC16:
	.ascii	"back_pressed\000"
	.space	3
.LC17:
	.ascii	"checkbox_normal\000"
.LC18:
	.ascii	"checkbox_pressed\000"
	.space	3
.LC19:
	.ascii	"checkbox_mark\000"
	.space	2
.LC20:
	.ascii	"sfx_label\000"
	.space	2
.LC21:
	.ascii	"music_label\000"
.LC22:
	.ascii	"bgm_menu\000"
	.space	3
.LC23:
	.ascii	"CIwSoundSpec\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZL11dataToWrite, %object
	.size	_ZL11dataToWrite, 32
_ZL11dataToWrite:
	.space	32
	.type	_ZL10dataToRead, %object
	.size	_ZL10dataToRead, 32
_ZL10dataToRead:
	.space	32
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
