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
	.file	"Enemy.cpp"
	.section	.text._ZN5EnemyD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5EnemyD2Ev
	.hidden	_ZN5EnemyD2Ev
	.type	_ZN5EnemyD2Ev, %function
_ZN5EnemyD2Ev:
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
	.size	_ZN5EnemyD2Ev, .-_ZN5EnemyD2Ev
	.global	_ZN5EnemyD1Ev
	.hidden	_ZN5EnemyD1Ev
	.set	_ZN5EnemyD1Ev,_ZN5EnemyD2Ev
	.section	.text._ZN5EnemyD0Ev,"ax",%progbits
	.align	2
	.global	_ZN5EnemyD0Ev
	.hidden	_ZN5EnemyD0Ev
	.type	_ZN5EnemyD0Ev, %function
_ZN5EnemyD0Ev:
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
	.size	_ZN5EnemyD0Ev, .-_ZN5EnemyD0Ev
	.section	.text._ZN5EnemyC2E8CIwFVec2,"ax",%progbits
	.align	2
	.global	_ZN5EnemyC2E8CIwFVec2
	.hidden	_ZN5EnemyC2E8CIwFVec2
	.type	_ZN5EnemyC2E8CIwFVec2, %function
_ZN5EnemyC2E8CIwFVec2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	add	r3, sp, #8
	mov	r4, r0
	stmdb	r3, {r1, r2}
	ldr	r5, .L8
	bl	_ZN10GameSpriteC2Ev(PLT)
	ldr	ip, .L8+4
.LPIC3:
	add	r5, pc, r5
	ldr	r2, [sp]	@ float
	ldr	r3, [sp, #4]	@ float
	ldr	r0, .L8+8
.LPIC2:
	add	ip, pc, ip
	add	ip, ip, #8
	mov	r1, #2
	str	ip, [r4]
	str	r0, [r4, #244]	@ float
	str	r1, [r4, #248]
	str	r2, [r4, #4]	@ float
	str	r3, [r4, #8]	@ float
	ldr	r1, [r5]
	mov	r0, r4
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, [r5, #4]
	ldr	r1, .L8+12
	mov	r2, #4
	add	r3, r3, #1
	mov	r0, r4
	str	r1, [r4, #236]	@ float
	str	r2, [r4, #240]
	str	r3, [r5, #4]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
.L9:
	.align	2
.L8:
	.word	.LANCHOR1-(.LPIC3+8)
	.word	.LANCHOR0-(.LPIC2+8)
	.word	1106247680
	.word	1093664768
	.size	_ZN5EnemyC2E8CIwFVec2, .-_ZN5EnemyC2E8CIwFVec2
	.global	_ZN5EnemyC1E8CIwFVec2
	.hidden	_ZN5EnemyC1E8CIwFVec2
	.set	_ZN5EnemyC1E8CIwFVec2,_ZN5EnemyC2E8CIwFVec2
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
	beq	.L11
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L21
.L12:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L22
.L16:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L14:
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
.L21:
	cmp	r2, #0
	beq	.L23
.L11:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L24
.L18:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L25
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L14
.L25:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L14
.L24:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L18
.L22:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L16
.L23:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L11
	b	.L12
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
	beq	.L102
	cmp	ip, r8
	beq	.L103
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L104
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L105
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L63
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L64
.L63:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L96
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L26
.L104:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L106
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L107
.L98:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L26:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L103:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L108
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L57
	b	.L118
.L109:
	mov	r4, r0
.L57:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L109
	cmp	r1, #0
	beq	.L87
	cmp	r2, r4
	beq	.L110
.L53:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L58:
	cmp	r8, r3
	bhi	.L111
.L71:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L106:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L64:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L79
	ldr	r0, [r6]
	b	.L68
.L112:
	mov	r4, r3
.L68:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L112
	cmp	r1, #0
	moveq	r3, r4
	bne	.L79
.L69:
	cmp	r0, r2
	bls	.L71
.L99:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L71
.L108:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L102:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L113
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L114
	strls	ip, [r0]
	bls	.L26
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L115
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L41
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L42
.L96:
	mov	r2, r0
	b	.L98
.L87:
	mov	ip, r4
	b	.L58
.L107:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L26
.L113:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L80
	ldr	r0, [r6]
	b	.L33
.L116:
	mov	r4, r3
.L33:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L116
	cmp	r1, #0
	moveq	r3, r4
	bne	.L29
.L34:
	cmp	r2, r0
	bcs	.L71
	b	.L99
.L79:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L101
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L69
.L111:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L71
.L114:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L26
.L80:
	mov	r4, r8
.L29:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L100
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L34
.L118:
	mov	r4, ip
	b	.L53
.L41:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L47
	b	.L119
.L117:
	mov	r4, r3
.L47:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L117
	cmp	r0, #0
	moveq	r3, r4
	bne	.L43
.L48:
	cmp	r2, r1
	bcs	.L71
	b	.L99
.L110:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L71
.L115:
	ldr	r3, [r4]
.L42:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L26
.L101:
	mov	r2, r4
.L100:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L71
.L119:
	mov	r4, ip
.L43:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L101
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L48
.L105:
	str	r3, [r5]
	b	.L26
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.section	.text._ZN5Enemy16HandleCollisionsEv,"ax",%progbits
	.align	2
	.global	_ZN5Enemy16HandleCollisionsEv
	.hidden	_ZN5Enemy16HandleCollisionsEv
	.type	_ZN5Enemy16HandleCollisionsEv, %function
_ZN5Enemy16HandleCollisionsEv:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, r0
	ldr	r7, .L159
	ldr	r3, .L159+4
.LPIC22:
	add	r7, pc, r7
	sub	sp, sp, #44
	ldr	r4, [r7, r3]
	mov	r6, r0
	ldr	r0, [r4]
	bl	_ZN16CollisionManager13HasCollisionsEP10GameSprite(PLT)
	cmp	r0, #0
	bne	.L154
.L120:
	add	sp, sp, #44
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L154:
	ldr	r0, [r4]
	mov	r1, r6
	bl	_ZN16CollisionManager13GetCollisionsEP10GameSprite(PLT)
	ldr	r8, [r0]
	ldr	r2, [r0, #4]
	cmp	r8, r2
	beq	.L120
	ldr	r1, .L159+8
	ldr	r3, .L159+12
.LPIC29:
	add	r1, pc, r1
	str	r1, [sp, #16]
	ldr	r1, .L159+16
.LPIC30:
	add	r3, pc, r3
.LPIC25:
	add	r1, pc, r1
	str	r3, [sp, #20]
	str	r1, [sp, #12]
	add	r5, r8, #20
	mov	r4, r8
	str	r0, [sp, #8]
	b	.L141
.L123:
	sub	r3, r3, #3
	cmp	r3, #1
	bls	.L155
.L124:
	add	r4, r4, #20
	cmp	r4, r2
	add	r5, r5, #20
	beq	.L120
.L141:
	ldr	r3, [r5, #-16]
	cmp	r3, #1
	bne	.L123
	ldr	r3, [r4, #8]
	ldrb	r3, [r3, #232]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L124
	ldr	fp, [r6, #248]
	ldr	r3, .L159+20
	sub	fp, fp, #1
	cmp	fp, #0
	str	fp, [r6, #248]
	bne	.L125
	ldr	r9, [r7, r3]
	ldr	r0, [r9]
	ldrb	r3, [r0, #20]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L156
.L126:
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #12]
	ldmib	r3, {r2, r3}
	sub	r2, r2, #1
	str	r2, [r1, #4]
	mov	r2, #0
	add	r3, r3, #1
	strb	r2, [r6, #232]
	str	r3, [r1, #8]
	bl	_ZN4Game10SpawnEnemyEv(PLT)
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #4]
	b	.L124
.L155:
	rsb	r3, r8, r4
	add	fp, r8, #12
	add	r1, r3, fp
	ldr	r2, [r5, #-20]	@ float
	ldr	r1, [r1, #4]	@ float
	mov	r0, r2
	mov	r9, r3
	str	r2, [sp, #4]
	bl	__aeabi_fmul(PLT)
	mov	r1, #-1090519040
	bl	__aeabi_fmul(PLT)
	ldr	r2, [sp, #4]
	ldr	r1, [r9, fp]	@ float
	mov	r10, r0
	mov	r0, r2
	bl	__aeabi_fmul(PLT)
	mov	r1, #-1090519040
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r6, #4]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r10
	str	r0, [r6, #4]	@ float
	ldr	r0, [r6, #8]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, [sp, #8]
	str	r0, [r6, #8]	@ float
	ldr	r2, [r1, #4]
	b	.L124
.L125:
	ldr	r3, [r7, r3]
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L157
.L133:
	cmp	fp, #2
	ldr	r3, [sp, #8]
	ldreq	r1, .L159+24
	ldrne	r1, .L159+28
	str	r1, [r6, #228]
	ldr	r2, [r3, #4]
	b	.L124
.L157:
	ldr	r2, .L159+32
	ldr	r3, .L159+36
	ldr	r1, [sp, #16]
	ldr	r0, [r7, r2]
	ldr	r3, [r7, r3]
	ldr	r2, [sp, #20]
	ldr	fp, [r0]
	ldr	r0, [r3]
	mov	r3, #0
	ldr	ip, [fp]
	str	ip, [r0, #100]
	ldr	r0, [fp]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	mov	r1, #0
	bl	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams(PLT)
	subs	r9, r0, #0
	beq	.L153
	ldr	r0, [fp, #4]
	ldr	r2, [fp, #16]
	mov	ip, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L135
.L139:
	ldr	r1, [r3, #16]
	cmp	r2, r1
	movls	ip, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L139
	cmp	r0, ip
	beq	.L135
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcs	.L143
.L135:
	mov	lr, #0
	str	r2, [sp, #32]
	add	r0, sp, #28
	add	r1, fp, #4
	add	r2, sp, #24
	add	r3, sp, #32
	str	ip, [sp, #24]
	str	lr, [sp, #36]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #28]
.L143:
	str	r9, [ip, #20]
	ldr	r3, [fp, #16]
	add	r3, r3, #1
	str	r3, [fp, #16]
.L153:
	ldr	fp, [r6, #248]
	b	.L133
.L156:
	ldr	r2, .L159+32
	ldr	r3, .L159+36
	ldr	r1, .L159+40
	ldr	r0, [r7, r2]
	ldr	r3, [r7, r3]
	ldr	r2, .L159+44
	ldr	ip, [r0]
	ldr	r0, [r3]
.LPIC23:
	add	r1, pc, r1
	ldr	lr, [ip]
	mov	r3, fp
	str	lr, [r0, #100]
.LPIC24:
	add	r2, pc, r2
	ldr	r0, [ip]
	str	ip, [sp, #4]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	mov	r1, fp
	bl	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams(PLT)
	ldr	ip, [sp, #4]
	subs	fp, r0, #0
	beq	.L158
	ldr	lr, [ip, #4]
	ldr	r2, [ip, #16]
	mov	r3, lr
	ldr	r1, [lr, #4]
	cmp	r1, #0
	beq	.L128
.L132:
	ldr	r0, [r1, #16]
	cmp	r2, r0
	movls	r3, r1
	ldrhi	r1, [r1, #12]
	ldrls	r1, [r1, #8]
	cmp	r1, #0
	bne	.L132
	cmp	lr, r3
	beq	.L128
	ldr	r1, [r3, #16]
	cmp	r2, r1
	bcs	.L142
.L128:
	mov	lr, #0
	add	r1, ip, #4
	str	r2, [sp, #32]
	str	r3, [sp, #24]
	add	r0, sp, #28
	add	r3, sp, #32
	add	r2, sp, #24
	str	ip, [sp, #4]
	str	lr, [sp, #36]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r3, [sp, #28]
	ldr	ip, [sp, #4]
.L142:
	str	fp, [r3, #20]
	ldr	r3, [ip, #16]
	ldr	r0, [r9]
	add	r3, r3, #1
	str	r3, [ip, #16]
	b	.L126
.L158:
	ldr	r0, [r9]
	b	.L126
.L160:
	.align	2
.L159:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.word	.LC2-(.LPIC29+8)
	.word	.LC1-(.LPIC30+8)
	.word	.LANCHOR1-(.LPIC25+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	-5592355
	.word	-8947798
	.word	_ZN12AudioManager9singletonE(GOT)
	.word	g_IwResManager(GOT)
	.word	.LC0-(.LPIC23+8)
	.word	.LC1-(.LPIC24+8)
	.size	_ZN5Enemy16HandleCollisionsEv, .-_ZN5Enemy16HandleCollisionsEv
	.global	__aeabi_fsub
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.section	.text._ZN5Enemy6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN5Enemy6UpdateEff
	.hidden	_ZN5Enemy6UpdateEff
	.type	_ZN5Enemy6UpdateEff, %function
_ZN5Enemy6UpdateEff:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L164
	ldr	r2, .L164+4
.LPIC31:
	add	r3, pc, r3
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	ldr	r2, [r3, r2]
	mov	r6, r0
	mov	r7, r1
	ldr	r3, [r2]
	ldr	r1, [r0, #8]	@ float
	ldr	r4, [r3, #16]
	ldr	r0, [r4, #8]	@ float
	bl	__aeabi_fsub(PLT)
	ldr	r1, [r6, #4]	@ float
	mov	r5, r0
	ldr	r0, [r4, #4]	@ float
	bl	__aeabi_fsub(PLT)
	str	r5, [sp, #4]	@ float
	str	r0, [sp]	@ float
	mov	r0, sp
	bl	_ZNK8CIwFVec29GetLengthEv(PLT)
	mov	r1, r0
	mov	r0, #1065353216
	bl	__aeabi_fdiv(PLT)
	ldr	r1, [sp]	@ float
	mov	r4, r0
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #4]	@ float
	mov	r8, r0
	mov	r0, r4
	str	r8, [sp]	@ float
	bl	__aeabi_fmul(PLT)
	ldr	r5, [r6, #244]	@ float
	mov	r1, r8
	mov	r4, r0
	mov	r0, r5
	str	r4, [sp, #4]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r6, #4]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r4
	str	r0, [r6, #4]	@ float
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r6, #8]	@ float
	bl	__aeabi_fadd(PLT)
	str	r0, [r6, #8]	@ float
	mov	r0, r4
	bl	__aeabi_f2d(PLT)
	mov	r4, r0
	mov	r0, r8
	mov	r5, r1
	bl	__aeabi_f2d(PLT)
	mov	r3, r1
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	bl	atan2(PLT)
	bl	__aeabi_d2f(PLT)
	ldr	r1, .L164+8
	bl	__aeabi_fadd(PLT)
	ldrb	r3, [r6, #232]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [r6, #36]	@ float
	bne	.L163
	ldr	r3, [r6]
	mov	r0, r6
	ldr	r3, [r3, #16]
	blx	r3
.L163:
	mov	r0, r6
	bl	_ZN5Enemy16HandleCollisionsEv(PLT)
	mov	r0, r6
	mov	r1, r7
	mov	r2, #1065353216
	bl	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff(PLT)
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L165:
	.align	2
.L164:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	1070141403
	.size	_ZN5Enemy6UpdateEff, .-_ZN5Enemy6UpdateEff
	.hidden	_ZTS5Enemy
	.global	_ZTS5Enemy
	.hidden	_ZTI5Enemy
	.global	_ZTI5Enemy
	.hidden	_ZTV5Enemy
	.global	_ZTV5Enemy
	.hidden	_ZN5Enemy14g_enemiesAliveE
	.global	_ZN5Enemy14g_enemiesAliveE
	.hidden	_ZN5Enemy15g_enemiesKilledE
	.global	_ZN5Enemy15g_enemiesKilledE
	.hidden	_ZN5Enemy7g_imageE
	.global	_ZN5Enemy7g_imageE
	.section	.rodata
	.align	2
	.type	_ZTS5Enemy, %object
	.size	_ZTS5Enemy, 7
_ZTS5Enemy:
	.ascii	"5Enemy\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV5Enemy, %object
	.size	_ZTV5Enemy, 28
_ZTV5Enemy:
	.word	0
	.word	_ZTI5Enemy
	.word	_ZN5EnemyD1Ev
	.word	_ZN5EnemyD0Ev
	.word	_ZN5Enemy6UpdateEff
	.word	_ZN10GameSprite6RenderEv
	.word	_ZN10GameSprite7DestroyEv
	.type	_ZTI5Enemy, %object
	.size	_ZTI5Enemy, 12
_ZTI5Enemy:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS5Enemy
	.word	_ZTI10GameSprite
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"enemy_dead\000"
	.space	1
.LC1:
	.ascii	"CIwSoundSpec\000"
	.space	3
.LC2:
	.ascii	"enemy_hit\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZN5Enemy7g_imageE, %object
	.size	_ZN5Enemy7g_imageE, 4
_ZN5Enemy7g_imageE:
	.space	4
	.type	_ZN5Enemy14g_enemiesAliveE, %object
	.size	_ZN5Enemy14g_enemiesAliveE, 4
_ZN5Enemy14g_enemiesAliveE:
	.space	4
	.type	_ZN5Enemy15g_enemiesKilledE, %object
	.size	_ZN5Enemy15g_enemiesKilledE, 4
_ZN5Enemy15g_enemiesKilledE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
