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
	.file	"Player.cpp"
	.section	.text._ZN6PlayerD2Ev,"ax",%progbits
	.align	2
	.global	_ZN6PlayerD2Ev
	.hidden	_ZN6PlayerD2Ev
	.type	_ZN6PlayerD2Ev, %function
_ZN6PlayerD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2
	stmfd	sp!, {r4, lr}
.LPIC0:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN10GameSpriteD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN6PlayerD2Ev, .-_ZN6PlayerD2Ev
	.global	_ZN6PlayerD1Ev
	.hidden	_ZN6PlayerD1Ev
	.set	_ZN6PlayerD1Ev,_ZN6PlayerD2Ev
	.section	.text._ZN6PlayerD0Ev,"ax",%progbits
	.align	2
	.global	_ZN6PlayerD0Ev
	.hidden	_ZN6PlayerD0Ev
	.type	_ZN6PlayerD0Ev, %function
_ZN6PlayerD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L5
	stmfd	sp!, {r4, lr}
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN10GameSpriteD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN6PlayerD0Ev, .-_ZN6PlayerD0Ev
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.section	.text._ZN6Player5ShootEv,"ax",%progbits
	.align	2
	.global	_ZN6Player5ShootEv
	.hidden	_ZN6Player5ShootEv
	.type	_ZN6Player5ShootEv, %function
_ZN6Player5ShootEv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #272
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #36
	ldmia	r3, {r0, r1}
	add	r5, sp, #24
	stmia	r5, {r0, r1}
	ldr	r0, [r4, #276]	@ float
	ldr	r1, .L29
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #8]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, .L29
	mov	r6, r0
	ldr	r0, [r4, #272]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r4, #4]	@ float
	bl	__aeabi_fadd(PLT)
	str	r6, [sp, #20]	@ float
	str	r0, [sp, #16]	@ float
	mov	r0, #260
	bl	_Znwj(PLT)
	ldr	r3, [sp, #20]
	ldmia	r5, {r1, r2}
	str	r3, [sp]
	ldr	r3, [sp, #16]
	mov	r6, r0
	bl	_ZN6BulletC1E8CIwFVec2S0_(PLT)
	ldr	r4, [r4, #52]
	ldr	r2, [r4, #172]
	ldr	r3, [r4, #164]
	sub	r2, r2, #4
	cmp	r3, r2
	beq	.L8
	str	r6, [r3]
	ldr	r3, [r4, #164]
	add	r3, r3, #4
	str	r3, [r4, #164]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L8:
	ldr	r5, [r4, #176]
	ldr	r2, [r4, #180]
	ldr	r3, [r4, #184]
	rsb	r1, r2, r5
	sub	r1, r3, r1, asr #2
	cmp	r1, #1
	bls	.L26
.L10:
	mov	r0, #128
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L27
.L19:
	str	r0, [r5, #4]
	ldr	r3, [r4, #164]
	str	r6, [r3]
	ldr	r3, [r4, #176]
	add	r2, r3, #4
	str	r2, [r4, #176]
	ldr	r3, [r3, #4]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r3, [r4, #164]
	str	r2, [r4, #172]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L26:
	ldr	r1, [r4, #160]
	rsb	r8, r1, r5
	mov	r8, r8, asr #2
	add	r8, r8, #1
	add	r7, r8, #1
	cmp	r3, r7, asl #1
	bls	.L11
	rsb	r7, r7, r3
	mov	r7, r7, lsr #1
	add	r7, r2, r7, asl #2
	cmp	r1, r7
	add	r2, r5, #4
	bls	.L12
	cmp	r1, r2
	beq	.L13
	rsb	r2, r1, r2
	mov	r0, r7
	bl	memmove(PLT)
.L13:
	str	r7, [r4, #160]
	sub	r8, r8, #-1073741823
	ldr	r3, [r7]
	add	r5, r7, r8, asl #2
	add	r2, r3, #128
	str	r2, [r4, #156]
	str	r3, [r4, #152]
	str	r5, [r4, #176]
	ldr	r3, [r7, r8, asl #2]
	add	r2, r3, #128
	str	r3, [r4, #168]
	str	r2, [r4, #172]
	b	.L10
.L11:
	cmp	r3, #0
	beq	.L20
	mov	r3, r3, asl #1
	adds	r9, r3, #2
	moveq	r10, r9
	bne	.L14
.L15:
	rsb	r7, r7, r9
	add	r2, r5, #4
	mov	r7, r7, lsr #1
	cmp	r1, r2
	add	r7, r10, r7, asl #2
	beq	.L17
	rsb	r2, r1, r2
	mov	r0, r7
	bl	memmove(PLT)
.L17:
	ldr	r0, [r4, #180]
	cmp	r0, #0
	beq	.L18
	bl	free(PLT)
.L18:
	str	r10, [r4, #180]
	str	r9, [r4, #184]
	b	.L13
.L27:
	mov	r0, #128
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L19
.L20:
	mov	r9, #3
.L14:
	mov	fp, r9, asl #2
	mov	r0, fp
	str	r1, [sp, #12]
	bl	malloc(PLT)
	ldr	r1, [sp, #12]
	cmp	r0, #0
	beq	.L28
.L16:
	mov	r10, r0
	b	.L15
.L12:
	rsb	r2, r1, r2
	cmp	r2, #0
	ble	.L13
	add	r0, r7, r8, asl #2
	rsb	r0, r2, r0
	bl	memmove(PLT)
	b	.L13
.L28:
	mov	r0, fp
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r1, [r4, #160]
	ldr	r5, [r4, #176]
	b	.L16
.L30:
	.align	2
.L29:
	.word	1101004800
	.size	_ZN6Player5ShootEv, .-_ZN6Player5ShootEv
	.section	.text._ZN6Player4MoveE8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN6Player4MoveE8CIwFVec2
	.hidden	_ZN6Player4MoveE8CIwFVec2
	.type	_ZN6Player4MoveE8CIwFVec2, %function
_ZN6Player4MoveE8CIwFVec2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #20
	mov	r4, r0
	stmia	sp, {r1, r2}
	add	r0, sp, #8
	mov	r1, sp
	bl	_ZNK8CIwFVec213GetNormalisedEv(PLT)
	ldr	r0, [sp, #12]	@ float
	ldr	r1, .L32
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L32
	mov	r5, r0
	ldr	r0, [sp, #8]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r4, #252]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r5
	str	r0, [r4, #252]	@ float
	ldr	r0, [r4, #256]	@ float
	bl	__aeabi_fadd(PLT)
	str	r0, [r4, #256]	@ float
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L33:
	.align	2
.L32:
	.word	1067030938
	.size	_ZN6Player4MoveE8CIwFVec2, .-_ZN6Player4MoveE8CIwFVec2
	.global	__aeabi_fcmplt
	.global	__aeabi_fcmpgt
	.section	.text._ZN6Player18ForceInArenaBoundsEv,"ax",%progbits
	.align	2
	.global	_ZN6Player18ForceInArenaBoundsEv
	.hidden	_ZN6Player18ForceInArenaBoundsEv
	.type	_ZN6Player18ForceInArenaBoundsEv, %function
_ZN6Player18ForceInArenaBoundsEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L51
	ldr	r5, [r0, #4]	@ float
	mov	r1, r6
	mov	r0, r5
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	bne	.L49
	ldr	r6, .L51+4
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	bne	.L49
.L37:
	ldr	r5, [r4, #8]	@ float
	ldr	r6, .L51
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	bne	.L50
	ldr	r6, .L51+4
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
.L50:
	str	r6, [r4, #8]	@ float
	ldmfd	sp!, {r4, r5, r6, pc}
.L49:
	str	r6, [r4, #4]	@ float
	b	.L37
.L52:
	.align	2
.L51:
	.word	-1018691584
	.word	1128792064
	.size	_ZN6Player18ForceInArenaBoundsEv, .-_ZN6Player18ForceInArenaBoundsEv
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
	beq	.L54
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L63
.L55:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L64
.L59:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L57:
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
.L63:
	cmp	r2, #0
	beq	.L65
.L54:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L66
.L61:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L67
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L57
.L67:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L57
.L66:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L61
.L64:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L59
.L65:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L54
	b	.L55
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
	beq	.L144
	cmp	ip, r8
	beq	.L145
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L146
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L147
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L105
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L106
.L105:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L138
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L68
.L146:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L148
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L149
.L140:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L68:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L145:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L150
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L99
	b	.L160
.L151:
	mov	r4, r0
.L99:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L151
	cmp	r1, #0
	beq	.L129
	cmp	r2, r4
	beq	.L152
.L95:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L100:
	cmp	r8, r3
	bhi	.L153
.L113:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L148:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L106:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L121
	ldr	r0, [r6]
	b	.L110
.L154:
	mov	r4, r3
.L110:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L154
	cmp	r1, #0
	moveq	r3, r4
	bne	.L121
.L111:
	cmp	r0, r2
	bls	.L113
.L141:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L113
.L150:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L144:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L155
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L156
	strls	ip, [r0]
	bls	.L68
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L157
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L83
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L84
.L138:
	mov	r2, r0
	b	.L140
.L129:
	mov	ip, r4
	b	.L100
.L149:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L68
.L155:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L122
	ldr	r0, [r6]
	b	.L75
.L158:
	mov	r4, r3
.L75:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L158
	cmp	r1, #0
	moveq	r3, r4
	bne	.L71
.L76:
	cmp	r2, r0
	bcs	.L113
	b	.L141
.L121:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L143
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L111
.L153:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L113
.L156:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L68
.L122:
	mov	r4, r8
.L71:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L142
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L76
.L160:
	mov	r4, ip
	b	.L95
.L83:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L89
	b	.L161
.L159:
	mov	r4, r3
.L89:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L159
	cmp	r0, #0
	moveq	r3, r4
	bne	.L85
.L90:
	cmp	r2, r1
	bcs	.L113
	b	.L141
.L152:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L113
.L157:
	ldr	r3, [r4]
.L84:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L68
.L143:
	mov	r2, r4
.L142:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L113
.L161:
	mov	r4, ip
.L85:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L143
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L90
.L147:
	str	r3, [r5]
	b	.L68
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN6PlayerC2Ev,"ax",%progbits
	.align	2
	.global	_ZN6PlayerC2Ev
	.hidden	_ZN6PlayerC2Ev
	.type	_ZN6PlayerC2Ev, %function
_ZN6PlayerC2Ev:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #16
	mov	r6, r0
	ldr	r5, .L210
	bl	_ZN10GameSpriteC2Ev(PLT)
	ldr	lr, .L210+4
	ldr	r1, .L210+8
.LPIC3:
	add	r5, pc, r5
	ldr	ip, .L210+12
	ldr	r3, .L210+16
.LPIC2:
	add	lr, pc, lr
	mov	r2, #0
	add	lr, lr, #8
	mov	r0, #1
	str	lr, [r6]
	str	ip, [r6, #248]	@ float
	strb	r0, [r6, #288]
	str	r2, [r6, #244]	@ float
	str	r2, [r6, #284]	@ float
	str	r3, [r6, #280]	@ float
	str	r3, [r6, #116]	@ float
	ldr	r4, [r5, r1]
	ldr	r2, .L210+20
	ldr	r1, .L210+24
	ldr	r0, [r4]
.LPIC4:
	add	r1, pc, r1
.LPIC5:
	add	r2, pc, r2
	mov	r3, #0
	ldr	r0, [r0, #12]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r3, .L210+28
	ldr	r1, [r4]
	ldr	r8, [r5, r3]
	ldr	r2, [r1, #12]
	ldr	r3, [r8]
	str	r2, [r3, #100]
	ldr	r9, [r1]
	ldr	r2, [r9, #4]
	cmp	r2, #0
	mov	r10, r0
	ldr	ip, [r0, #4]
	beq	.L168
	mov	r7, r9
	mov	r3, r2
.L167:
	ldr	lr, [r3, #16]
	cmp	ip, lr
	movls	r7, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L167
	cmp	r9, r7
	beq	.L168
	ldr	r3, [r7, #16]
	cmp	ip, r3
	bcs	.L208
.L168:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r4]
	ldr	ip, [r10, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L175
.L174:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L174
	cmp	r0, lr
	beq	.L175
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L201
.L175:
	mov	r9, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r9, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L201:
	str	r7, [lr, #20]
	mov	r1, r7
	b	.L176
.L208:
	mov	lr, r9
.L180:
	ldr	r3, [r2, #16]
	cmp	ip, r3
	movls	lr, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L180
	cmp	r9, lr
	beq	.L181
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L202
.L181:
	mov	r7, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r7, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L202:
	ldr	r1, [lr, #20]
.L176:
	mov	r0, r6
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	mov	r0, #244
	bl	_Znwj(PLT)
	mov	r7, r0
	bl	_ZN10GameSpriteC1Ev(PLT)
	mov	r0, r6
	mov	r1, r7
	bl	_ZN18Iw2DSceneGraphCore5CNode8AddChildEPS0_(PLT)
	ldr	r3, [r4]
	ldr	r1, .L210+32
	ldr	r2, .L210+36
.LPIC6:
	add	r1, pc, r1
.LPIC7:
	add	r2, pc, r2
	ldr	r0, [r3, #12]
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r4]
	ldr	r3, [r8]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	mov	r9, r0
	ldr	r0, [r1]
	ldr	ip, [r9, #4]
	ldr	r2, [r0, #4]
	cmp	r2, #0
	beq	.L187
	mov	r8, r0
	mov	r3, r2
.L186:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r8, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L186
	cmp	r8, r0
	beq	.L187
	ldr	r3, [r8, #16]
	cmp	r3, ip
	bls	.L209
.L187:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r4]
	ldr	ip, [r9, #4]
	mov	r8, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L194
.L193:
	ldr	r2, [r3, #16]
	cmp	ip, r2
	movls	lr, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L193
	cmp	lr, r0
	beq	.L194
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L203
.L194:
	mov	r4, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r4, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L203:
	str	r8, [lr, #20]
	mov	r1, r8
	b	.L195
.L209:
	mov	lr, r0
.L199:
	ldr	r3, [r2, #16]
	cmp	ip, r3
	movls	lr, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L199
	cmp	lr, r0
	beq	.L200
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L204
.L200:
	mov	r4, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r4, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L204:
	ldr	r1, [lr, #20]
.L195:
	mov	r0, r7
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, .L210+40
	ldr	r2, .L210+44
	mov	r1, #3
	ldr	r3, [r5, r3]
	str	r2, [r6, #236]	@ float
	mov	r0, r6
	ldr	r2, [r3]	@ float
	ldr	r3, [r3, #4]	@ float
	str	r2, [r6, #260]	@ float
	str	r2, [r6, #252]	@ float
	str	r3, [r6, #264]	@ float
	str	r3, [r6, #256]	@ float
	str	r1, [r6, #240]
	bl	_ZN18Iw2DSceneGraphCore5CNode17CalculateMatricesEv(PLT)
	mov	r0, r6
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L211:
	.align	2
.L210:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	.LANCHOR0-(.LPIC2+8)
	.word	_ZN12ImageManager9singletonE(GOT)
	.word	1051260355
	.word	1120403456
	.word	.LC1-(.LPIC5+8)
	.word	.LC0-(.LPIC4+8)
	.word	g_IwResManager(GOT)
	.word	.LC2-(.LPIC6+8)
	.word	.LC1-(.LPIC7+8)
	.word	_ZN8CIwFVec26g_ZeroE(GOT)
	.word	1103101952
	.size	_ZN6PlayerC2Ev, .-_ZN6PlayerC2Ev
	.global	_ZN6PlayerC1Ev
	.hidden	_ZN6PlayerC1Ev
	.set	_ZN6PlayerC1Ev,_ZN6PlayerC2Ev
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
	beq	.L213
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L222
.L214:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L223
.L218:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L216:
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
.L222:
	cmp	r2, #0
	beq	.L224
.L213:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L225
.L220:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L226
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L216
.L226:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L216
.L225:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L220
.L223:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L218
.L224:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L213
	b	.L214
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
	beq	.L303
	cmp	ip, r8
	beq	.L304
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L305
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L306
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L264
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L265
.L264:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L297
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L227
.L305:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L307
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L308
.L299:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L227:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L304:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L309
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L258
	b	.L319
.L310:
	mov	r4, r0
.L258:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L310
	cmp	r1, #0
	beq	.L288
	cmp	r2, r4
	beq	.L311
.L254:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L259:
	cmp	r8, r3
	bhi	.L312
.L272:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L307:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L265:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L280
	ldr	r0, [r6]
	b	.L269
.L313:
	mov	r4, r3
.L269:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L313
	cmp	r1, #0
	moveq	r3, r4
	bne	.L280
.L270:
	cmp	r0, r2
	bls	.L272
.L300:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L272
.L309:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L303:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L314
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L315
	strls	ip, [r0]
	bls	.L227
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L316
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L242
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L243
.L297:
	mov	r2, r0
	b	.L299
.L288:
	mov	ip, r4
	b	.L259
.L308:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L227
.L314:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L281
	ldr	r0, [r6]
	b	.L234
.L317:
	mov	r4, r3
.L234:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L317
	cmp	r1, #0
	moveq	r3, r4
	bne	.L230
.L235:
	cmp	r2, r0
	bcs	.L272
	b	.L300
.L280:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L302
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L270
.L312:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L272
.L315:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L227
.L281:
	mov	r4, r8
.L230:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L301
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L235
.L319:
	mov	r4, ip
	b	.L254
.L242:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L248
	b	.L320
.L318:
	mov	r4, r3
.L248:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L318
	cmp	r0, #0
	moveq	r3, r4
	bne	.L244
.L249:
	cmp	r2, r1
	bcs	.L272
	b	.L300
.L311:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L272
.L316:
	ldr	r3, [r4]
.L243:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L227
.L302:
	mov	r2, r4
.L301:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L272
.L320:
	mov	r4, ip
.L244:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L302
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L249
.L306:
	str	r3, [r5]
	b	.L227
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.global	__aeabi_i2f
	.global	__aeabi_fsub
	.global	__aeabi_fcmple
	.section	.text._ZN6Player16HandleCollisionsEv,"ax",%progbits
	.align	2
	.global	_ZN6Player16HandleCollisionsEv
	.hidden	_ZN6Player16HandleCollisionsEv
	.type	_ZN6Player16HandleCollisionsEv, %function
_ZN6Player16HandleCollisionsEv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, r0
	ldr	r6, .L349
	ldr	r3, .L349+4
.LPIC16:
	add	r6, pc, r6
	sub	sp, sp, #28
	ldr	r4, [r6, r3]
	mov	r5, r0
	ldr	r0, [r4]
	bl	_ZN16CollisionManager13HasCollisionsEP10GameSprite(PLT)
	cmp	r0, #0
	bne	.L347
.L321:
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L347:
	ldr	r0, [r4]
	mov	r1, r5
	bl	_ZN16CollisionManager13GetCollisionsEP10GameSprite(PLT)
	ldmia	r0, {r4, ip}
	mov	r9, r0
	cmp	r4, ip
	beq	.L321
	ldr	r7, .L349+8
	mov	r8, #0
.LPIC17:
	add	r7, pc, r7
	b	.L334
.L324:
	add	r4, r4, #20
	cmp	r4, ip
	beq	.L321
.L334:
	ldr	r3, [r4, #8]
	ldr	r2, [r3, #240]
	cmp	r2, #4
	bne	.L324
	ldrb	r3, [r3, #232]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L324
	ldrb	r3, [r5, #288]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L324
	bl	rand(PLT)
	mov	r10, #0
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #24
	add	r0, r0, r3
	uxtb	r0, r0
	rsb	r0, r3, r0
	bl	__aeabi_i2f(PLT)
	mov	r1, #998244352
	bl	__aeabi_fmul(PLT)
	mov	r1, #1090519040
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L349+12
	bl	__aeabi_fadd(PLT)
	ldr	r1, .L349+16
	bl	__aeabi_fsub(PLT)
	mov	r1, r0
	ldr	r0, [r5, #280]	@ float
	bl	__aeabi_fsub(PLT)
	ldr	r1, [r5, #56]
	ldr	r3, .L349+20
	strb	r10, [r5, #288]
	str	r3, [r5, #228]
	ldr	r2, .L349+24
	str	r0, [r5, #280]	@ float
	ldr	r1, [r1]
	str	r3, [r1, #228]
	ldr	r2, [r6, r2]
	str	r2, [sp, #4]
	ldr	r3, [r2]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, r10
	bne	.L348
.L326:
	ldr	r0, [r5, #280]	@ float
	mov	r1, #0
	bl	__aeabi_fcmple(PLT)
	cmp	r0, #0
	bne	.L333
.L346:
	ldr	ip, [r9, #4]
	b	.L324
.L348:
	ldr	r2, .L349+28
	ldr	r3, .L349+32
	mov	r1, r7
	ldr	r0, [r6, r2]
	ldr	r3, [r6, r3]
	ldr	r2, .L349+36
	ldr	fp, [r0]
	ldr	r0, [r3]
.LPIC18:
	add	r2, pc, r2
	ldr	lr, [fp]
	mov	r3, r10
	str	lr, [r0, #100]
	ldr	r0, [fp]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	mov	r1, r10
	bl	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams(PLT)
	subs	ip, r0, #0
	beq	.L326
	ldr	lr, [fp, #4]
	ldr	r2, [fp, #16]
	mov	r3, lr
	ldr	r1, [lr, #4]
	cmp	r1, r10
	beq	.L328
.L332:
	ldr	r0, [r1, #16]
	cmp	r2, r0
	movls	r3, r1
	ldrhi	r1, [r1, #12]
	ldrls	r1, [r1, #8]
	cmp	r1, #0
	bne	.L332
	cmp	lr, r3
	beq	.L328
	ldr	r1, [r3, #16]
	cmp	r2, r1
	bcs	.L335
.L328:
	mov	lr, #0
	str	r2, [sp, #16]
	str	r3, [sp, #8]
	add	r0, sp, #12
	add	r3, sp, #16
	add	r1, fp, #4
	add	r2, sp, #8
	str	ip, [sp]
	str	lr, [sp, #20]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, [sp, #12]
	ldr	ip, [sp]
.L335:
	str	ip, [r3, #20]
	ldr	r3, [fp, #16]
	add	r3, r3, #1
	str	r3, [fp, #16]
	b	.L326
.L333:
	ldr	r2, [sp, #4]
	str	r8, [r5, #280]	@ float
	ldr	r0, [r2]
	bl	_ZN4Game10PlayerDiedEv(PLT)
	b	.L346
.L350:
	.align	2
.L349:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.word	.LC3-(.LPIC17+8)
	.word	1092616192
	.word	1082130432
	.word	-12303105
	.word	_ZN4Game10g_instanceE(GOT)
	.word	_ZN12AudioManager9singletonE(GOT)
	.word	g_IwResManager(GOT)
	.word	.LC4-(.LPIC18+8)
	.size	_ZN6Player16HandleCollisionsEv, .-_ZN6Player16HandleCollisionsEv
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.section	.text._ZN6Player6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN6Player6UpdateEff
	.hidden	_ZN6Player6UpdateEff
	.type	_ZN6Player6UpdateEff, %function
_ZN6Player6UpdateEff:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #20
	mov	r2, #1065353216
	mov	r7, r1
	bl	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff(PLT)
	ldr	r1, [r6, #256]	@ float
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r6, #252]	@ float
	ldr	r9, .L387
.LPIC27:
	add	r9, pc, r9
	mov	r4, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r6, #260]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r4
	str	r0, [r6, #260]	@ float
	ldr	r0, [r6, #264]	@ float
	bl	__aeabi_fadd(PLT)
	str	r0, [r6, #264]	@ float
	add	r0, r6, #260
	bl	_ZNK8CIwFVec29GetLengthEv(PLT)
	ldr	r1, .L387+4
	mov	r4, r0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	bne	.L352
	ldr	r4, [r6, #260]	@ float
	ldr	r3, [r6, #264]	@ float
.L353:
	ldr	r0, [r6, #252]	@ float
	ldr	r1, .L387+8
	str	r3, [sp, #4]
	bl	__aeabi_fmul(PLT)
	add	r2, r6, #272
	ldr	r1, .L387+8
	str	r2, [sp, #12]
	mov	r5, #0
	mov	r8, r5
	str	r0, [r6, #252]	@ float
	ldr	r0, [r6, #256]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L387+8
	str	r0, [r6, #256]	@ float
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L387+8
	str	r0, [r6, #260]	@ float
	ldr	r3, [sp, #4]
	mov	r10, r0
	mov	r0, r3
	bl	__aeabi_fmul(PLT)
	mov	r1, r10
	mov	r4, r0
	str	r0, [r6, #264]	@ float
	ldr	r0, [r6, #4]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r4
	str	r0, [r6, #4]	@ float
	ldr	r0, [r6, #8]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r2, .L387+12
	ldr	r3, .L387+16
	str	r0, [r6, #8]	@ float
	ldr	r2, [r9, r2]
	ldr	r4, [r9, r3]
	ldr	r2, [r2]
	add	r4, r4, #24
	str	r2, [sp, #8]
.L356:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L354
	cmp	r8, #0
	bne	.L354
	ldr	r3, [sp, #8]
	cmp	r5, r3
	beq	.L354
	ldr	r0, [r4, #-20]
	bl	__aeabi_i2f(PLT)
	ldr	r2, .L387+20
	mov	r1, #1056964608
	mov	r8, #1
	ldr	r2, [r9, r2]
	mov	r10, r0
	ldr	r0, [r2]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r10
	bl	__aeabi_fsub(PLT)
	mov	r10, r0
	ldr	r0, [r4, #-24]
	bl	__aeabi_i2f(PLT)
	mov	r1, #1056964608
	mov	fp, r0
	ldr	r0, .L387+24
	ldr	r0, [r9, r0]
	ldr	r0, [r0]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	__aeabi_fsub(PLT)
	str	r10, [r6, #276]	@ float
	str	r0, [r6, #272]	@ float
	ldr	r0, [sp, #12]
	bl	_ZN8CIwFVec29NormaliseEv(PLT)
.L354:
	add	r5, r5, #1
	cmp	r5, #10
	add	r4, r4, #32
	bne	.L356
	ldr	r0, [r6, #264]	@ float
	bl	__aeabi_f2d(PLT)
	mov	r4, r0
	ldr	r0, [r6, #260]	@ float
	mov	r5, r1
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	atan2(PLT)
	bl	__aeabi_d2f(PLT)
	ldr	r1, .L387+28
	mov	r9, r0
	bl	__aeabi_fadd(PLT)
	str	r0, [r6, #36]	@ float
	ldr	r0, [r6, #276]	@ float
	bl	__aeabi_f2d(PLT)
	mov	r4, r0
	ldr	r0, [r6, #272]	@ float
	mov	r5, r1
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	atan2(PLT)
	ldr	r3, [r6, #56]
	ldr	r4, [r3]
	bl	__aeabi_d2f(PLT)
	mov	r1, r9
	bl	__aeabi_fsub(PLT)
	str	r0, [r4, #36]	@ float
	mov	r0, r7
	ldr	r1, [r6, #244]	@ float
	bl	__aeabi_fadd(PLT)
	cmp	r8, #0
	str	r0, [r6, #244]	@ float
	beq	.L357
	ldr	r1, [r6, #248]	@ float
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	bne	.L386
.L357:
	ldrb	r3, [r6, #288]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L360
	ldr	r1, [r6, #284]	@ float
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	mov	r1, #1065353216
	mov	r4, r0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	mvnne	r3, #0
	ldrne	r2, [r6, #56]
	movne	r0, #0
	movne	r1, #1
	strne	r0, [r6, #284]	@ float
	strneb	r1, [r6, #288]
	strne	r3, [r6, #228]
	ldrne	r2, [r2]
	streq	r4, [r6, #284]	@ float
	strne	r3, [r2, #228]
.L360:
	mov	r0, r6
	bl	_ZN6Player16HandleCollisionsEv(PLT)
	ldr	r5, .L387+32
	ldr	r4, [r6, #4]	@ float
	mov	r1, r5
	mov	r0, r4
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	bne	.L384
	ldr	r5, .L387+36
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	bne	.L384
.L365:
	ldr	r4, [r6, #8]	@ float
	ldr	r5, .L387+32
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	bne	.L385
	ldr	r5, .L387+36
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	beq	.L351
.L385:
	str	r5, [r6, #8]	@ float
.L351:
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L384:
	str	r5, [r6, #4]	@ float
	b	.L365
.L352:
	mov	r1, r4
	mov	r0, #1065353216
	bl	__aeabi_fdiv(PLT)
	ldr	r1, [r6, #260]	@ float
	mov	r5, r0
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L387+4
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r6, #264]	@ float
	mov	r4, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L387+4
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	b	.L353
.L386:
	mov	r0, r6
	bl	_ZN6Player5ShootEv(PLT)
	mov	r3, #0
	str	r3, [r6, #244]	@ float
	b	.L357
.L388:
	.align	2
.L387:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+8)
	.word	1114636288
	.word	1063675494
	.word	_ZN8Trackpad9m_TouchIDE(GOT)
	.word	_ZN5Input9g_TouchesE(GOT)
	.word	_ZN4Game16g_viewportHeightE(GOT)
	.word	_ZN4Game15g_viewportWidthE(GOT)
	.word	1070141403
	.word	-1018691584
	.word	1128792064
	.size	_ZN6Player6UpdateEff, .-_ZN6Player6UpdateEff
	.section	.text._ZN6Player6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN6Player6RenderEv
	.hidden	_ZN6Player6RenderEv
	.type	_ZN6Player6RenderEv, %function
_ZN6Player6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_ZN10GameSprite6RenderEv(PLT)
	.size	_ZN6Player6RenderEv, .-_ZN6Player6RenderEv
	.hidden	_ZTS6Player
	.global	_ZTS6Player
	.hidden	_ZTI6Player
	.global	_ZTI6Player
	.hidden	_ZTV6Player
	.global	_ZTV6Player
	.section	.rodata
	.align	2
	.type	_ZTS6Player, %object
	.size	_ZTS6Player, 8
_ZTS6Player:
	.ascii	"6Player\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV6Player, %object
	.size	_ZTV6Player, 28
_ZTV6Player:
	.word	0
	.word	_ZTI6Player
	.word	_ZN6PlayerD1Ev
	.word	_ZN6PlayerD0Ev
	.word	_ZN6Player6UpdateEff
	.word	_ZN6Player6RenderEv
	.word	_ZN10GameSprite7DestroyEv
	.type	_ZTI6Player, %object
	.size	_ZTI6Player, 12
_ZTI6Player:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS6Player
	.word	_ZTI10GameSprite
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"player\000"
	.space	1
.LC1:
	.ascii	"CIwTexture\000"
	.space	1
.LC2:
	.ascii	"player_gun\000"
	.space	1
.LC3:
	.ascii	"tank_hit\000"
	.space	3
.LC4:
	.ascii	"CIwSoundSpec\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
