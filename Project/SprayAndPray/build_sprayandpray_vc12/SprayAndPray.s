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
	.file	"SprayAndPray.cpp"
	.section	.text._Z10ResumeGamev,"ax",%progbits
	.align	2
	.global	_Z10ResumeGamev
	.hidden	_Z10ResumeGamev
	.type	_Z10ResumeGamev, %function
_Z10ResumeGamev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L4
.LPIC0:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	ldr	r3, .L4+4
	mov	r1, r4
.LPIC1:
	add	r3, pc, r3
	ldmfd	sp!, {r4, lr}
	ldr	r0, [r3]
	b	_ZN4Game12InitFromFileEPKc(PLT)
.L5:
	.align	2
.L4:
	.word	.LC0-(.LPIC0+8)
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_Z10ResumeGamev, .-_Z10ResumeGamev
	.section	.text._Z8ExitGamev,"ax",%progbits
	.align	2
	.global	_Z8ExitGamev
	.hidden	_Z8ExitGamev
	.type	_Z8ExitGamev, %function
_Z8ExitGamev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L13
	stmfd	sp!, {r4, lr}
.LPIC3:
	add	r3, pc, r3
	ldr	r3, [r3]
	ldr	r3, [r3]
	sub	r3, r3, #4
	cmp	r3, #1
	ldmlsfd	sp!, {r4, pc}
	ldr	r4, .L13+4
.LPIC4:
	add	r4, pc, r4
	mov	r0, r4
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	b	s3eFileDelete(PLT)
.L14:
	.align	2
.L13:
	.word	.LANCHOR0-(.LPIC3+8)
	.word	.LC0-(.LPIC4+8)
	.size	_Z8ExitGamev, .-_Z8ExitGamev
	.section	.text._Z11SuspendGamev,"ax",%progbits
	.align	2
	.global	_Z11SuspendGamev
	.hidden	_Z11SuspendGamev
	.type	_Z11SuspendGamev, %function
_Z11SuspendGamev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L32
	ldr	r4, .L32+4
.LPIC6:
	add	r5, pc, r5
.LPIC7:
	add	r4, pc, r4
	ldr	r0, [r5]
	ldr	r3, [r0]
	cmp	r3, #4
	ldmnefd	sp!, {r3, r4, r5, pc}
	mov	r1, #5
	bl	_ZN4Game8SetStateE9GameState(PLT)
	ldr	r3, .L32+8
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	bl	_ZN15CIwSoundManager7StopAllEv(PLT)
	ldr	r0, [r5]
	bl	_ZN4Game17SaveInternalStateEv(PLT)
	ldr	r3, .L32+12
	ldr	r3, [r4, r3]
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L18
	mov	r0, r4
	bl	_ZN16CollisionManagerD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L18:
	ldr	r4, .L32+16
.LPIC9:
	add	r4, pc, r4
	ldr	r3, [r4]
	ldr	r0, [r3, #32]
	cmp	r0, #0
	beq	.L19
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r4]
.L19:
	ldr	r0, [r3, #36]
	cmp	r0, #0
	beq	.L20
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, .L32+20
.LPIC11:
	add	r3, pc, r3
	ldr	r3, [r3]
.L20:
	ldr	r0, [r3, #40]
	cmp	r0, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L33:
	.align	2
.L32:
	.word	.LANCHOR0-(.LPIC6+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	g_IwSoundManager(GOT)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.word	.LANCHOR0-(.LPIC9+8)
	.word	.LANCHOR0-(.LPIC11+8)
	.size	_Z11SuspendGamev, .-_Z11SuspendGamev
	.section	.text._ZN12AudioManagerC2Ev,"axG",%progbits,_ZN12AudioManagerC5Ev,comdat
	.align	2
	.weak	_ZN12AudioManagerC2Ev
	.hidden	_ZN12AudioManagerC2Ev
	.type	_ZN12AudioManagerC2Ev, %function
_ZN12AudioManagerC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	str	r3, [r0, #4]
	mov	r0, #24
	bl	malloc(PLT)
	ldr	r6, .L37
.LPIC12:
	add	r6, pc, r6
	cmp	r0, #0
	beq	.L36
.L35:
	mov	r5, #0
	stmib	r4, {r0, r5}
	strb	r5, [r0]
	ldr	r3, [r4, #4]
	str	r5, [r3, #4]
	ldr	r3, [r4, #4]
	str	r3, [r3, #8]
	ldr	r3, [r4, #4]
	str	r3, [r3, #12]
	bl	_Z11IwSoundInitv(PLT)
	ldr	r3, .L37+4
	mov	r0, #212
	ldr	r6, [r6, r3]
	ldr	r8, [r6]
	bl	_Znwj(PLT)
	mov	r7, r0
	bl	_ZN16CIwResHandlerWAVC1Ev(PLT)
	mov	r0, r8
	mov	r1, r7
	bl	_ZN13CIwResManager10AddHandlerEP13CIwResHandler(PLT)
	ldr	r1, .L37+8
	ldr	r0, [r6]
	mov	r2, r5
.LPIC13:
	add	r1, pc, r1
	bl	_ZN13CIwResManager9LoadGroupEPKcb(PLT)
	str	r0, [r4]
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L36:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L35
.L38:
	.align	2
.L37:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+8)
	.word	g_IwResManager(GOT)
	.word	.LC1-(.LPIC13+8)
	.size	_ZN12AudioManagerC2Ev, .-_ZN12AudioManagerC2Ev
	.weak	_ZN12AudioManagerC1Ev
	.hidden	_ZN12AudioManagerC1Ev
	.set	_ZN12AudioManagerC1Ev,_ZN12AudioManagerC2Ev
	.section	.text._ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE,"axG",%progbits,_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE
	.hidden	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE
	.type	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE, %function
_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	cmp	r1, #0
	str	r1, [sp, #12]
	mov	r4, r0
	beq	.L39
.L74:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	str	r3, [sp, #4]
	beq	.L46
.L73:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	str	r3, [sp, #8]
	beq	.L49
.L72:
	ldr	r9, [r3, #12]
	cmp	r9, #0
	beq	.L52
.L71:
	ldr	r10, [r9, #12]
	cmp	r10, #0
	beq	.L55
.L70:
	ldr	fp, [r10, #12]
	cmp	fp, #0
	beq	.L58
.L69:
	ldr	r6, [fp, #12]
	cmp	r6, #0
	beq	.L61
.L68:
	ldr	r5, [r6, #12]
	cmp	r5, #0
	beq	.L64
.L67:
	ldr	r7, [r5, #12]
	cmp	r7, #0
	beq	.L65
.L66:
	ldr	r1, [r7, #12]
	mov	r0, r4
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE(PLT)
	ldr	r8, [r7, #8]
	mov	r0, r7
	bl	free(PLT)
	cmp	r8, #0
	mov	r7, r8
	bne	.L66
.L65:
	ldr	r7, [r5, #8]
	mov	r0, r5
	bl	free(PLT)
	cmp	r7, #0
	movne	r5, r7
	bne	.L67
.L64:
	ldr	r5, [r6, #8]
	mov	r0, r6
	bl	free(PLT)
	cmp	r5, #0
	movne	r6, r5
	bne	.L68
.L61:
	ldr	r5, [fp, #8]
	mov	r0, fp
	bl	free(PLT)
	cmp	r5, #0
	movne	fp, r5
	bne	.L69
.L58:
	ldr	r5, [r10, #8]
	mov	r0, r10
	bl	free(PLT)
	cmp	r5, #0
	movne	r10, r5
	bne	.L70
.L55:
	ldr	r5, [r9, #8]
	mov	r0, r9
	bl	free(PLT)
	cmp	r5, #0
	movne	r9, r5
	bne	.L71
.L78:
	ldr	r3, [sp, #8]
.L52:
	ldr	r5, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
	cmp	r5, #0
	beq	.L49
	str	r5, [sp, #8]
	mov	r3, r5
	b	.L72
.L46:
	ldr	r3, [sp, #12]
	mov	r0, r3
	ldr	r5, [r3, #8]
	bl	free(PLT)
	cmp	r5, #0
	strne	r5, [sp, #12]
	bne	.L74
.L39:
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L49:
	ldr	r3, [sp, #4]
	mov	r0, r3
	ldr	r5, [r3, #8]
	bl	free(PLT)
	cmp	r5, #0
	beq	.L46
	str	r5, [sp, #4]
	mov	r3, r5
	b	.L73
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE
	.section	.text._ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE,"axG",%progbits,_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE
	.hidden	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE
	.type	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE, %function
_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	cmp	r1, #0
	str	r1, [sp, #12]
	mov	r4, r0
	beq	.L79
.L114:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	str	r3, [sp, #4]
	beq	.L86
.L113:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	str	r3, [sp, #8]
	beq	.L89
.L112:
	ldr	r9, [r3, #12]
	cmp	r9, #0
	beq	.L92
.L111:
	ldr	r10, [r9, #12]
	cmp	r10, #0
	beq	.L95
.L110:
	ldr	fp, [r10, #12]
	cmp	fp, #0
	beq	.L98
.L109:
	ldr	r6, [fp, #12]
	cmp	r6, #0
	beq	.L101
.L108:
	ldr	r5, [r6, #12]
	cmp	r5, #0
	beq	.L104
.L107:
	ldr	r7, [r5, #12]
	cmp	r7, #0
	beq	.L105
.L106:
	ldr	r1, [r7, #12]
	mov	r0, r4
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE(PLT)
	ldr	r8, [r7, #8]
	mov	r0, r7
	bl	free(PLT)
	cmp	r8, #0
	mov	r7, r8
	bne	.L106
.L105:
	ldr	r7, [r5, #8]
	mov	r0, r5
	bl	free(PLT)
	cmp	r7, #0
	movne	r5, r7
	bne	.L107
.L104:
	ldr	r5, [r6, #8]
	mov	r0, r6
	bl	free(PLT)
	cmp	r5, #0
	movne	r6, r5
	bne	.L108
.L101:
	ldr	r5, [fp, #8]
	mov	r0, fp
	bl	free(PLT)
	cmp	r5, #0
	movne	fp, r5
	bne	.L109
.L98:
	ldr	r5, [r10, #8]
	mov	r0, r10
	bl	free(PLT)
	cmp	r5, #0
	movne	r10, r5
	bne	.L110
.L95:
	ldr	r5, [r9, #8]
	mov	r0, r9
	bl	free(PLT)
	cmp	r5, #0
	movne	r9, r5
	bne	.L111
.L118:
	ldr	r3, [sp, #8]
.L92:
	ldr	r5, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
	cmp	r5, #0
	beq	.L89
	str	r5, [sp, #8]
	mov	r3, r5
	b	.L112
.L86:
	ldr	r3, [sp, #12]
	mov	r0, r3
	ldr	r5, [r3, #8]
	bl	free(PLT)
	cmp	r5, #0
	strne	r5, [sp, #12]
	bne	.L114
.L79:
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L89:
	ldr	r3, [sp, #4]
	mov	r0, r3
	ldr	r5, [r3, #8]
	bl	free(PLT)
	cmp	r5, #0
	beq	.L86
	str	r5, [sp, #4]
	mov	r3, r5
	b	.L113
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE
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
	beq	.L120
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L129
.L121:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L130
.L125:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L123:
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
.L129:
	cmp	r2, #0
	beq	.L131
.L120:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L132
.L127:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L133
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L123
.L133:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L123
.L132:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L127
.L130:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L125
.L131:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L120
	b	.L121
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
	beq	.L210
	cmp	ip, r8
	beq	.L211
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L212
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L213
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L171
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L172
.L171:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L204
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L134
.L212:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L214
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L215
.L206:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L134:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L211:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L216
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L165
	b	.L226
.L217:
	mov	r4, r0
.L165:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L217
	cmp	r1, #0
	beq	.L195
	cmp	r2, r4
	beq	.L218
.L161:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L166:
	cmp	r8, r3
	bhi	.L219
.L179:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L214:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L172:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L187
	ldr	r0, [r6]
	b	.L176
.L220:
	mov	r4, r3
.L176:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L220
	cmp	r1, #0
	moveq	r3, r4
	bne	.L187
.L177:
	cmp	r0, r2
	bls	.L179
.L207:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L179
.L216:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L210:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L221
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L222
	strls	ip, [r0]
	bls	.L134
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L223
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L149
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L150
.L204:
	mov	r2, r0
	b	.L206
.L195:
	mov	ip, r4
	b	.L166
.L215:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L134
.L221:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L188
	ldr	r0, [r6]
	b	.L141
.L224:
	mov	r4, r3
.L141:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L224
	cmp	r1, #0
	moveq	r3, r4
	bne	.L137
.L142:
	cmp	r2, r0
	bcs	.L179
	b	.L207
.L187:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L209
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L177
.L219:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L179
.L222:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L134
.L188:
	mov	r4, r8
.L137:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L208
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L142
.L226:
	mov	r4, ip
	b	.L161
.L149:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L155
	b	.L227
.L225:
	mov	r4, r3
.L155:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L225
	cmp	r0, #0
	moveq	r3, r4
	bne	.L151
.L156:
	cmp	r2, r1
	bcs	.L179
	b	.L207
.L218:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L179
.L223:
	ldr	r3, [r4]
.L150:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L134
.L209:
	mov	r2, r4
.L208:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L179
.L227:
	mov	r4, ip
.L151:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L209
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L156
.L213:
	str	r3, [r5]
	b	.L134
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN12ImageManagerD2Ev,"axG",%progbits,_ZN12ImageManagerD5Ev,comdat
	.align	2
	.weak	_ZN12ImageManagerD2Ev
	.hidden	_ZN12ImageManagerD2Ev
	.type	_ZN12ImageManagerD2Ev, %function
_ZN12ImageManagerD2Ev:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldr	r3, [r0, #4]
	ldr	r9, .L250
	cmp	r3, #0
	movne	r4, #0
.LPIC14:
	add	r9, pc, r9
	mov	r10, r0
	movne	r8, r4
	addne	r7, sp, #4
	addne	r5, sp, #8
	beq	.L238
.L239:
	ldr	r3, [r10]
	mov	fp, r3
	ldr	ip, [r3, #4]
	cmp	ip, #0
	beq	.L232
.L236:
	ldr	lr, [ip, #16]
	cmp	lr, r4
	movcs	fp, ip
	ldrcc	ip, [ip, #12]
	ldrcs	ip, [ip, #8]
	cmp	ip, #0
	bne	.L236
	cmp	r3, fp
	beq	.L232
	ldr	r3, [fp, #16]
	cmp	r3, r4
	bls	.L241
.L232:
	mov	r0, r7
	mov	r1, r10
	mov	r2, sp
	mov	r3, r5
	str	fp, [sp]
	str	r4, [sp, #8]
	str	r8, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	fp, [sp, #4]
.L241:
	ldr	r0, [fp, #20]
	cmp	r0, #0
	beq	.L237
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	blx	r3
.L237:
	ldr	r3, [r10, #4]
	add	r4, r4, #1
	cmp	r4, r3
	bcc	.L239
.L238:
	ldr	r3, .L250+4
	ldr	r1, [r10, #12]
	ldr	r3, [r9, r3]
	ldr	r0, [r3]
	bl	_ZN13CIwResManager12DestroyGroupEP11CIwResGroup(PLT)
	ldr	r3, [r10, #4]
	cmp	r3, #0
	beq	.L231
	ldr	r3, [r10]
	mov	r0, r10
	ldr	r1, [r3, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE(PLT)
	ldr	r2, [r10]
	mov	r3, #0
	str	r2, [r2, #8]
	ldr	r2, [r10]
	str	r3, [r2, #4]
	ldr	r2, [r10]
	str	r2, [r2, #12]
	str	r3, [r10, #4]
.L231:
	ldr	r0, [r10]
	cmp	r0, #0
	beq	.L245
	bl	free(PLT)
.L245:
	mov	r0, r10
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L251:
	.align	2
.L250:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+8)
	.word	g_IwResManager(GOT)
	.size	_ZN12ImageManagerD2Ev, .-_ZN12ImageManagerD2Ev
	.weak	_ZN12ImageManagerD1Ev
	.hidden	_ZN12ImageManagerD1Ev
	.set	_ZN12ImageManagerD1Ev,_ZN12ImageManagerD2Ev
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_fcmpgt
	.section	.text.startup.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldr	r7, .L321
	bl	_Z8Iw2DInitv(PLT)
	bl	_Z16IwResManagerInitv(PLT)
	bl	_Z12IwGxFontInitv(PLT)
	ldr	r3, .L321+4
.LPIC15:
	add	r7, pc, r7
	ldr	r4, .L321+8
	ldr	r3, [r7, r3]
	ldr	ip, .L321+12
	mvn	lr, #0
	ldr	r0, [r3]
	ldr	r1, .L321+16
	mov	r2, #0
	ldr	r5, [r0]
.LPIC16:
	add	r1, pc, r1
	orr	r5, r5, #2048
	str	r5, [r0]
	ldr	r0, [r3]
	ldr	r5, [r0]
	orr	r5, r5, #4096
	str	r5, [r0]
	ldr	r0, [r3]
	ldr	r5, [r0]
	orr	r5, r5, #8192
	str	r5, [r0]
	ldr	r3, [r3]
	ldr	r0, [r3]
	orr	r0, r0, #16384
	str	r0, [r3]
	ldr	r3, [r7, r4]
	ldr	r3, [r3]
	str	lr, [r3, #44]
	ldr	r3, [r7, ip]
	str	r3, [sp]
	ldr	r0, [r3]
	bl	_ZN13CIwResManager9LoadGroupEPKcb(PLT)
	mov	r0, #16
	bl	_Znwj(PLT)
	mov	r3, #0
	str	r3, [r0]
	mov	r4, r0
	mov	r0, #24
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L315
.L253:
	mov	r3, #0
	mov	r2, r3
	stmia	r4, {r0, r3}
	strb	r3, [r0]
	ldr	r1, [r4]
	ldr	ip, [sp]
	ldr	r5, .L321+20
	str	r3, [r1, #4]
	ldr	r3, [r4]
	ldr	r1, .L321+24
	ldr	r0, [ip]
	str	r3, [r3, #8]
	ldr	r3, [r4]
.LPIC17:
	add	r1, pc, r1
	ldr	r6, .L321+28
	str	r3, [r3, #12]
	bl	_ZN13CIwResManager9LoadGroupEPKcb(PLT)
	ldr	r3, .L321+32
.LPIC18:
	add	r5, pc, r5
.LPIC19:
	add	r6, pc, r6
	str	r0, [r4, #12]
	ldr	r3, [r7, r3]
	mov	r0, #20
	str	r3, [sp, #12]
	str	r4, [r3]
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN12AudioManagerC1Ev(PLT)
	ldr	r3, .L321+36
	mov	r0, #48
	ldr	r9, [r7, r3]
	str	r4, [r9]
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN4GameC1Ev(PLT)
	mov	r0, r6
	str	r4, [r5]
	bl	s3eFileCheckExists(PLT)
	cmp	r0, #0
	ldr	r0, [r5]
	beq	.L254
	mov	r1, r6
	bl	_ZN4Game12InitFromFileEPKc(PLT)
.L255:
	ldr	r1, .L321+40
	mov	r0, #0
	mov	r2, r0
.LPIC23:
	add	r1, pc, r1
	bl	s3eDeviceRegister(PLT)
	ldr	r1, .L321+44
	mov	r2, #0
.LPIC24:
	add	r1, pc, r1
	mov	r0, #1
	bl	s3eDeviceRegister(PLT)
	ldr	r1, .L321+48
	mov	r2, #0
.LPIC25:
	add	r1, pc, r1
	mov	r0, #2
	bl	s3eDeviceRegister(PLT)
	ldr	r3, .L321+52
	ldr	ip, .L321+56
	ldr	r5, .L321+60
.LPIC32:
	add	ip, pc, ip
	ldr	r8, [r7, r3]
	str	ip, [sp, #4]
	ldr	ip, .L321+64
	ldr	r10, .L321+68
.LPIC31:
	add	ip, pc, ip
	str	ip, [sp, #8]
	bl	s3eDeviceCheckQuitRequest(PLT)
	mov	r4, #0
.LPIC26:
	add	r5, pc, r5
.LPIC29:
	add	r10, pc, r10
	cmp	r0, #0
	bne	.L316
.L270:
	bl	clock(PLT)
	mov	r6, r0
	rsb	r0, r4, r0
	bl	__aeabi_i2f(PLT)
	ldr	r1, .L321+72
	bl	__aeabi_fdiv(PLT)
	ldr	r1, .L321+76
	mov	r4, r0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	mov	r0, #-16777216
	ldrne	r4, .L321+76
	bl	_Z16Iw2DSurfaceClearj(PLT)
	bl	s3eKeyboardUpdate(PLT)
	bl	s3ePointerUpdate(PLT)
	mov	r1, r4
	ldr	r0, [r5]
	bl	_ZN4Game6UpdateEf(PLT)
	ldr	r0, [r5]
	bl	_ZN4Game6RenderEv(PLT)
	ldr	r3, [r5]
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L317
	ldr	r0, [r8]
	cmp	r0, #0
	beq	.L318
.L263:
	bl	_ZN5Input6UpdateEv(PLT)
	ldr	r3, .L321+80
	ldr	r4, [r9]
	ldr	r3, [r7, r3]
	ldr	r0, [r3]
	bl	_ZN15CIwSoundManager6UpdateEv(PLT)
	ldr	r3, [r4, #4]
	ldr	fp, [r3, #8]
	cmp	r3, fp
	bne	.L269
	b	.L265
.L266:
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4, #4]
	cmp	r0, r3
	mov	fp, r0
	beq	.L265
.L269:
	ldr	r0, [fp, #20]
	bl	_ZNK12CIwSoundInst9IsPlayingEv(PLT)
	cmp	r0, #0
	mov	r0, fp
	bne	.L266
	ldr	r3, [r4, #4]
	add	r1, r3, #4
	add	r2, r3, #8
	add	r3, r3, #12
	bl	_ZN4_STL10_Rb_globalIbE20_Rebalance_for_eraseEPNS_18_Rb_tree_node_baseERS3_S4_S4_(PLT)
	cmp	r0, #0
	beq	.L267
	bl	free(PLT)
.L267:
	ldr	r3, [r4, #8]
	sub	r3, r3, #1
	str	r3, [r4, #8]
.L265:
	bl	_Z15Iw2DSurfaceShowv(PLT)
	mov	r0, #0
	bl	s3eDeviceYield(PLT)
	bl	s3eDeviceCheckQuitRequest(PLT)
	mov	r4, r6
	cmp	r0, #0
	beq	.L270
.L316:
	ldr	r1, .L321+84
	mov	r0, #2
.LPIC33:
	add	r1, pc, r1
	bl	s3eDeviceUnRegister(PLT)
	ldr	r1, .L321+88
	mov	r0, #1
.LPIC34:
	add	r1, pc, r1
	bl	s3eDeviceUnRegister(PLT)
	ldr	r1, .L321+92
	mov	r0, #0
.LPIC35:
	add	r1, pc, r1
	bl	s3eDeviceUnRegister(PLT)
	ldr	r3, .L321+96
.LPIC36:
	ldr	r4, [pc, r3]		@ tls_load_dot_plus_eight
	cmp	r4, #0
	beq	.L271
	mov	r0, r4
	bl	_ZN4GameD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L271:
	ldr	ip, [sp, #12]
	ldr	r4, [ip]
	cmp	r4, #0
	beq	.L272
	mov	r0, r4
	bl	_ZN12ImageManagerD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L272:
	ldr	r4, [r9]
	cmp	r4, #0
	beq	.L273
	ldr	ip, [sp]
	ldr	r1, [r4]
	ldr	r0, [ip]
	bl	_ZN13CIwResManager12DestroyGroupEP11CIwResGroup(PLT)
	bl	_Z16IwSoundTerminatev(PLT)
	ldr	r3, [r4, #8]
	cmp	r3, #0
	bne	.L319
.L274:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.L275
	bl	free(PLT)
.L275:
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L273:
	ldr	r0, [r8]
	cmp	r0, #0
	movne	r4, r0
	beq	.L320
.L276:
	mov	r0, r4
	bl	_ZN5InputD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L277:
	ldr	ip, [sp]
	ldr	r1, .L321+100
	ldr	r0, [ip]
.LPIC37:
	add	r1, pc, r1
	bl	_ZN13CIwResManager12DestroyGroupEPKc(PLT)
	bl	_Z17IwGxFontTerminatev(PLT)
	bl	_Z21IwResManagerTerminatev(PLT)
	bl	_Z13Iw2DTerminatev(PLT)
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L317:
	ldr	r3, [r3, #40]
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r3, .L321+104
	ldr	r3, [r7, r3]
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L259
	mov	r0, r4
	bl	_ZN16CollisionManagerD1Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
.L259:
	ldr	r3, [r10]
	ldr	r0, [r3, #32]
	cmp	r0, #0
	beq	.L260
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r10]
.L260:
	ldr	r0, [r3, #36]
	cmp	r0, #0
	beq	.L261
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	ip, [sp, #8]
	ldr	r3, [ip]
.L261:
	ldr	r0, [r3, #40]
	cmp	r0, #0
	beq	.L262
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	ip, [sp, #4]
	ldr	r3, [ip]
.L262:
	mov	r0, r3
	bl	_ZN4Game4InitEv(PLT)
	ldr	r0, [r8]
	cmp	r0, #0
	bne	.L263
.L318:
	mov	r0, #1
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN5InputC1Ev(PLT)
	str	r4, [r8]
	mov	r0, r4
	b	.L263
.L254:
	bl	_ZN4Game4InitEv(PLT)
	b	.L255
.L319:
	ldr	r3, [r4, #4]
	add	r0, r4, #4
	ldr	r1, [r3, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP12CIwSoundInstEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE8_M_eraseEPNS_13_Rb_tree_nodeIS5_EE(PLT)
	ldr	r2, [r4, #4]
	mov	r3, #0
	str	r2, [r2, #8]
	ldr	r2, [r4, #4]
	str	r3, [r2, #4]
	ldr	r2, [r4, #4]
	str	r2, [r2, #12]
	str	r3, [r4, #8]
	b	.L274
.L315:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L253
.L320:
	mov	r0, #1
	bl	_Znwj(PLT)
	mov	r4, r0
	bl	_ZN5InputC1Ev(PLT)
	cmp	r4, #0
	str	r4, [r8]
	beq	.L277
	b	.L276
.L322:
	.align	2
.L321:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+8)
	.word	g_IwGxState(GOT)
	.word	g_IwGxFontState(GOT)
	.word	g_IwResManager(GOT)
	.word	.LC2-(.LPIC16+8)
	.word	.LANCHOR0-(.LPIC18+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC0-(.LPIC19+8)
	.word	_ZN12ImageManager9singletonE(GOT)
	.word	_ZN12AudioManager9singletonE(GOT)
	.word	_Z11SuspendGamev-(.LPIC23+8)
	.word	_Z10ResumeGamev-(.LPIC24+8)
	.word	_Z8ExitGamev-(.LPIC25+8)
	.word	_ZN5Input10_singletonE(GOT)
	.word	.LANCHOR0-(.LPIC32+8)
	.word	.LANCHOR0-(.LPIC26+8)
	.word	.LANCHOR0-(.LPIC31+8)
	.word	.LANCHOR0-(.LPIC29+8)
	.word	1148846080
	.word	1015580809
	.word	g_IwSoundManager(GOT)
	.word	_Z8ExitGamev-(.LPIC33+8)
	.word	_Z10ResumeGamev-(.LPIC34+8)
	.word	_Z11SuspendGamev-(.LPIC35+8)
	.word	.LANCHOR0-(.LPIC36+8)
	.word	.LC2-(.LPIC37+8)
	.word	_ZN16CollisionManager9singletonE(GOT)
	.size	main, .-main
	.hidden	g_Game
	.global	g_Game
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"savedstate.dat\000"
	.space	1
.LC1:
	.ascii	"audio.group\000"
.LC2:
	.ascii	"fonts.group\000"
.LC3:
	.ascii	"images.group\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_Game, %object
	.size	g_Game, 4
g_Game:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
