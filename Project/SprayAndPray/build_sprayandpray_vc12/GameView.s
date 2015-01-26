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
	.file	"GameView.cpp"
	.section	.text._ZN4Game15RestartButtonCBEv,"axG",%progbits,_ZN4Game15RestartButtonCBEv,comdat
	.align	2
	.weak	_ZN4Game15RestartButtonCBEv
	.hidden	_ZN4Game15RestartButtonCBEv
	.type	_ZN4Game15RestartButtonCBEv, %function
_ZN4Game15RestartButtonCBEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	ldr	r1, .L2+4
.LPIC0:
	add	r3, pc, r3
	mov	r2, #1
	ldr	r3, [r3, r1]
	ldr	r3, [r3]
	strb	r2, [r3, #28]
	bx	lr
.L3:
	.align	2
.L2:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.size	_ZN4Game15RestartButtonCBEv, .-_ZN4Game15RestartButtonCBEv
	.global	__aeabi_fdiv
	.global	__aeabi_fmul
	.global	__aeabi_fsub
	.section	.text._ZN8GameView12UpdateLayoutEv,"ax",%progbits
	.align	2
	.global	_ZN8GameView12UpdateLayoutEv
	.hidden	_ZN8GameView12UpdateLayoutEv
	.type	_ZN8GameView12UpdateLayoutEv, %function
_ZN8GameView12UpdateLayoutEv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r5, .L9
	ldr	r2, .L9+4
.LPIC1:
	add	r5, pc, r5
	ldr	r1, .L9+8
	ldr	r2, [r5, r2]
	ldr	r3, .L9+12
	ldr	r1, [r5, r1]
	ldrb	r2, [r2]	@ zero_extendqisi2
	ldr	r3, [r5, r3]
	sub	sp, sp, #20
	cmp	r2, #0
	ldr	r6, [r3]	@ float
	ldr	r4, [r1]	@ float
	ldr	r3, .L9+16
	bne	.L8
	ldr	r3, [r5, r3]
	ldr	r1, .L9+20
	mov	r0, r6
	str	r3, [sp, #12]
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [sp, #12]
	ldr	r3, [r7, #8]
	ldr	r1, .L9+24
	str	r0, [r2]	@ float
	mov	r0, r6
	ldr	r10, [r3]
	bl	__aeabi_fmul(PLT)
	mov	r1, #0
	mov	r8, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, r8
	ldr	r9, [r10]
	mov	fp, r0
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	mov	r1, fp
	bl	__aeabi_fsub(PLT)
	mov	r1, fp
	str	r8, [sp]	@ float
	mov	r3, r8
	ldr	ip, [r9, #12]
	mov	r2, r0
	mov	r0, r10
	blx	ip
	ldr	r3, [r7, #8]
	ldr	r1, .L9+28
	mov	r0, r4
	ldr	r8, [r3, #4]
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L9+32
	mov	r9, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L9+36
	mov	fp, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L9+40
	mov	r10, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	ip, [r8]
	mov	r1, r9
	mov	r2, fp
	mov	r3, r10
	str	r0, [sp]	@ float
	mov	r0, r8
	ldr	ip, [ip, #12]
	blx	ip
	ldr	r3, [r7, #8]
	mov	ip, #0
	mov	r1, r6
	ldr	r2, [r3, #8]
	mov	r3, ip
	mov	r0, r2
	ldr	lr, [r2]
	mov	r2, r6
	str	ip, [sp]	@ float
	ldr	ip, [lr, #12]
	blx	ip
	mov	r0, r4
	ldr	r1, .L9+44
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [sp, #12]
	mov	r3, r0
	str	r0, [r2]	@ float
.L6:
	ldr	r2, .L9+48
	ldr	r2, [r5, r2]
	ldr	r2, [r2]
	ldr	r1, [r2, #32]
	str	r3, [r1, #28]	@ float
	ldr	r2, [r2, #32]
	str	r3, [r2, #32]	@ float
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L8:
	ldr	r3, [r5, r3]
	ldr	r1, .L9+20
	mov	r0, r4
	str	r3, [sp, #12]
	bl	__aeabi_fdiv(PLT)
	ldr	r2, [sp, #12]
	ldr	r3, [r7, #8]
	ldr	r1, .L9+24
	str	r0, [r2]	@ float
	mov	r0, r4
	ldr	r10, [r3]
	bl	__aeabi_fmul(PLT)
	mov	r1, #0
	mov	r8, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, r8
	ldr	r9, [r10]
	mov	fp, r0
	mov	r0, r6
	bl	__aeabi_fsub(PLT)
	mov	r1, fp
	bl	__aeabi_fsub(PLT)
	mov	r1, fp
	str	r8, [sp]	@ float
	mov	r3, r8
	ldr	ip, [r9, #12]
	mov	r2, r0
	mov	r0, r10
	blx	ip
	ldr	r3, [r7, #8]
	ldr	r1, .L9+28
	mov	r0, r4
	ldr	r8, [r3, #4]
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L9+32
	mov	r9, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L9+36
	mov	fp, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	r1, .L9+40
	mov	r10, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	ldr	ip, [r8]
	mov	r2, fp
	mov	r1, r9
	mov	r3, r10
	str	r0, [sp]	@ float
	mov	r0, r8
	ldr	ip, [ip, #12]
	blx	ip
	ldr	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r4
	ldr	r6, [r3, #8]
	bl	__aeabi_fsub(PLT)
	mov	r3, #0
	ldr	ip, [r6]
	mov	r1, r4
	mov	r2, r4
	str	r0, [sp]	@ float
	mov	r0, r6
	ldr	ip, [ip, #12]
	blx	ip
	mov	r0, r4
	ldr	r1, .L9+52
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [sp, #12]
	str	r0, [r3]	@ float
	mov	r3, r0
	b	.L6
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	_ZN4Game12g_inPortraitE(GOT)
	.word	_ZN4Game15g_viewportWidthE(GOT)
	.word	_ZN4Game16g_viewportHeightE(GOT)
	.word	_ZN10GameSprite11g_zoomLevelE(GOT)
	.word	1132068864
	.word	1051931443
	.word	1050253722
	.word	1058642330
	.word	1053609165
	.word	1036831949
	.word	1134559232
	.word	_ZN4Game10g_instanceE(GOT)
	.word	1128792064
	.size	_ZN8GameView12UpdateLayoutEv, .-_ZN8GameView12UpdateLayoutEv
	.section	.text._ZN8GameViewD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8GameViewD2Ev
	.hidden	_ZN8GameViewD2Ev
	.type	_ZN8GameViewD2Ev, %function
_ZN8GameViewD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	stmfd	sp!, {r4, lr}
.LPIC2:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN4ViewD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L13:
	.align	2
.L12:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	_ZN8GameViewD2Ev, .-_ZN8GameViewD2Ev
	.global	_ZN8GameViewD1Ev
	.hidden	_ZN8GameViewD1Ev
	.set	_ZN8GameViewD1Ev,_ZN8GameViewD2Ev
	.section	.text._ZN8GameViewD0Ev,"ax",%progbits
	.align	2
	.global	_ZN8GameViewD0Ev
	.hidden	_ZN8GameViewD0Ev
	.type	_ZN8GameViewD0Ev, %function
_ZN8GameViewD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L15
	stmfd	sp!, {r4, lr}
.LPIC3:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN4ViewD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC3+8)
	.size	_ZN8GameViewD0Ev, .-_ZN8GameViewD0Ev
	.section	.text._ZN8GameView16TrackpadMovementE8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN8GameView16TrackpadMovementE8CIwFVec2
	.hidden	_ZN8GameView16TrackpadMovementE8CIwFVec2
	.type	_ZN8GameView16TrackpadMovementE8CIwFVec2, %function
_ZN8GameView16TrackpadMovementE8CIwFVec2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L18
	ldr	ip, .L18+4
	sub	sp, sp, #8
.LPIC4:
	add	r0, pc, r0
	stmia	sp, {r1, r2}
	ldr	r0, [r0, ip]
	ldmia	sp, {r1, r2}
	ldr	r3, [r0]
	ldr	r0, [r3, #16]
	add	sp, sp, #8
	@ sp needed
	b	_ZN6Player4MoveE8CIwFVec2(PLT)
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.size	_ZN8GameView16TrackpadMovementE8CIwFVec2, .-_ZN8GameView16TrackpadMovementE8CIwFVec2
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
	beq	.L21
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L30
.L22:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L31
.L26:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L24:
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
.L30:
	cmp	r2, #0
	beq	.L32
.L21:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L33
.L28:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L34
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L24
.L34:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L24
.L33:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L28
.L31:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L26
.L32:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L21
	b	.L22
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
	beq	.L111
	cmp	ip, r8
	beq	.L112
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L113
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L114
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L72
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L73
.L72:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L105
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L35
.L113:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L115
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L116
.L107:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L35:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L112:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L117
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L66
	b	.L127
.L118:
	mov	r4, r0
.L66:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L118
	cmp	r1, #0
	beq	.L96
	cmp	r2, r4
	beq	.L119
.L62:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L67:
	cmp	r8, r3
	bhi	.L120
.L80:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L115:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L73:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L88
	ldr	r0, [r6]
	b	.L77
.L121:
	mov	r4, r3
.L77:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L121
	cmp	r1, #0
	moveq	r3, r4
	bne	.L88
.L78:
	cmp	r0, r2
	bls	.L80
.L108:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L80
.L117:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L111:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L122
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L123
	strls	ip, [r0]
	bls	.L35
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L124
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L50
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L51
.L105:
	mov	r2, r0
	b	.L107
.L96:
	mov	ip, r4
	b	.L67
.L116:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L35
.L122:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L89
	ldr	r0, [r6]
	b	.L42
.L125:
	mov	r4, r3
.L42:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L125
	cmp	r1, #0
	moveq	r3, r4
	bne	.L38
.L43:
	cmp	r2, r0
	bcs	.L80
	b	.L108
.L88:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L110
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L78
.L120:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L80
.L123:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L35
.L89:
	mov	r4, r8
.L38:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L109
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L43
.L127:
	mov	r4, ip
	b	.L62
.L50:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L56
	b	.L128
.L126:
	mov	r4, r3
.L56:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L126
	cmp	r0, #0
	moveq	r3, r4
	bne	.L52
.L57:
	cmp	r2, r1
	bcs	.L80
	b	.L108
.L119:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L80
.L124:
	ldr	r3, [r4]
.L51:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L35
.L110:
	mov	r2, r4
.L109:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L80
.L128:
	mov	r4, ip
.L52:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L110
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L57
.L114:
	str	r3, [r5]
	b	.L35
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN8GameViewC2Ev,"ax",%progbits
	.align	2
	.global	_ZN8GameViewC2Ev
	.hidden	_ZN8GameViewC2Ev
	.type	_ZN8GameViewC2Ev, %function
_ZN8GameViewC2Ev:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	mov	r5, r0
	ldr	r7, .L262
	bl	_ZN4ViewC2Ev(PLT)
	ldr	r2, .L262+4
	ldr	r3, .L262+8
.LPIC6:
	add	r7, pc, r7
.LPIC5:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r2, [r5]
	ldr	r4, [r7, r3]
	ldr	r1, .L262+12
	ldr	r2, .L262+16
	ldr	r0, [r4]
.LPIC7:
	add	r1, pc, r1
.LPIC8:
	add	r2, pc, r2
	mov	r3, #0
	ldr	r0, [r0, #12]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r3, .L262+20
	ldr	r1, [r4]
	ldr	r6, [r7, r3]
	ldr	r2, [r1, #12]
	ldr	r3, [r6]
	str	r2, [r3, #100]
	ldr	r9, [r1]
	ldr	r2, [r9, #4]
	cmp	r2, #0
	mov	r10, r0
	ldr	ip, [r0, #4]
	beq	.L135
	mov	r8, r9
	mov	r3, r2
.L134:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r8, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L134
	cmp	r9, r8
	beq	.L135
	ldr	r3, [r8, #16]
	cmp	r3, ip
	bls	.L258
.L135:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r4]
	ldr	ip, [r10, #4]
	mov	r8, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L142
.L141:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L141
	cmp	r0, lr
	beq	.L142
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L227
.L142:
	mov	r9, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r9, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
	ldr	r1, [r4]
.L227:
	str	r8, [lr, #20]
	b	.L143
.L258:
	mov	lr, r9
.L147:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L147
	cmp	r9, lr
	beq	.L148
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L228
.L148:
	mov	r8, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r8, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
	ldr	r1, [r4]
.L228:
	ldr	r8, [lr, #20]
.L143:
	ldr	r0, [r1, #12]
	ldr	r2, .L262+24
	ldr	r1, .L262+28
.LPIC10:
	add	r2, pc, r2
.LPIC9:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r4]
	ldr	r3, [r6]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r9, [r1]
	ldr	r2, [r9, #4]
	cmp	r2, #0
	mov	r10, r0
	ldr	ip, [r0, #4]
	beq	.L154
	mov	r0, r9
	mov	r3, r2
.L153:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r0, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L153
	cmp	r9, r0
	beq	.L154
	ldr	r3, [r0, #16]
	cmp	r3, ip
	bls	.L259
.L154:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r4]
	ldr	ip, [r10, #4]
	mov	r9, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L161
.L160:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L160
	cmp	r0, lr
	beq	.L161
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L229
.L161:
	mov	r10, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r10, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
.L229:
	str	r9, [lr, #20]
	mov	r10, r9
	b	.L162
.L259:
	mov	lr, r9
.L166:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L166
	cmp	r9, lr
	beq	.L167
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L230
.L167:
	mov	r9, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r9, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
.L230:
	ldr	r10, [lr, #20]
.L162:
	mov	r0, #292
	bl	_Znwj(PLT)
	ldr	r2, .L262+32
	ldr	r3, .L262+36
	stmib	sp, {r8, r10}
	str	r3, [sp]	@ float
	ldr	r2, [r7, r2]
	mov	r1, #0
	str	r2, [sp, #12]
	ldr	r2, .L262+40
	mov	r9, r0
	bl	_ZN8TrackpadC1EffffP10CIw2DImageS1_PFv8CIwFVec2E(PLT)
	ldr	r7, [r5, #12]
	ldr	r3, [r5, #16]
	cmp	r7, r3
	beq	.L168
	str	r9, [r7]
	ldr	r3, [r5, #12]
	add	r3, r3, #4
	str	r3, [r5, #12]
.L169:
	ldr	r3, [r4]
	ldr	r1, .L262+44
	ldr	r2, .L262+48
.LPIC11:
	add	r1, pc, r1
.LPIC12:
	add	r2, pc, r2
	ldr	r0, [r3, #12]
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r4]
	ldr	r3, [r6]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r8, [r1]
	ldr	r2, [r8, #4]
	cmp	r2, #0
	mov	r9, r0
	ldr	ip, [r0, #4]
	beq	.L180
	mov	r7, r8
	mov	r3, r2
.L179:
	ldr	lr, [r3, #16]
	cmp	ip, lr
	movls	r7, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L179
	cmp	r7, r8
	beq	.L180
	ldr	r3, [r7, #16]
	cmp	ip, r3
	bcs	.L260
.L180:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r4]
	ldr	ip, [r9, #4]
	mov	r7, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L187
.L186:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L186
	cmp	lr, r0
	beq	.L187
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L231
.L187:
	mov	r8, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r8, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
	ldr	r1, [r4]
.L231:
	str	r7, [lr, #20]
	b	.L188
.L260:
	mov	lr, r8
.L192:
	ldr	r3, [r2, #16]
	cmp	ip, r3
	movls	lr, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L192
	cmp	lr, r8
	beq	.L193
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L232
.L193:
	mov	r7, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r7, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
	ldr	r1, [r4]
.L232:
	ldr	r7, [lr, #20]
.L188:
	ldr	r0, [r1, #12]
	ldr	r2, .L262+52
	ldr	r1, .L262+56
.LPIC14:
	add	r2, pc, r2
.LPIC13:
	add	r1, pc, r1
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r1, [r4]
	ldr	r3, [r6]
	ldr	r2, [r1, #12]
	str	r2, [r3, #100]
	ldr	r8, [r1]
	ldr	r2, [r8, #4]
	cmp	r2, #0
	mov	r9, r0
	ldr	ip, [r0, #4]
	beq	.L199
	mov	r6, r8
	mov	r3, r2
.L198:
	ldr	lr, [r3, #16]
	cmp	lr, ip
	movcs	r6, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L198
	cmp	r6, r8
	beq	.L199
	ldr	r3, [r6, #16]
	cmp	r3, ip
	bls	.L261
.L199:
	mov	r0, ip
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r4]
	ldr	ip, [r9, #4]
	mov	r6, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L206
.L205:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L205
	cmp	lr, r0
	beq	.L206
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L233
.L206:
	mov	r4, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r4, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
.L233:
	str	r6, [lr, #20]
	mov	r4, r6
	b	.L207
.L261:
	mov	lr, r8
.L211:
	ldr	r3, [r2, #16]
	cmp	r3, ip
	movcs	lr, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L211
	cmp	lr, r8
	beq	.L212
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L234
.L212:
	mov	r4, #0
	add	r0, sp, #20
	add	r2, sp, #16
	add	r3, sp, #24
	str	lr, [sp, #16]
	str	ip, [sp, #24]
	str	r4, [sp, #28]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #20]
.L234:
	ldr	r4, [lr, #20]
.L207:
	mov	r0, #292
	bl	_Znwj(PLT)
	ldr	ip, .L262+60
	mov	r3, #0
.LPIC15:
	add	ip, pc, ip
	mov	r1, r3
	str	r4, [sp, #8]
	str	r3, [sp]	@ float
	mov	r2, r3
	str	r7, [sp, #4]
	str	ip, [sp, #12]
	mov	r6, r0
	bl	_ZN6ButtonC1EffffP10CIw2DImageS1_PFvvE(PLT)
	ldr	r4, [r5, #12]
	ldr	r3, [r5, #16]
	cmp	r4, r3
	beq	.L213
	str	r6, [r4]
	ldr	r3, [r5, #12]
	add	r3, r3, #4
	str	r3, [r5, #12]
.L214:
	mov	r0, #136
	bl	_Znwj(PLT)
	ldr	r1, .L262+64
	mov	r3, #0
	mov	r2, r3
	str	r3, [sp]	@ float
	str	r3, [sp, #4]	@ float
.LPIC16:
	add	r1, pc, r1
	mov	r6, r0
	bl	_ZN10GuiTextureC1EPKcffff(PLT)
	ldr	r4, [r5, #12]
	ldr	r3, [r5, #16]
	cmp	r4, r3
	beq	.L220
	str	r6, [r4]
	ldr	r3, [r5, #12]
	mov	r0, r5
	add	r3, r3, #4
	str	r3, [r5, #12]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L168:
	ldr	r8, [r5, #8]
	rsb	r3, r8, r7
	movs	r3, r3, asr #2
	beq	.L235
	movs	r10, r3, asl #1
	moveq	fp, r10
	bne	.L170
.L171:
	cmp	r7, r8
	moveq	r0, fp
	beq	.L173
	rsb	r7, r8, r7
	mov	r1, r8
	mov	r2, r7
	mov	r0, fp
	bl	memmove(PLT)
	add	r0, r0, r7
.L173:
	mov	r7, r0
	str	r9, [r7], #4
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L174
	bl	free(PLT)
.L174:
	add	r10, fp, r10
	str	r10, [r5, #16]
	str	fp, [r5, #8]
	str	r7, [r5, #12]
	b	.L169
.L220:
	ldr	r7, [r5, #8]
	rsb	r3, r7, r4
	movs	r3, r3, asr #2
	beq	.L241
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L222
.L223:
	cmp	r7, r4
	moveq	r0, r8
	beq	.L225
	rsb	r4, r7, r4
	mov	r1, r7
	mov	r2, r4
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r4
.L225:
	mov	r4, r0
	str	r6, [r4], #4
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L226
	bl	free(PLT)
.L226:
	add	r9, r8, r9
	mov	r0, r5
	str	r9, [r5, #16]
	str	r8, [r5, #8]
	str	r4, [r5, #12]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L213:
	ldr	r7, [r5, #8]
	rsb	r3, r7, r4
	movs	r3, r3, asr #2
	beq	.L238
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L215
.L216:
	cmp	r7, r4
	moveq	r0, r8
	beq	.L218
	rsb	r4, r7, r4
	mov	r1, r7
	mov	r2, r4
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r4
.L218:
	mov	r4, r0
	str	r6, [r4], #4
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L219
	bl	free(PLT)
.L219:
	add	r9, r8, r9
	str	r9, [r5, #16]
	str	r8, [r5, #8]
	str	r4, [r5, #12]
	b	.L214
.L238:
	mov	r9, #1
.L215:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L216
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r5, #8]
	mov	r8, r0
	b	.L216
.L241:
	mov	r9, #1
.L222:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L223
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r5, #8]
	mov	r8, r0
	b	.L223
.L235:
	mov	r10, #1
.L170:
	mov	r10, r10, asl #2
	mov	r0, r10
	bl	malloc(PLT)
	subs	fp, r0, #0
	bne	.L171
	mov	r0, r10
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r8, [r5, #8]
	mov	fp, r0
	b	.L171
.L263:
	.align	2
.L262:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+8)
	.word	.LANCHOR0-(.LPIC5+8)
	.word	_ZN12ImageManager9singletonE(GOT)
	.word	.LC0-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.word	g_IwResManager(GOT)
	.word	.LC1-(.LPIC10+8)
	.word	.LC2-(.LPIC9+8)
	.word	_ZN4Game10TrackpadCBE8CIwFVec2(GOT)
	.word	1051931443
	.word	1059481190
	.word	.LC3-(.LPIC11+8)
	.word	.LC1-(.LPIC12+8)
	.word	.LC1-(.LPIC14+8)
	.word	.LC4-(.LPIC13+8)
	.word	_ZN4Game15RestartButtonCBEv-(.LPIC15+8)
	.word	.LC5-(.LPIC16+8)
	.size	_ZN8GameViewC2Ev, .-_ZN8GameViewC2Ev
	.global	_ZN8GameViewC1Ev
	.hidden	_ZN8GameViewC1Ev
	.set	_ZN8GameViewC1Ev,_ZN8GameViewC2Ev
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
	beq	.L265
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L274
.L266:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L275
.L270:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L268:
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
.L274:
	cmp	r2, #0
	beq	.L276
.L265:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L277
.L272:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L278
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L268
.L278:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L268
.L277:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L272
.L275:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L270
.L276:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L265
	b	.L266
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
	beq	.L355
	cmp	ip, r8
	beq	.L356
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L357
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L358
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L316
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L317
.L316:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L349
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L279
.L357:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L359
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L360
.L351:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L279:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L356:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L361
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L310
	b	.L371
.L362:
	mov	r4, r0
.L310:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L362
	cmp	r1, #0
	beq	.L340
	cmp	r2, r4
	beq	.L363
.L306:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L311:
	cmp	r8, r3
	bhi	.L364
.L324:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L359:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L317:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L332
	ldr	r0, [r6]
	b	.L321
.L365:
	mov	r4, r3
.L321:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L365
	cmp	r1, #0
	moveq	r3, r4
	bne	.L332
.L322:
	cmp	r0, r2
	bls	.L324
.L352:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L324
.L361:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L355:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L366
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L367
	strls	ip, [r0]
	bls	.L279
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L368
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L294
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L295
.L349:
	mov	r2, r0
	b	.L351
.L340:
	mov	ip, r4
	b	.L311
.L360:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L279
.L366:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L333
	ldr	r0, [r6]
	b	.L286
.L369:
	mov	r4, r3
.L286:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L369
	cmp	r1, #0
	moveq	r3, r4
	bne	.L282
.L287:
	cmp	r2, r0
	bcs	.L324
	b	.L352
.L332:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L354
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L322
.L364:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L324
.L367:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L279
.L333:
	mov	r4, r8
.L282:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L353
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L287
.L371:
	mov	r4, ip
	b	.L306
.L294:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L300
	b	.L372
.L370:
	mov	r4, r3
.L300:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L370
	cmp	r0, #0
	moveq	r3, r4
	bne	.L296
.L301:
	cmp	r2, r1
	bcs	.L324
	b	.L352
.L363:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L324
.L368:
	ldr	r3, [r4]
.L295:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L279
.L354:
	mov	r2, r4
.L353:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L324
.L372:
	mov	r4, ip
.L296:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L354
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L301
.L358:
	str	r3, [r5]
	b	.L279
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN8GameView5EnterEv,"ax",%progbits
	.align	2
	.global	_ZN8GameView5EnterEv
	.hidden	_ZN8GameView5EnterEv
	.type	_ZN8GameView5EnterEv, %function
_ZN8GameView5EnterEv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r1, #1056964608
	ldr	r4, .L388
	ldr	r2, .L388+4
.LPIC17:
	add	r4, pc, r4
	ldr	r3, .L388+8
	ldr	r2, [r4, r2]
	sub	sp, sp, #16
	mov	r7, r0
	ldr	r0, [r2]	@ float
	ldr	r6, [r4, r3]
	bl	__aeabi_fmul(PLT)
	ldr	r3, .L388+12
	ldr	r5, [r6]
	mov	r1, #1056964608
	ldr	r2, [r5, #32]
	str	r0, [r2, #4]	@ float
	ldr	r3, [r4, r3]
	ldr	r8, [r5, #32]
	ldr	r0, [r3]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, .L388+16
	str	r0, [r8, #8]	@ float
	ldr	r3, [r4, r3]
	ldr	r2, [r5, #32]
	mov	r0, r7
	ldr	r3, [r3]	@ float
	str	r3, [r2, #28]	@ float
	ldr	r2, [r5, #32]
	str	r3, [r2, #32]	@ float
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	blx	r3
	ldr	r3, [r6]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L386
	ldr	r3, .L388+20
	ldr	r5, [r4, r3]
.L374:
	ldr	r6, [r5]
	ldr	r1, .L388+24
	mov	r0, r6
.LPIC21:
	add	r1, pc, r1
	mov	r2, #0
	bl	_ZNK13CIwResManager13GetGroupNamedEPKcj(PLT)
	ldr	r1, .L388+28
	ldr	r2, .L388+32
.LPIC22:
	add	r1, pc, r1
.LPIC23:
	add	r2, pc, r2
	mov	r3, #0
	str	r0, [r6, #100]
	ldr	r0, [r5]
	bl	_ZNK13CIwResManager11GetResNamedEPKcS1_j(PLT)
	ldr	r3, .L388+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r0, [r3, #16]
	ldr	r2, [r0, #28]
	str	r2, [r3, #68]
	ldrsb	r2, [r0, #18]
	str	r2, [r3, #64]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L386:
	ldr	r3, .L388+40
	ldr	r2, .L388+20
	ldr	r1, .L388+44
	ldr	r3, [r4, r3]
	ldr	r5, [r4, r2]
	ldr	r2, .L388+48
	ldr	r6, [r3]
	ldr	r0, [r5]
.LPIC19:
	add	r2, pc, r2
	ldr	ip, [r6]
.LPIC18:
	add	r1, pc, r1
	str	ip, [r0, #100]
	mov	r3, #0
	ldr	r0, [r6]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	mov	r1, #0
	bl	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams(PLT)
	subs	r7, r0, #0
	mvneq	r2, #0
	beq	.L375
	ldr	r1, [r6, #4]
	ldr	ip, [r6, #16]
	mov	lr, r1
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L376
.L380:
	ldr	r2, [r3, #16]
	cmp	ip, r2
	movls	lr, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L380
	cmp	r1, lr
	beq	.L376
	ldr	r3, [lr, #16]
	cmp	ip, r3
	bcs	.L381
.L376:
	mov	r8, #0
	add	r0, sp, #4
	add	r1, r6, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r8, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L381:
	str	r7, [lr, #20]
	ldr	r2, [r6, #16]
	add	r3, r2, #1
	str	r3, [r6, #16]
.L375:
	ldr	r3, .L388+52
.LPIC20:
	add	r3, pc, r3
	str	r2, [r3]
	b	.L374
.L389:
	.align	2
.L388:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+8)
	.word	_ZN4Game15g_viewportWidthE(GOT)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	_ZN4Game16g_viewportHeightE(GOT)
	.word	_ZN10GameSprite11g_zoomLevelE(GOT)
	.word	g_IwResManager(GOT)
	.word	.LC8-(.LPIC21+8)
	.word	.LC9-(.LPIC22+8)
	.word	.LC10-(.LPIC23+8)
	.word	g_IwGxFontState(GOT)
	.word	_ZN12AudioManager9singletonE(GOT)
	.word	.LC6-(.LPIC18+8)
	.word	.LC7-(.LPIC19+8)
	.word	.LANCHOR1-(.LPIC20+8)
	.size	_ZN8GameView5EnterEv, .-_ZN8GameView5EnterEv
	.section	.text._ZN8GameView4ExitEv,"ax",%progbits
	.align	2
	.global	_ZN8GameView4ExitEv
	.hidden	_ZN8GameView4ExitEv
	.type	_ZN8GameView4ExitEv, %function
_ZN8GameView4ExitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L391
	ldr	r2, .L391+4
.LPIC24:
	add	r3, pc, r3
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r3, [r3, r2]
	ldr	r0, [r3]
	bl	_ZN15CIwSoundManager7StopAllEv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	b	_ZN4View4ExitEv(PLT)
.L392:
	.align	2
.L391:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+8)
	.word	g_IwSoundManager(GOT)
	.size	_ZN8GameView4ExitEv, .-_ZN8GameView4ExitEv
	.section	.text._ZN8GameView6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN8GameView6UpdateEf
	.hidden	_ZN8GameView6UpdateEf
	.type	_ZN8GameView6UpdateEf, %function
_ZN8GameView6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r1
	ldr	r4, .L398
	bl	_ZN4View6UpdateEf(PLT)
	ldr	r3, .L398+4
.LPIC25:
	add	r4, pc, r4
	mov	r1, r7
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	bl	_ZN16CollisionManager6UpdateEf(PLT)
	ldr	r3, .L398+8
	ldr	r6, [r4, r3]
	ldr	r5, [r6]
	ldr	r3, [r5]
	cmp	r3, #4
	bne	.L394
	ldr	r3, [r5, #32]
	mov	r1, r7
	mov	r0, r3
	ldr	r3, [r3]
	mov	r2, #0
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r5, [r6]
.L394:
	ldr	r2, .L398+12
	ldr	r3, .L398+16
	mov	r1, #1056964608
	ldr	r2, [r4, r2]
	ldr	r3, [r4, r3]
	ldr	r7, [r5, #32]
	ldr	r0, [r2]	@ float
	ldr	r6, [r3]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, [r5, #16]
	ldr	r1, [r3, #4]	@ float
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r8
	bl	__aeabi_fsub(PLT)
	ldr	r3, .L398+20
	mov	r1, #1056964608
	str	r0, [r7, #4]	@ float
	ldr	r3, [r4, r3]
	ldr	r4, [r5, #32]
	ldr	r0, [r3]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, [r5, #16]
	ldr	r1, [r3, #8]	@ float
	mov	r7, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fsub(PLT)
	str	r0, [r4, #8]	@ float
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L399:
	.align	2
.L398:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	_ZN4Game15g_viewportWidthE(GOT)
	.word	_ZN10GameSprite11g_zoomLevelE(GOT)
	.word	_ZN4Game16g_viewportHeightE(GOT)
	.size	_ZN8GameView6UpdateEf, .-_ZN8GameView6UpdateEf
	.global	__aeabi_fcmpgt
	.global	__aeabi_f2iz
	.section	.text._ZN8GameView6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN8GameView6RenderEv
	.hidden	_ZN8GameView6RenderEv
	.type	_ZN8GameView6RenderEv, %function
_ZN8GameView6RenderEv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r4, .L415
	ldr	r3, .L415+4
.LPIC26:
	add	r4, pc, r4
	sub	sp, sp, #20
	ldr	r5, [r4, r3]
	ldr	r3, [r5]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	blx	r3
	mov	r0, r6
	bl	_ZN4View6RenderEv(PLT)
	bl	_Z17Iw2DFinishDrawingv(PLT)
	ldr	r2, [r5]
	ldr	r3, [r2]
	cmp	r3, #4
	beq	.L402
	cmp	r3, #6
	beq	.L403
	cmp	r3, #3
	beq	.L413
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L413:
	ldr	r5, [r2, #24]	@ float
	ldr	r1, .L415+8
	mov	r0, r5
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	bne	.L414
	ldr	r3, .L415+12
	mov	r0, r5
.LPIC28:
	add	r3, pc, r3
	add	r5, r3, #4
	bl	__aeabi_f2iz(PLT)
	ldr	r1, .L415+16
.LPIC29:
	add	r1, pc, r1
	rsb	r2, r0, #3
	mov	r0, r5
	bl	sprintf(PLT)
.L407:
	ldr	r1, .L415+20
	ldr	r3, .L415+24
	mov	r2, #1
	ldr	r0, [r4, r1]
	mov	r1, #1157627904
	ldr	r5, [r0]
	str	r2, [r5, #8]
	ldr	r3, [r4, r3]
	ldr	r0, [r3]	@ float
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r3, .L415+28
	ldr	r1, .L415+32
	str	r0, [r5, #48]
	str	r0, [r5, #52]
	ldr	r3, [r4, r3]
	ldr	r0, [r3]	@ float
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r3, .L415+36
	ldr	r3, [r4, r3]
	sxth	r4, r0
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2iz(PLT)
	ldr	r3, .L415+40
	mov	r1, #0
.LPIC30:
	add	r3, pc, r3
	mov	r2, #400
	str	r1, [r5, #20]
	str	r4, [r5, #24]
	str	r2, [r5, #32]
	mvn	r1, #0
	sxth	r0, r0
	str	r0, [r5, #28]
	add	r0, r3, #4
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	_Z16IwGxFontDrawTextPKci(PLT)
.L403:
	ldr	r3, .L415+24
	mov	r1, #1157627904
	mov	r6, #0
	ldr	r3, [r4, r3]
	ldr	r0, [r3]	@ float
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r2, .L415+20
	ldr	r3, .L415+28
	ldr	r1, .L415+44
	ldr	r7, [r4, r2]
	ldr	r5, [r7]
	str	r0, [r5, #48]
	str	r0, [r5, #52]
	ldr	r9, [r4, r3]
	ldr	r0, [r9]	@ float
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r3, .L415+36
	ldr	r8, [r4, r3]
	sxth	r10, r0
	ldr	r0, [r8]	@ float
	bl	__aeabi_f2iz(PLT)
	mov	r2, #200
	mov	r3, #1
	str	r2, [r5, #32]
	str	r3, [r5, #8]
	str	r10, [r5, #24]
	str	r6, [r5, #20]
	mvn	r1, #0
	sxth	r0, r0
	str	r0, [r5, #28]
	ldr	r0, .L415+48
.LPIC37:
	add	r0, pc, r0
	bl	_Z16IwGxFontDrawTextPKci(PLT)
	ldr	r1, .L415+32
	ldr	r0, [r9]	@ float
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	sxth	r5, r0
	ldr	r0, [r8]	@ float
	bl	__aeabi_f2iz(PLT)
	ldr	r3, [r7]
	ldr	r2, .L415+52
	mov	r1, #100
	str	r5, [r3, #24]
	ldr	r5, .L415+56
	str	r1, [r3, #32]
	str	r6, [r3, #20]
.LPIC38:
	add	r5, pc, r5
	ldr	r1, .L415+60
	add	r5, r5, #4
.LPIC39:
	add	r1, pc, r1
	sxth	r0, r0
	str	r0, [r3, #28]
	ldr	r3, [r4, r2]
	mov	r0, r5
	ldr	r2, [r3]
	bl	sprintf(PLT)
	mov	r0, r5
.L412:
	mvn	r1, #0
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	_Z16IwGxFontDrawTextPKci(PLT)
.L402:
	ldr	r0, .L415+64
	bl	_Z13Iw2DSetColourj(PLT)
	ldr	r3, .L415+28
	mov	fp, #0
	str	fp, [sp]	@ float
	str	fp, [sp, #4]	@ float
	ldr	r8, [r4, r3]
	ldr	r1, .L415+68
	add	r6, sp, #8
	ldr	r0, [r8]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, .L415+36
	mov	r9, #400
	ldr	r7, [r4, r3]
	ldr	r3, [r7]	@ float
	str	r3, [sp, #8]	@ float
	str	r0, [sp, #12]	@ float
	ldmia	sp, {r0, r1}
	ldmia	r6, {r2, r3}
	bl	_Z12Iw2DFillRect8CIwFVec2S_(PLT)
	ldr	r0, .L415+72
	bl	_Z13Iw2DSetColourj(PLT)
	ldr	r0, [r8]	@ float
	ldr	r1, .L415+68
	str	fp, [sp]	@ float
	str	fp, [sp, #4]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r3, [r5]
	ldr	r1, .L415+76
	ldr	r3, [r3, #16]
	mov	fp, r0
	ldr	r0, [r3, #280]	@ float
	bl	__aeabi_fdiv(PLT)
	ldr	r1, [r7]	@ float
	bl	__aeabi_fmul(PLT)
	str	fp, [sp, #12]	@ float
	str	r0, [sp, #8]	@ float
	ldmia	sp, {r0, r1}
	ldmia	r6, {r2, r3}
	bl	_Z12Iw2DFillRect8CIwFVec2S_(PLT)
	mvn	r0, #0
	bl	_Z13Iw2DSetColourj(PLT)
	ldr	r1, .L415+20
	ldr	r3, .L415+24
	mov	r2, #0
	ldr	r10, [r4, r1]
	ldr	r1, .L415+80
	ldr	r5, [r10]
	str	r2, [r5, #8]
	ldr	r3, [r4, r3]
	ldr	r0, [r3]	@ float
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r1, .L415+84
	str	r0, [r5, #48]
	str	r0, [r5, #52]
	ldr	r0, [r8]	@ float
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r6, [r7]	@ float
	ldr	r1, .L415+84
	sxth	fp, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	str	fp, [r5, #24]
	sxth	r0, r0
	str	r0, [r5, #20]
	mov	r0, r6
	bl	__aeabi_f2iz(PLT)
	ldr	r3, .L415+52
	ldr	r6, .L415+88
	str	r9, [r5, #32]
.LPIC31:
	add	r6, pc, r6
	ldr	r1, .L415+92
	add	r6, r6, #4
.LPIC32:
	add	r1, pc, r1
	sxth	r0, r0
	str	r0, [r5, #28]
	ldr	r3, [r4, r3]
	mov	r0, r6
	ldr	r2, [r3]
	bl	sprintf(PLT)
	mov	r0, r6
	mvn	r1, #0
	bl	_Z16IwGxFontDrawTextPKci(PLT)
	ldr	r0, [r8]	@ float
	ldr	r1, .L415+96
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	ldr	r7, [r7]	@ float
	ldr	r1, .L415+84
	ldr	r5, [r10]
	sxth	r8, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	bl	__aeabi_f2iz(PLT)
	str	r8, [r5, #24]
	sxth	r0, r0
	str	r0, [r5, #20]
	mov	r0, r7
	bl	__aeabi_f2iz(PLT)
	ldr	r3, .L415+100
	str	r9, [r5, #32]
	ldr	r1, .L415+104
.LPIC35:
	add	r1, pc, r1
	sxth	r0, r0
	str	r0, [r5, #28]
	ldr	r3, [r4, r3]
	mov	r0, r6
	ldr	r2, [r3]
	bl	sprintf(PLT)
	mov	r0, r6
	b	.L412
.L414:
	ldr	r3, .L415+108
	ldr	r2, .L415+112
.LPIC27:
	add	r3, pc, r3
	str	r2, [r3, #4]
	b	.L407
.L416:
	.align	2
.L415:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC26+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	1077936128
	.word	.LANCHOR1-(.LPIC28+8)
	.word	.LC11-(.LPIC29+8)
	.word	g_IwGxFontState(GOT)
	.word	_ZN10GameSprite11g_zoomLevelE(GOT)
	.word	_ZN4Game16g_viewportHeightE(GOT)
	.word	1055286886
	.word	_ZN4Game15g_viewportWidthE(GOT)
	.word	.LANCHOR1-(.LPIC30+8)
	.word	1050253722
	.word	.LC14-(.LPIC37+8)
	.word	_ZN5Enemy15g_enemiesKilledE(GOT)
	.word	.LANCHOR1-(.LPIC38+8)
	.word	.LC15-(.LPIC39+8)
	.word	-14540118
	.word	1020054733
	.word	-14505438
	.word	1120403456
	.word	1149239296
	.word	1028443341
	.word	.LANCHOR1-(.LPIC31+8)
	.word	.LC12-(.LPIC32+8)
	.word	1036831949
	.word	_ZN4Game9highscoreE(GOT)
	.word	.LC13-(.LPIC35+8)
	.word	.LANCHOR1-(.LPIC27+8)
	.word	2182983
	.size	_ZN8GameView6RenderEv, .-_ZN8GameView6RenderEv
	.hidden	_ZTS8GameView
	.global	_ZTS8GameView
	.hidden	_ZTI8GameView
	.global	_ZTI8GameView
	.hidden	_ZTV8GameView
	.global	_ZTV8GameView
	.section	.rodata
	.align	2
	.type	_ZTS8GameView, %object
	.size	_ZTS8GameView, 10
_ZTS8GameView:
	.ascii	"8GameView\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV8GameView, %object
	.size	_ZTV8GameView, 40
_ZTV8GameView:
	.word	0
	.word	_ZTI8GameView
	.word	_ZN8GameViewD1Ev
	.word	_ZN8GameViewD0Ev
	.word	_ZN8GameView5EnterEv
	.word	_ZN8GameView6UpdateEf
	.word	_ZN8GameView6RenderEv
	.word	_ZN8GameView12UpdateLayoutEv
	.word	_ZN8GameView4ExitEv
	.word	_ZN4View11HandleEventE9EventType
	.type	_ZTI8GameView, %object
	.size	_ZTI8GameView, 12
_ZTI8GameView:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS8GameView
	.word	_ZTI4View
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"mover\000"
	.space	2
.LC1:
	.ascii	"CIwTexture\000"
	.space	1
.LC2:
	.ascii	"mover_pressed\000"
	.space	2
.LC3:
	.ascii	"restartbtn_normal\000"
	.space	2
.LC4:
	.ascii	"restartbtn_pressed\000"
	.space	1
.LC5:
	.ascii	"continueplaying\000"
.LC6:
	.ascii	"bgm_ingame\000"
	.space	1
.LC7:
	.ascii	"CIwSoundSpec\000"
	.space	3
.LC8:
	.ascii	"fonts\000"
	.space	2
.LC9:
	.ascii	"ArialBold8\000"
	.space	1
.LC10:
	.ascii	"CIwGxFont\000"
	.space	2
.LC11:
	.ascii	"%i\000"
	.space	1
.LC12:
	.ascii	"Kills: %u\000"
	.space	2
.LC13:
	.ascii	"Highscore: %u\000"
	.space	2
.LC14:
	.ascii	"Game over!\000"
	.space	1
.LC15:
	.ascii	"Kill count: %u\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZL16bgmMusicInstance, %object
	.size	_ZL16bgmMusicInstance, 4
_ZL16bgmMusicInstance:
	.space	4
	.type	_ZZN8GameView6RenderEvE12stringBuffer, %object
	.size	_ZZN8GameView6RenderEvE12stringBuffer, 128
_ZZN8GameView6RenderEvE12stringBuffer:
	.space	128
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
