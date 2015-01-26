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
	.file	"GameSprite.cpp"
	.section	.text._ZN10GameSprite7DestroyEv,"ax",%progbits
	.align	2
	.global	_ZN10GameSprite7DestroyEv
	.hidden	_ZN10GameSprite7DestroyEv
	.type	_ZN10GameSprite7DestroyEv, %function
_ZN10GameSprite7DestroyEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, [r0, #52]
	sub	sp, sp, #12
	ldr	r2, [r4, #212]
	ldr	r3, [r4, #204]
	sub	r2, r2, #4
	cmp	r3, r2
	beq	.L2
	str	r0, [r3]
	ldr	r3, [r4, #204]
	add	r3, r3, #4
	str	r3, [r4, #204]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2:
	ldr	r6, [r4, #216]
	ldr	r2, [r4, #220]
	ldr	r3, [r4, #224]
	rsb	r1, r2, r6
	sub	r1, r3, r1, asr #2
	cmp	r1, #1
	bls	.L20
.L4:
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L21
.L13:
	str	r0, [r6, #4]
	ldr	r3, [r4, #204]
	str	r5, [r3]
	ldr	r3, [r4, #216]
	add	r2, r3, #4
	str	r2, [r4, #216]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r4, #208]
	str	r3, [r4, #204]
	str	r2, [r4, #212]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L20:
	ldr	r1, [r4, #200]
	rsb	r8, r1, r6
	mov	r8, r8, asr #2
	add	r8, r8, #1
	add	r7, r8, #1
	cmp	r3, r7, asl #1
	bls	.L5
	rsb	r7, r7, r3
	mov	r7, r7, lsr #1
	add	r7, r2, r7, asl #2
	cmp	r1, r7
	add	r2, r6, #4
	bls	.L6
	cmp	r1, r2
	beq	.L7
	rsb	r2, r1, r2
	mov	r0, r7
	bl	memmove(PLT)
.L7:
	str	r7, [r4, #200]
	sub	r8, r8, #-1073741823
	ldr	r3, [r7]
	add	r6, r7, r8, asl #2
	add	r2, r3, #128
	str	r2, [r4, #196]
	str	r3, [r4, #192]
	str	r6, [r4, #216]
	ldr	r3, [r7, r8, asl #2]
	add	r2, r3, #128
	str	r3, [r4, #208]
	str	r2, [r4, #212]
	b	.L4
.L5:
	cmp	r3, #0
	beq	.L14
	mov	r3, r3, asl #1
	adds	r9, r3, #2
	moveq	r10, r9
	bne	.L8
.L9:
	rsb	r7, r7, r9
	add	r2, r6, #4
	mov	r7, r7, lsr #1
	cmp	r1, r2
	add	r7, r10, r7, asl #2
	beq	.L11
	rsb	r2, r1, r2
	mov	r0, r7
	bl	memmove(PLT)
.L11:
	ldr	r0, [r4, #220]
	cmp	r0, #0
	beq	.L12
	bl	free(PLT)
.L12:
	str	r10, [r4, #220]
	str	r9, [r4, #224]
	b	.L7
.L21:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L13
.L14:
	mov	r9, #3
.L8:
	mov	fp, r9, asl #2
	mov	r0, fp
	str	r1, [sp, #4]
	bl	malloc(PLT)
	ldr	r1, [sp, #4]
	cmp	r0, #0
	beq	.L22
.L10:
	mov	r10, r0
	b	.L9
.L6:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L7
	add	r0, r7, r8, asl #2
	rsb	r0, r2, r0
	bl	memmove(PLT)
	b	.L7
.L22:
	mov	r0, fp
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #200]
	ldr	r6, [r4, #216]
	b	.L10
	.size	_ZN10GameSprite7DestroyEv, .-_ZN10GameSprite7DestroyEv
	.section	.text._ZN10GameSpriteD2Ev,"ax",%progbits
	.align	2
	.global	_ZN10GameSpriteD2Ev
	.hidden	_ZN10GameSpriteD2Ev
	.type	_ZN10GameSpriteD2Ev, %function
_ZN10GameSpriteD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L50
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	ldr	r0, [r0, #220]
.LPIC8:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r0, #0
	str	r3, [r5]
	beq	.L25
	ldr	r6, [r5, #216]
	ldr	r4, [r5, #200]
	add	r6, r6, #4
	cmp	r4, r6
	bcs	.L26
.L29:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L27
	bl	free(PLT)
.L27:
	cmp	r6, r4
	bhi	.L29
	ldr	r0, [r5, #220]
	cmp	r0, #0
	beq	.L25
.L26:
	bl	free(PLT)
.L25:
	ldr	r0, [r5, #180]
	cmp	r0, #0
	beq	.L32
	ldr	r6, [r5, #176]
	ldr	r4, [r5, #160]
	add	r6, r6, #4
	cmp	r4, r6
	bcs	.L33
.L36:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L34
	bl	free(PLT)
.L34:
	cmp	r6, r4
	bhi	.L36
	ldr	r0, [r5, #180]
	cmp	r0, #0
	beq	.L32
.L33:
	bl	free(PLT)
.L32:
	mov	r0, r5
	bl	_ZN6SpriteD2Ev(PLT)
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, pc}
.L51:
	.align	2
.L50:
	.word	.LANCHOR0-(.LPIC8+8)
	.size	_ZN10GameSpriteD2Ev, .-_ZN10GameSpriteD2Ev
	.global	_ZN10GameSpriteD1Ev
	.hidden	_ZN10GameSpriteD1Ev
	.set	_ZN10GameSpriteD1Ev,_ZN10GameSpriteD2Ev
	.section	.text._ZN10GameSpriteD0Ev,"ax",%progbits
	.align	2
	.global	_ZN10GameSpriteD0Ev
	.hidden	_ZN10GameSpriteD0Ev
	.type	_ZN10GameSpriteD0Ev, %function
_ZN10GameSpriteD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L79
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	ldr	r0, [r0, #220]
.LPIC9:
	add	r3, pc, r3
	add	r3, r3, #8
	cmp	r0, #0
	str	r3, [r5]
	beq	.L54
	ldr	r6, [r5, #216]
	ldr	r4, [r5, #200]
	add	r6, r6, #4
	cmp	r4, r6
	bcs	.L55
.L58:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L56
	bl	free(PLT)
.L56:
	cmp	r6, r4
	bhi	.L58
	ldr	r0, [r5, #220]
	cmp	r0, #0
	beq	.L54
.L55:
	bl	free(PLT)
.L54:
	ldr	r0, [r5, #180]
	cmp	r0, #0
	beq	.L61
	ldr	r6, [r5, #176]
	ldr	r4, [r5, #160]
	add	r6, r6, #4
	cmp	r4, r6
	bcs	.L62
.L65:
	ldr	r3, [r4], #4
	subs	r0, r3, #0
	beq	.L63
	bl	free(PLT)
.L63:
	cmp	r6, r4
	bhi	.L65
	ldr	r0, [r5, #180]
	cmp	r0, #0
	beq	.L61
.L62:
	bl	free(PLT)
.L61:
	mov	r0, r5
	bl	_ZN6SpriteD2Ev(PLT)
	mov	r0, r5
	bl	_ZdlPv(PLT)
	mov	r0, r5
	ldmfd	sp!, {r4, r5, r6, pc}
.L80:
	.align	2
.L79:
	.word	.LANCHOR0-(.LPIC9+8)
	.size	_ZN10GameSpriteD0Ev, .-_ZN10GameSpriteD0Ev
	.section	.text._ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj,"axG",%progbits,_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj,comdat
	.align	2
	.weak	_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj
	.hidden	_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj
	.type	_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj, %function
_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r1, lsr #5
	add	r4, r5, #3
	cmp	r4, #8
	movcc	r4, #8
	str	r4, [r0, #36]
	mov	r9, r4, asl #2
	mov	r6, r0
	mov	r0, r9
	mov	r8, r1
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L88
.L82:
	add	r5, r5, #1
	rsb	r7, r5, r4
	str	r0, [r6, #32]
	mov	r7, r7, lsr #1
	add	r7, r0, r7, asl #2
	add	r5, r7, r5, asl #2
	cmp	r7, r5
	movcc	r4, r7
	bcc	.L86
.L85:
	str	r7, [r6, #12]
	ldr	r2, [r7]
	sub	r3, r5, #4
	add	r1, r2, #128
	str	r2, [r6, #4]
	and	r8, r8, #31
	str	r1, [r6, #8]
	str	r3, [r6, #28]
	ldr	r3, [r5, #-4]
	str	r2, [r6]
	add	r8, r3, r8, asl #2
	add	r2, r3, #128
	str	r8, [r6, #16]
	str	r3, [r6, #20]
	str	r2, [r6, #24]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L90:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
.L84:
	str	r0, [r4], #4
	cmp	r5, r4
	bls	.L85
.L86:
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	bne	.L84
	b	.L90
.L88:
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r4, [r6, #36]
	b	.L82
	.size	_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj, .-_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj
	.section	.text._ZN10GameSpriteC2Ev,"ax",%progbits
	.align	2
	.global	_ZN10GameSpriteC2Ev
	.hidden	_ZN10GameSpriteC2Ev
	.type	_ZN10GameSpriteC2Ev, %function
_ZN10GameSpriteC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	bl	_ZN6SpriteC2Ev(PLT)
	ldr	r3, .L92
	mov	r5, #0
.LPIC10:
	add	r3, pc, r3
	add	r3, r3, #8
	str	r3, [r4]
	add	r0, r4, #148
	mov	r1, r5
	str	r5, [r4, #148]
	str	r5, [r4, #152]
	str	r5, [r4, #156]
	str	r5, [r4, #160]
	str	r5, [r4, #164]
	str	r5, [r4, #168]
	str	r5, [r4, #172]
	str	r5, [r4, #176]
	str	r5, [r4, #180]
	str	r5, [r4, #184]
	bl	_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj(PLT)
	add	r0, r4, #188
	mov	r1, r5
	str	r5, [r4, #188]
	str	r5, [r4, #192]
	str	r5, [r4, #196]
	str	r5, [r4, #200]
	str	r5, [r4, #204]
	str	r5, [r4, #208]
	str	r5, [r4, #212]
	str	r5, [r4, #216]
	str	r5, [r4, #220]
	str	r5, [r4, #224]
	bl	_ZN4_STL11_Deque_baseIP10GameSpriteNS_9allocatorIS2_EEE17_M_initialize_mapEj(PLT)
	mov	r3, #0
	mvn	r1, #0
	mov	r2, #1
	str	r5, [r4, #240]
	str	r1, [r4, #228]
	strb	r2, [r4, #232]
	str	r3, [r4, #236]	@ float
	str	r3, [r4, #4]	@ float
	str	r3, [r4, #8]	@ float
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L93:
	.align	2
.L92:
	.word	.LANCHOR0-(.LPIC10+8)
	.size	_ZN10GameSpriteC2Ev, .-_ZN10GameSpriteC2Ev
	.global	_ZN10GameSpriteC1Ev
	.hidden	_ZN10GameSpriteC1Ev
	.set	_ZN10GameSpriteC1Ev,_ZN10GameSpriteC2Ev
	.section	.text._ZN10GameSprite6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN10GameSprite6UpdateEff
	.hidden	_ZN10GameSprite6UpdateEff
	.type	_ZN10GameSprite6UpdateEff, %function
_ZN10GameSprite6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r6, .L117
	mov	r7, r1
	ldr	r3, [r0, #148]
.LPIC11:
	add	r6, pc, r6
	b	.L95
.L113:
	str	r1, [r4, #148]
.L95:
	ldr	r2, [r4, #164]
	mov	r0, r4
	cmp	r2, r3
	beq	.L100
.L99:
	ldr	r1, [r3]
	bl	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_(PLT)
	ldr	r3, .L117+4
	ldr	r2, [r4, #148]
	ldr	r3, [r6, r3]
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	_ZN16CollisionManager8RegisterEP10GameSprite(PLT)
	ldr	r0, [r4, #156]
	ldr	r2, [r4, #148]
	sub	r0, r0, #4
	add	r1, r2, #4
	cmp	r2, r0
	mov	r3, r1
	bne	.L113
	ldr	r3, [r4, #152]
	subs	r0, r3, #0
	beq	.L98
	bl	free(PLT)
.L98:
	ldr	r3, [r4, #160]
	mov	r0, r4
	add	r2, r3, #4
	str	r2, [r4, #160]
	ldr	r2, [r3, #4]
	mov	r3, r2
	add	r1, r2, #128
	str	r2, [r4, #152]
	str	r2, [r4, #148]
	ldr	r2, [r4, #164]
	str	r1, [r4, #156]
	cmp	r2, r3
	bne	.L99
.L100:
	ldr	r3, [r4, #188]
	b	.L105
.L116:
	cmp	r5, #0
	str	r0, [r4, #188]
	bne	.L114
.L105:
	ldr	r2, [r4, #204]
	mov	r0, r4
	cmp	r2, r3
	beq	.L115
	ldr	r5, [r3]
	mov	r1, r5
	bl	_ZN18Iw2DSceneGraphCore5CNode11RemoveChildEPS0_(PLT)
	ldr	r3, .L117+4
	mov	r1, r5
	ldr	r3, [r6, r3]
	ldr	r0, [r3]
	bl	_ZN16CollisionManager10UnregisterEP10GameSprite(PLT)
	ldr	r1, [r4, #196]
	ldr	r2, [r4, #188]
	sub	r1, r1, #4
	add	r0, r2, #4
	cmp	r2, r1
	mov	r3, r0
	bne	.L116
	ldr	r3, [r4, #192]
	subs	r0, r3, #0
	beq	.L103
	bl	free(PLT)
.L103:
	ldr	r3, [r4, #200]
	cmp	r5, #0
	add	r2, r3, #4
	str	r2, [r4, #200]
	ldr	r2, [r3, #4]
	add	r1, r2, #128
	mov	r3, r2
	str	r2, [r4, #192]
	str	r2, [r4, #188]
	str	r1, [r4, #196]
	beq	.L105
.L114:
	ldr	r3, [r5]
	mov	r0, r5
	ldr	r3, [r3, #4]
	blx	r3
	b	.L100
.L115:
	mov	r1, r7
	mov	r2, #1065353216
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	b	_ZN6Sprite6UpdateEff(PLT)
.L118:
	.align	2
.L117:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.size	_ZN10GameSprite6UpdateEff, .-_ZN10GameSprite6UpdateEff
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.global	__aeabi_fsub
	.global	__aeabi_ui2f
	.global	__aeabi_fcmplt
	.global	__aeabi_fcmpgt
	.global	__aeabi_fdiv
	.section	.text._ZN10GameSprite6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN10GameSprite6RenderEv
	.hidden	_ZN10GameSprite6RenderEv
	.type	_ZN10GameSprite6RenderEv, %function
_ZN10GameSprite6RenderEv:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	ldr	r10, .L137
	ldr	r3, .L137+4
.LPIC12:
	add	r10, pc, r10
	mov	r8, r0
	ldr	r3, [r10, r3]
	add	r9, r0, #124
	str	r3, [sp, #16]
	ldmia	r3, {r0, r1, r2, r3}
	mov	ip, #0
	stmia	r9, {r0, r1, r2, r3}
	ldr	r0, [r8, #36]	@ float
	str	ip, [r8, #144]	@ float
	str	ip, [r8, #140]	@ float
	add	r0, r0, #-2147483648
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	bl	cos(PLT)
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	sin(PLT)
	bl	__aeabi_d2f(PLT)
	mov	r1, r5
	ldr	r6, [r8, #28]	@ float
	mov	r7, r0
	mov	r0, r4
	bl	__aeabi_d2f(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	add	r1, r7, #-2147483648
	mov	r5, r0
	str	r0, [r8, #124]	@ float
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r7
	mov	fp, r0
	str	fp, [r8, #128]	@ float
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r4, [r8, #52]
	ldr	r6, [r8, #4]	@ float
	ldr	r2, [r8, #8]	@ float
	cmp	r4, #0
	str	r5, [r8, #136]	@ float
	str	r6, [r8, #140]	@ float
	str	r2, [r8, #144]	@ float
	mov	r3, r0
	str	r0, [r8, #132]	@ float
	beq	.L120
	ldr	lr, [r4, #132]	@ float
	ldr	r1, [r4, #124]	@ float
	mov	r0, r6
	str	lr, [sp, #24]	@ float
	str	r3, [sp, #8]
	str	r1, [sp, #20]	@ float
	str	r2, [sp, #12]
	bl	__aeabi_fmul(PLT)
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #24]	@ float
	mov	r7, r0
	mov	r0, r2
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r4, #140]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r7, [r4, #128]	@ float
	mov	r1, r7
	str	r0, [sp, #28]	@ float
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r6, [r4, #136]	@ float
	ldr	r2, [sp, #12]
	mov	r1, r6
	mov	ip, r0
	mov	r0, r2
	str	ip, [sp, #12]
	bl	__aeabi_fmul(PLT)
	ldr	ip, [sp, #12]
	mov	r1, r0
	mov	r0, ip
	bl	__aeabi_fadd(PLT)
	ldr	r1, [r4, #144]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, [sp, #20]	@ float
	mov	r4, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, fp
	mov	r2, r0
	ldr	r0, [sp, #24]	@ float
	str	r2, [sp, #12]
	bl	__aeabi_fmul(PLT)
	ldr	r2, [sp, #12]
	mov	r1, r0
	mov	r0, r2
	bl	__aeabi_fadd(PLT)
	mov	r1, r7
	str	r0, [r8, #124]	@ float
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, fp
	mov	r2, r0
	mov	r0, r6
	str	r2, [sp, #12]
	bl	__aeabi_fmul(PLT)
	ldr	r2, [sp, #12]
	mov	r1, r0
	mov	r0, r2
	bl	__aeabi_fadd(PLT)
	ldr	r3, [sp, #8]
	mov	r1, r3
	str	r0, [r8, #128]	@ float
	ldr	r0, [sp, #20]	@ float
	str	r3, [sp, #8]
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #24]	@ float
	mov	fp, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fadd(PLT)
	ldr	r3, [sp, #8]
	mov	r1, r3
	str	r0, [r8, #132]	@ float
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r6
	mov	r7, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	ldr	r3, [sp, #28]	@ float
	str	r4, [r8, #144]	@ float
	str	r3, [r8, #140]	@ float
	str	r0, [r8, #136]	@ float
.L120:
	mov	r0, r9
	bl	_Z22Iw2DSetTransformMatrixRK9CIwFMat2D(PLT)
	ldr	r0, [r8, #120]
	cmp	r0, #0
	beq	.L122
	ldr	r3, [r0]
	ldr	r6, .L137+8
	ldr	r5, [r8, #140]	@ float
	ldr	r3, [r3]
.LPIC13:
	add	r6, pc, r6
	ldr	r7, [r8, #144]	@ float
	blx	r3
	mov	r1, #1056964608
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r6]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, [r8, #120]
	mov	r4, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, .L137+12
	ldr	r6, [r6]	@ float
	mov	r1, r4
	ldr	r3, [r10, r3]
	str	r6, [sp, #20]	@ float
	ldr	r6, [r3]
	mov	fp, r0
	mov	r0, r5
	bl	__aeabi_fsub(PLT)
	mov	r9, r0
	ldr	r0, [r6, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	beq	.L122
	mov	r1, r5
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	mov	r1, #0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	beq	.L122
	mov	r1, #1056964608
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #20]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r9, r0
	mov	r1, r9
	mov	r0, r7
	bl	__aeabi_fsub(PLT)
	mov	r5, r0
	ldr	r0, [r6, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	beq	.L122
	mov	r1, r7
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
	mov	r1, #0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	beq	.L122
	ldr	r0, [r8, #228]
	bl	_Z13Iw2DSetColourj(PLT)
	ldr	r3, .L137+16
	ldr	r3, [r10, r3]
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L136
.L129:
	ldr	r3, .L137+20
	add	r0, r4, #-2147483648
.LPIC15:
	add	r3, pc, r3
	ldr	r6, [r8, #120]
	ldr	r5, [r3]	@ float
	mov	r1, r5
	bl	__aeabi_fdiv(PLT)
	add	r3, r9, #-2147483648
	mov	r1, r5
	str	r0, [sp, #32]	@ float
	mov	r0, r3
	bl	__aeabi_fdiv(PLT)
	mov	r1, r4
	str	r0, [sp, #36]	@ float
	mov	r0, r4
	bl	__aeabi_fadd(PLT)
	mov	r1, r5
	bl	__aeabi_fdiv(PLT)
	mov	r1, r9
	str	r0, [sp, #40]	@ float
	mov	r0, r9
	bl	__aeabi_fadd(PLT)
	mov	r1, r5
	bl	__aeabi_fdiv(PLT)
	add	r2, sp, #32
	ldr	r3, [sp, #40]
	ldmia	r2, {r1, r2}
	str	r0, [sp, #44]	@ float
	ldr	ip, [sp, #44]
	mov	r0, r6
	str	ip, [sp]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwFVec2S1_(PLT)
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj(PLT)
.L122:
	mov	r0, r8
	bl	_ZN18Iw2DSceneGraphCore5CNode6RenderEv(PLT)
	ldr	r0, [sp, #16]
	add	sp, sp, #52
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	_Z22Iw2DSetTransformMatrixRK9CIwFMat2D(PLT)
.L136:
	ldr	r0, .L137+24
	bl	_Z13Iw2DSetColourj(PLT)
	b	.L129
.L138:
	.align	2
.L137:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+8)
	.word	_ZN9CIwFMat2D10g_IdentityE(GOT)
	.word	.LANCHOR1-(.LPIC13+8)
	.word	g_IwGxState(GOT)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	.LANCHOR1-(.LPIC15+8)
	.word	-11184811
	.size	_ZN10GameSprite6RenderEv, .-_ZN10GameSprite6RenderEv
	.hidden	_ZTS10GameSprite
	.global	_ZTS10GameSprite
	.hidden	_ZTI10GameSprite
	.global	_ZTI10GameSprite
	.hidden	_ZTV10GameSprite
	.global	_ZTV10GameSprite
	.hidden	_ZN6Sprite18g_currentTransformE
	.global	_ZN6Sprite18g_currentTransformE
	.hidden	_ZN10GameSprite11g_zoomLevelE
	.global	_ZN10GameSprite11g_zoomLevelE
	.section	.rodata
	.align	2
	.type	_ZTS10GameSprite, %object
	.size	_ZTS10GameSprite, 13
_ZTS10GameSprite:
	.ascii	"10GameSprite\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV10GameSprite, %object
	.size	_ZTV10GameSprite, 28
_ZTV10GameSprite:
	.word	0
	.word	_ZTI10GameSprite
	.word	_ZN10GameSpriteD1Ev
	.word	_ZN10GameSpriteD0Ev
	.word	_ZN10GameSprite6UpdateEff
	.word	_ZN10GameSprite6RenderEv
	.word	_ZN10GameSprite7DestroyEv
	.type	_ZTI10GameSprite, %object
	.size	_ZTI10GameSprite, 12
_ZTI10GameSprite:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS10GameSprite
	.word	_ZTI6Sprite
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZN10GameSprite11g_zoomLevelE, %object
	.size	_ZN10GameSprite11g_zoomLevelE, 4
_ZN10GameSprite11g_zoomLevelE:
	.word	1065353216
	.bss
	.align	2
	.type	_ZN6Sprite18g_currentTransformE, %object
	.size	_ZN6Sprite18g_currentTransformE, 24
_ZN6Sprite18g_currentTransformE:
	.space	24
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
