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
	.file	"Bullet.cpp"
	.section	.text._ZN6BulletD2Ev,"ax",%progbits
	.align	2
	.global	_ZN6BulletD2Ev
	.hidden	_ZN6BulletD2Ev
	.type	_ZN6BulletD2Ev, %function
_ZN6BulletD2Ev:
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
	.size	_ZN6BulletD2Ev, .-_ZN6BulletD2Ev
	.global	_ZN6BulletD1Ev
	.hidden	_ZN6BulletD1Ev
	.set	_ZN6BulletD1Ev,_ZN6BulletD2Ev
	.section	.text._ZN6BulletD0Ev,"ax",%progbits
	.align	2
	.global	_ZN6BulletD0Ev
	.hidden	_ZN6BulletD0Ev
	.type	_ZN6BulletD0Ev, %function
_ZN6BulletD0Ev:
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
	.size	_ZN6BulletD0Ev, .-_ZN6BulletD0Ev
	.section	.text._ZN6Bullet16HandleCollisionsEv,"ax",%progbits
	.align	2
	.global	_ZN6Bullet16HandleCollisionsEv
	.hidden	_ZN6Bullet16HandleCollisionsEv
	.type	_ZN6Bullet16HandleCollisionsEv, %function
_ZN6Bullet16HandleCollisionsEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r1, r0
	ldr	r3, .L18
	ldr	r2, .L18+4
.LPIC10:
	add	r3, pc, r3
	mov	r4, r0
	ldr	r5, [r3, r2]
	ldr	r0, [r5]
	bl	_ZN16CollisionManager13HasCollisionsEP10GameSprite(PLT)
	cmp	r0, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	ldr	r0, [r5]
	mov	r1, r4
	bl	_ZN16CollisionManager13GetCollisionsEP10GameSprite(PLT)
	ldmia	r0, {r3, ip}
	cmp	r3, ip
	bne	.L14
	ldmfd	sp!, {r3, r4, r5, pc}
.L13:
	add	r3, r3, #20
	cmp	r3, ip
	beq	.L17
.L14:
	ldr	r2, [r3, #4]
	cmp	r2, #4
	cmpne	r2, #1
	bne	.L13
	mov	r3, #0
	strb	r3, [r4, #232]
	ldmfd	sp!, {r3, r4, r5, pc}
.L17:
	ldmfd	sp!, {r3, r4, r5, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.size	_ZN6Bullet16HandleCollisionsEv, .-_ZN6Bullet16HandleCollisionsEv
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L80
.L117:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L80
.L123:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
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
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN6BulletC2E8CIwFVec2S0_,"ax",%progbits
	.align	2
	.global	_ZN6BulletC2E8CIwFVec2S0_
	.hidden	_ZN6BulletC2E8CIwFVec2S0_
	.type	_ZN6BulletC2E8CIwFVec2S0_, %function
_ZN6BulletC2E8CIwFVec2S0_:
	@ args = 12, pretend = 8, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	mov	r4, r0
	stmia	sp, {r1, r2}
	str	r3, [sp, #52]
	ldr	r7, .L145
	bl	_ZN10GameSpriteC2Ev(PLT)
	ldr	r2, .L145+4
	ldmia	sp, {r0, r1}
.LPIC12:
	add	r2, pc, r2
	add	r3, r4, #252
	ldr	lr, [sp, #52]	@ float
	ldr	ip, [sp, #56]	@ float
.LPIC11:
	add	r7, pc, r7
	ldr	r6, .L145+8
	mov	r5, #0
	add	r7, r7, #8
	str	r7, [r4]
	str	r6, [r4, #244]	@ float
	str	r5, [r4, #248]	@ float
	stmia	r3, {r0, r1}
	ldr	r1, [r2]
	mov	r0, r4
	str	lr, [r4, #4]	@ float
	str	ip, [r4, #8]	@ float
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r3, .L145+12
	ldr	r2, .L145+16
.LPIC13:
	add	r3, pc, r3
	ldr	r0, .L145+20
	mov	r1, #1
	str	r0, [r4, #236]	@ float
	str	r1, [r4, #240]
	ldr	r2, [r3, r2]
	ldr	r2, [r2]
	ldrb	r2, [r2, #20]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L144
.L141:
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	add	sp, sp, #8
	bx	lr
.L144:
	ldr	r0, .L145+24
	ldr	r2, .L145+28
	ldr	r1, .L145+32
	ldr	r0, [r3, r0]
	ldr	r3, [r3, r2]
	ldr	r2, .L145+36
	ldr	r5, [r0]
	ldr	r0, [r3]
.LPIC14:
	add	r1, pc, r1
	ldr	ip, [r5]
.LPIC15:
	add	r2, pc, r2
	str	ip, [r0, #100]
	mov	r3, #0
	ldr	r0, [r5]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	mov	r1, #0
	bl	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams(PLT)
	subs	r7, r0, #0
	beq	.L141
	ldr	r1, [r5, #4]
	ldr	ip, [r5, #16]
	mov	r6, r1
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L133
.L137:
	ldr	r2, [r3, #16]
	cmp	ip, r2
	movls	r6, r3
	ldrhi	r3, [r3, #12]
	ldrls	r3, [r3, #8]
	cmp	r3, #0
	bne	.L137
	cmp	r1, r6
	beq	.L133
	ldr	r3, [r6, #16]
	cmp	ip, r3
	bcs	.L138
.L133:
	mov	lr, #0
	add	r0, sp, #12
	add	r1, r5, #4
	add	r2, sp, #8
	add	r3, sp, #16
	str	r6, [sp, #8]
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	r6, [sp, #12]
.L138:
	str	r7, [r6, #20]
	ldr	r3, [r5, #16]
	add	r3, r3, #1
	str	r3, [r5, #16]
	b	.L141
.L146:
	.align	2
.L145:
	.word	.LANCHOR0-(.LPIC11+8)
	.word	.LANCHOR1-(.LPIC12+8)
	.word	1125515264
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+8)
	.word	_ZN4Game10g_instanceE(GOT)
	.word	1077936128
	.word	_ZN12AudioManager9singletonE(GOT)
	.word	g_IwResManager(GOT)
	.word	.LC0-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.size	_ZN6BulletC2E8CIwFVec2S0_, .-_ZN6BulletC2E8CIwFVec2S0_
	.global	_ZN6BulletC1E8CIwFVec2S0_
	.hidden	_ZN6BulletC1E8CIwFVec2S0_
	.set	_ZN6BulletC1E8CIwFVec2S0_,_ZN6BulletC2E8CIwFVec2S0_
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.global	__aeabi_fcmpgt
	.section	.text._ZN6Bullet6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN6Bullet6UpdateEff
	.hidden	_ZN6Bullet6UpdateEff
	.type	_ZN6Bullet6UpdateEff, %function
_ZN6Bullet6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r6, [r0, #244]	@ float
	mov	r5, r1
	mov	r0, r1
	ldr	r1, [r4, #256]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #252]	@ float
	mov	r7, r0
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	ldr	r0, [r4, #4]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r7
	ldr	r7, .L162
.LPIC16:
	add	r7, pc, r7
	str	r0, [r4, #4]	@ float
	ldr	r0, [r4, #8]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r6
	str	r0, [r4, #8]	@ float
	mov	r0, r5
	bl	__aeabi_fmul(PLT)
	ldr	r1, [r4, #248]	@ float
	bl	__aeabi_fadd(PLT)
	ldr	r1, .L162+4
	str	r0, [r4, #248]	@ float
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	bne	.L148
	ldrb	r3, [r4, #232]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L149
.L148:
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
.L149:
	ldr	r3, .L162+8
	mov	r1, r4
	ldr	r6, [r7, r3]
	ldr	r0, [r6]
	bl	_ZN16CollisionManager13HasCollisionsEP10GameSprite(PLT)
	cmp	r0, #0
	bne	.L161
.L151:
	mov	r0, r4
	mov	r1, r5
	mov	r2, #1065353216
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	b	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff(PLT)
.L161:
	mov	r1, r4
	ldr	r0, [r6]
	bl	_ZN16CollisionManager13GetCollisionsEP10GameSprite(PLT)
	ldr	r3, [r0]
	ldr	r1, [r0, #4]
	cmp	r3, r1
	bne	.L156
	b	.L151
.L155:
	add	r3, r3, #20
	cmp	r3, r1
	beq	.L151
.L156:
	ldr	r2, [r3, #4]
	cmp	r2, #4
	cmpne	r2, #1
	bne	.L155
	mov	r3, #0
	strb	r3, [r4, #232]
	b	.L151
.L163:
	.align	2
.L162:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+8)
	.word	1128792064
	.word	_ZN16CollisionManager9singletonE(GOT)
	.size	_ZN6Bullet6UpdateEff, .-_ZN6Bullet6UpdateEff
	.hidden	_ZTS6Bullet
	.global	_ZTS6Bullet
	.hidden	_ZTI6Bullet
	.global	_ZTI6Bullet
	.hidden	_ZTV6Bullet
	.global	_ZTV6Bullet
	.hidden	_ZN6Bullet7g_imageE
	.global	_ZN6Bullet7g_imageE
	.section	.rodata
	.align	2
	.type	_ZTS6Bullet, %object
	.size	_ZTS6Bullet, 8
_ZTS6Bullet:
	.ascii	"6Bullet\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV6Bullet, %object
	.size	_ZTV6Bullet, 28
_ZTV6Bullet:
	.word	0
	.word	_ZTI6Bullet
	.word	_ZN6BulletD1Ev
	.word	_ZN6BulletD0Ev
	.word	_ZN6Bullet6UpdateEff
	.word	_ZN10GameSprite6RenderEv
	.word	_ZN10GameSprite7DestroyEv
	.type	_ZTI6Bullet, %object
	.size	_ZTI6Bullet, 12
_ZTI6Bullet:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS6Bullet
	.word	_ZTI10GameSprite
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"tank_shoot\000"
	.space	1
.LC1:
	.ascii	"CIwSoundSpec\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZN6Bullet7g_imageE, %object
	.size	_ZN6Bullet7g_imageE, 4
_ZN6Bullet7g_imageE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
