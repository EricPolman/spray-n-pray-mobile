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
	.file	"CollisionManager.cpp"
	.section	.text._ZN16CollisionManagerC2Ev,"ax",%progbits
	.align	2
	.global	_ZN16CollisionManagerC2Ev
	.hidden	_ZN16CollisionManagerC2Ev
	.type	_ZN16CollisionManagerC2Ev, %function
_ZN16CollisionManagerC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r3, [r0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	str	r3, [r0, #24]
	mov	r0, #32
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L4
.L2:
	mov	r3, #0
	str	r0, [r4, #24]
	str	r3, [r4, #28]
	strb	r3, [r0]
	ldr	r2, [r4, #24]
	mov	r0, r4
	str	r3, [r2, #4]
	ldr	r3, [r4, #24]
	str	r3, [r3, #8]
	ldr	r3, [r4, #24]
	str	r3, [r3, #12]
	ldmfd	sp!, {r4, pc}
.L4:
	mov	r0, #32
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	b	.L2
	.size	_ZN16CollisionManagerC2Ev, .-_ZN16CollisionManagerC2Ev
	.global	_ZN16CollisionManagerC1Ev
	.hidden	_ZN16CollisionManagerC1Ev
	.set	_ZN16CollisionManagerC1Ev,_ZN16CollisionManagerC2Ev
	.section	.text._ZN16CollisionManager8RegisterEP10GameSprite,"ax",%progbits
	.align	2
	.global	_ZN16CollisionManager8RegisterEP10GameSprite
	.hidden	_ZN16CollisionManager8RegisterEP10GameSprite
	.type	_ZN16CollisionManager8RegisterEP10GameSprite, %function
_ZN16CollisionManager8RegisterEP10GameSprite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	ldr	r5, [r0, #4]
	ldr	r3, [r0, #8]
	mov	r6, r1
	cmp	r5, r3
	beq	.L6
	str	r1, [r5]
	ldr	r3, [r0, #4]
	add	r3, r3, #4
	str	r3, [r0, #4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L6:
	ldr	r7, [r0]
	rsb	r3, r7, r5
	movs	r3, r3, asr #2
	beq	.L13
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L8
.L9:
	cmp	r5, r7
	moveq	r0, r8
	beq	.L11
	rsb	r5, r7, r5
	mov	r1, r7
	mov	r2, r5
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r5
.L11:
	mov	r5, r0
	str	r6, [r5], #4
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L12
	bl	free(PLT)
.L12:
	add	r9, r8, r9
	str	r9, [r4, #8]
	str	r8, [r4]
	str	r5, [r4, #4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L13:
	mov	r9, #1
.L8:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L9
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r4]
	mov	r8, r0
	b	.L9
	.size	_ZN16CollisionManager8RegisterEP10GameSprite, .-_ZN16CollisionManager8RegisterEP10GameSprite
	.section	.text._ZN16CollisionManager10UnregisterEP10GameSprite,"ax",%progbits
	.align	2
	.global	_ZN16CollisionManager10UnregisterEP10GameSprite
	.hidden	_ZN16CollisionManager10UnregisterEP10GameSprite
	.type	_ZN16CollisionManager10UnregisterEP10GameSprite, %function
_ZN16CollisionManager10UnregisterEP10GameSprite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	ldr	r5, [r0, #16]
	ldr	r3, [r0, #20]
	mov	r6, r1
	cmp	r5, r3
	beq	.L20
	str	r1, [r5]
	ldr	r3, [r0, #16]
	add	r3, r3, #4
	str	r3, [r0, #16]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L20:
	ldr	r7, [r0, #12]
	rsb	r3, r7, r5
	movs	r3, r3, asr #2
	beq	.L27
	movs	r9, r3, asl #1
	moveq	r8, r9
	bne	.L22
.L23:
	cmp	r5, r7
	moveq	r0, r8
	beq	.L25
	rsb	r5, r7, r5
	mov	r1, r7
	mov	r2, r5
	mov	r0, r8
	bl	memmove(PLT)
	add	r0, r0, r5
.L25:
	mov	r5, r0
	str	r6, [r5], #4
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L26
	bl	free(PLT)
.L26:
	add	r9, r8, r9
	str	r9, [r4, #20]
	str	r8, [r4, #12]
	str	r5, [r4, #16]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
.L27:
	mov	r9, #1
.L22:
	mov	r9, r9, asl #2
	mov	r0, r9
	bl	malloc(PLT)
	subs	r8, r0, #0
	bne	.L23
	mov	r0, r9
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	r7, [r4, #12]
	mov	r8, r0
	b	.L23
	.size	_ZN16CollisionManager10UnregisterEP10GameSprite, .-_ZN16CollisionManager10UnregisterEP10GameSprite
	.section	.text._ZN16CollisionManager13HasCollisionsEP10GameSprite,"ax",%progbits
	.align	2
	.global	_ZN16CollisionManager13HasCollisionsEP10GameSprite
	.hidden	_ZN16CollisionManager13HasCollisionsEP10GameSprite
	.type	_ZN16CollisionManager13HasCollisionsEP10GameSprite, %function
_ZN16CollisionManager13HasCollisionsEP10GameSprite:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #24]
	ldr	r0, [ip, #4]
	cmp	r0, #0
	bxeq	lr
	mov	r2, ip
.L38:
	ldr	r3, [r0, #16]
	cmp	r3, r1
	movcs	r2, r0
	ldrcc	r0, [r0, #12]
	ldrcs	r0, [r0, #8]
	cmp	r0, #0
	bne	.L38
	cmp	ip, r2
	bxeq	lr
	ldr	r0, [r2, #16]
	cmp	r0, r1
	movhi	r0, #0
	movls	r0, #1
	bx	lr
	.size	_ZN16CollisionManager13HasCollisionsEP10GameSprite, .-_ZN16CollisionManager13HasCollisionsEP10GameSprite
	.section	.text._ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE,"axG",%progbits,_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE
	.hidden	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE
	.type	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE, %function
_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	cmp	r1, #0
	str	r1, [sp, #12]
	mov	r5, r0
	beq	.L41
.L85:
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	str	r3, [sp, #4]
	beq	.L82
.L83:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	str	r3, [sp, #8]
	beq	.L80
.L81:
	ldr	r9, [r3, #12]
	cmp	r9, #0
	beq	.L78
.L79:
	ldr	r10, [r9, #12]
	cmp	r10, #0
	beq	.L76
.L77:
	ldr	fp, [r10, #12]
	cmp	fp, #0
	beq	.L74
.L75:
	ldr	r7, [fp, #12]
	cmp	r7, #0
	beq	.L72
.L73:
	ldr	r6, [r7, #12]
	cmp	r6, #0
	beq	.L70
.L71:
	ldr	r8, [r6, #12]
	cmp	r8, #0
	beq	.L68
.L69:
	mov	r0, r5
	ldr	r1, [r8, #12]
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE(PLT)
	ldr	r2, [r8, #20]
	ldr	r4, [r8, #8]
	subs	r0, r2, #0
	beq	.L67
	bl	free(PLT)
.L67:
	mov	r0, r8
	bl	free(PLT)
	cmp	r4, #0
	mov	r8, r4
	bne	.L69
.L68:
	ldr	r0, [r6, #20]
	ldr	r4, [r6, #8]
	cmp	r0, #0
	beq	.L66
	bl	free(PLT)
.L66:
	mov	r0, r6
	bl	free(PLT)
	cmp	r4, #0
	movne	r6, r4
	bne	.L71
.L70:
	ldr	r0, [r7, #20]
	ldr	r4, [r7, #8]
	cmp	r0, #0
	beq	.L63
	bl	free(PLT)
.L63:
	mov	r0, r7
	bl	free(PLT)
	cmp	r4, #0
	movne	r7, r4
	bne	.L73
.L72:
	ldr	r0, [fp, #20]
	ldr	r4, [fp, #8]
	cmp	r0, #0
	beq	.L60
	bl	free(PLT)
.L60:
	mov	r0, fp
	bl	free(PLT)
	cmp	r4, #0
	movne	fp, r4
	bne	.L75
.L74:
	ldr	r0, [r10, #20]
	ldr	r4, [r10, #8]
	cmp	r0, #0
	beq	.L57
	bl	free(PLT)
.L57:
	mov	r0, r10
	bl	free(PLT)
	cmp	r4, #0
	movne	r10, r4
	bne	.L77
.L76:
	ldr	r0, [r9, #20]
	ldr	r4, [r9, #8]
	cmp	r0, #0
	beq	.L54
	bl	free(PLT)
.L54:
	mov	r0, r9
	bl	free(PLT)
	cmp	r4, #0
	movne	r9, r4
	bne	.L79
.L78:
	ldr	r3, [sp, #8]
	ldr	r0, [r3, #20]
	ldr	r4, [r3, #8]
	cmp	r0, #0
	beq	.L51
	bl	free(PLT)
.L51:
	ldr	r0, [sp, #8]
	bl	free(PLT)
	cmp	r4, #0
	strne	r4, [sp, #8]
	movne	r3, r4
	bne	.L81
.L80:
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #20]
	ldr	r4, [r3, #8]
	cmp	r0, #0
	beq	.L48
	bl	free(PLT)
.L48:
	ldr	r0, [sp, #4]
	bl	free(PLT)
	cmp	r4, #0
	strne	r4, [sp, #4]
	movne	r3, r4
	bne	.L83
.L82:
	ldr	r3, [sp, #12]
	ldr	r0, [r3, #20]
	ldr	r4, [r3, #8]
	cmp	r0, #0
	beq	.L45
	bl	free(PLT)
.L45:
	ldr	r0, [sp, #12]
	bl	free(PLT)
	cmp	r4, #0
	strne	r4, [sp, #12]
	bne	.L85
.L41:
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE, .-_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE
	.section	.text._ZN16CollisionManagerD2Ev,"ax",%progbits
	.align	2
	.global	_ZN16CollisionManagerD2Ev
	.hidden	_ZN16CollisionManagerD2Ev
	.type	_ZN16CollisionManagerD2Ev, %function
_ZN16CollisionManagerD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L133
.L117:
	ldr	r0, [r4, #24]
	cmp	r0, #0
	beq	.L118
	bl	free(PLT)
.L118:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L119
	bl	free(PLT)
.L119:
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L120
	bl	free(PLT)
.L120:
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L133:
	ldr	r3, [r0, #24]
	add	r0, r0, #24
	ldr	r1, [r3, #4]
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE(PLT)
	ldr	r2, [r4, #24]
	mov	r3, #0
	str	r2, [r2, #8]
	ldr	r2, [r4, #24]
	str	r3, [r2, #4]
	ldr	r2, [r4, #24]
	str	r2, [r2, #12]
	str	r3, [r4, #28]
	b	.L117
	.size	_ZN16CollisionManagerD2Ev, .-_ZN16CollisionManagerD2Ev
	.global	_ZN16CollisionManagerD1Ev
	.hidden	_ZN16CollisionManagerD1Ev
	.set	_ZN16CollisionManagerD1Ev,_ZN16CollisionManagerD2Ev
	.section	.text._ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_,"axG",%progbits,_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_
	.hidden	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_
	.type	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_, %function
_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r3
	ldr	r3, [r1]
	sub	sp, sp, #12
	cmp	r10, r3
	mov	r8, r1
	mov	r9, r0
	ldr	r4, [sp, #48]
	beq	.L135
	ldr	r3, [sp, #52]
	cmp	r3, #0
	beq	.L156
.L136:
	mov	r0, #32
	bl	malloc(PLT)
	subs	r6, r0, #0
	beq	.L157
.L150:
	ldr	r3, [r4]
	mov	r2, #0
	str	r3, [r6, #16]
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #4]
	str	r2, [r6, #20]
	rsb	r3, r3, r1
	str	r2, [r6, #24]
	mov	r3, r3, asr #2
	str	r2, [r6, #28]
	add	r5, r3, r3, asl #1
	add	r5, r5, r5, asl #4
	add	r5, r5, r5, asl #8
	add	r5, r5, r5, asl #16
	adds	r5, r3, r5, asl #2
	moveq	fp, r5
	bne	.L158
.L144:
	add	r5, fp, r5
	str	r5, [r6, #28]
	str	fp, [r6, #20]
	str	fp, [r6, #24]
	ldr	r3, [r4, #4]
	ldr	r7, [r4, #8]
	str	r3, [sp, #4]
	cmp	r3, r7
	beq	.L146
	add	r5, fp, #20
	mov	r4, r3
.L148:
	mov	lr, r4
	sub	ip, r5, #20
	ldmia	lr!, {r0, r1, r2, r3}
	add	r4, r4, #20
	cmp	r7, r4
	add	r5, r5, #20
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	bne	.L148
	ldr	r2, [sp, #4]
	add	r3, r2, #20
	rsb	r7, r3, r7
	ldr	r3, .L163
	mov	r7, r7, lsr #2
	mul	r3, r3, r7
	bic	r3, r3, #-1073741824
	add	r3, r3, #1
	add	r3, r3, r3, asl #2
	add	fp, fp, r3, asl #2
.L146:
	str	fp, [r6, #24]
	str	r6, [r10, #12]
	ldr	r3, [r8]
	ldr	r2, [r3, #12]
	cmp	r10, r2
	streq	r6, [r3, #12]
.L143:
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #12]
	str	r10, [r6, #4]
	ldr	r1, [r8]
	mov	r0, r6
	add	r1, r1, #4
	bl	_ZN4_STL10_Rb_globalIbE10_RebalanceEPNS_18_Rb_tree_node_baseERS3_(PLT)
	ldr	r3, [r8, #4]
	mov	r0, r9
	add	r3, r3, #1
	str	r3, [r8, #4]
	str	r6, [r9]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L156:
	cmp	r2, #0
	beq	.L159
.L135:
	mov	r0, #32
	bl	malloc(PLT)
	subs	r6, r0, #0
	beq	.L160
.L152:
	ldr	r3, [r4]
	mov	r2, #0
	str	r3, [r6, #16]
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #4]
	str	r2, [r6, #20]
	rsb	r3, r3, r1
	str	r2, [r6, #24]
	mov	r3, r3, asr #2
	str	r2, [r6, #28]
	add	r5, r3, r3, asl #1
	add	r5, r5, r5, asl #4
	add	r5, r5, r5, asl #8
	add	r5, r5, r5, asl #16
	adds	r5, r3, r5, asl #2
	moveq	fp, r5
	bne	.L161
.L137:
	add	r5, fp, r5
	str	r5, [r6, #28]
	str	fp, [r6, #20]
	str	fp, [r6, #24]
	ldr	r2, [r4, #4]
	ldr	r7, [r4, #8]
	str	r2, [sp, #4]
	cmp	r2, r7
	beq	.L139
	add	r5, fp, #20
	mov	r4, r2
.L141:
	mov	lr, r4
	sub	ip, r5, #20
	ldmia	lr!, {r0, r1, r2, r3}
	add	r4, r4, #20
	cmp	r7, r4
	add	r5, r5, #20
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	bne	.L141
	ldr	r2, [sp, #4]
	add	r3, r2, #20
	rsb	r7, r3, r7
	ldr	r3, .L163
	mov	r7, r7, lsr #2
	mul	r3, r3, r7
	bic	r3, r3, #-1073741824
	add	r3, r3, #1
	add	r3, r3, r3, asl #2
	add	fp, fp, r3, asl #2
.L139:
	str	fp, [r6, #24]
	str	r6, [r10, #8]
	ldr	r3, [r8]
	cmp	r10, r3
	beq	.L162
	ldr	r2, [r3, #8]
	cmp	r10, r2
	streq	r6, [r3, #8]
	b	.L143
.L158:
	add	r5, r5, r5, asl #2
	mov	r5, r5, asl #2
	mov	r0, r5
	bl	malloc(PLT)
	subs	fp, r0, #0
	bne	.L144
	mov	r0, r5
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	fp, r0
	b	.L144
.L161:
	add	r5, r5, r5, asl #2
	mov	r5, r5, asl #2
	mov	r0, r5
	bl	malloc(PLT)
	subs	fp, r0, #0
	bne	.L137
	mov	r0, r5
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	fp, r0
	b	.L137
.L162:
	str	r6, [r10, #4]
	ldr	r3, [r8]
	str	r6, [r3, #12]
	b	.L143
.L157:
	mov	r0, #32
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r6, r0
	b	.L150
.L160:
	mov	r0, #32
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r6, r0
	b	.L152
.L159:
	ldr	r2, [r4]
	ldr	r3, [r10, #16]
	cmp	r2, r3
	bcc	.L135
	b	.L136
.L164:
	.align	2
.L163:
	.word	214748365
	.size	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_, .-_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_
	.section	.text._ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_,"axG",%progbits,_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_,comdat
	.align	2
	.weak	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_
	.hidden	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_
	.type	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_, %function
_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_:
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
	beq	.L241
	cmp	ip, r8
	beq	.L242
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L243
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L244
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L202
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L203
.L202:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L235
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	b	.L165
.L243:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L245
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L246
.L237:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
.L165:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L242:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L247
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L196
	b	.L257
.L248:
	mov	r4, r0
.L196:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L248
	cmp	r1, #0
	beq	.L226
	cmp	r2, r4
	beq	.L249
.L192:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L197:
	cmp	r8, r3
	bhi	.L250
.L210:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L245:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L203:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L218
	ldr	r0, [r6]
	b	.L207
.L251:
	mov	r4, r3
.L207:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L251
	cmp	r1, #0
	moveq	r3, r4
	bne	.L218
.L208:
	cmp	r0, r2
	bls	.L210
.L238:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	ldr	r4, [sp, #12]
	b	.L210
.L247:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L241:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L252
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L253
	strls	ip, [r0]
	bls	.L165
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L254
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L180
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L181
.L235:
	mov	r2, r0
	b	.L237
.L226:
	mov	ip, r4
	b	.L197
.L246:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	b	.L165
.L252:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L219
	ldr	r0, [r6]
	b	.L172
.L255:
	mov	r4, r3
.L172:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L255
	cmp	r1, #0
	moveq	r3, r4
	bne	.L168
.L173:
	cmp	r2, r0
	bcs	.L210
	b	.L238
.L218:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L240
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L208
.L250:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	ldr	r4, [sp, #12]
	b	.L210
.L253:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	b	.L165
.L219:
	mov	r4, r8
.L168:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L239
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L173
.L257:
	mov	r4, ip
	b	.L192
.L180:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L186
	b	.L258
.L256:
	mov	r4, r3
.L186:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L256
	cmp	r0, #0
	moveq	r3, r4
	bne	.L182
.L187:
	cmp	r2, r1
	bcs	.L210
	b	.L238
.L249:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	ldr	r4, [sp, #12]
	b	.L210
.L254:
	ldr	r3, [r4]
.L181:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	b	.L165
.L240:
	mov	r2, r4
.L239:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE9_M_insertEPNS_18_Rb_tree_node_baseESI_RKSA_SI_(PLT)
	ldr	r4, [sp, #12]
	b	.L210
.L258:
	mov	r4, ip
.L182:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L240
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L187
.L244:
	str	r3, [r5]
	b	.L165
	.size	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_, .-_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_
	.section	.text._ZN16CollisionManager13GetCollisionsEP10GameSprite,"ax",%progbits
	.align	2
	.global	_ZN16CollisionManager13GetCollisionsEP10GameSprite
	.hidden	_ZN16CollisionManager13GetCollisionsEP10GameSprite
	.type	_ZN16CollisionManager13GetCollisionsEP10GameSprite, %function
_ZN16CollisionManager13GetCollisionsEP10GameSprite:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	ip, r1
	ldr	r5, [r0, #24]
	sub	sp, sp, #28
	mov	r4, r5
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L260
.L264:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	r4, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L264
	cmp	r5, r4
	beq	.L260
	ldr	r3, [r4, #16]
	cmp	r3, ip
	bls	.L265
.L260:
	mov	lr, #0
	add	r1, r0, #24
	mov	r2, sp
	add	r0, sp, #4
	add	r3, sp, #8
	str	r4, [sp]
	str	ip, [sp, #8]
	str	lr, [sp, #12]
	str	lr, [sp, #20]
	str	lr, [sp, #16]
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_(PLT)
	ldr	r0, [sp, #12]
	ldr	r4, [sp, #4]
	cmp	r0, #0
	beq	.L265
	bl	free(PLT)
.L265:
	add	r0, r4, #20
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, pc}
	.size	_ZN16CollisionManager13GetCollisionsEP10GameSprite, .-_ZN16CollisionManager13GetCollisionsEP10GameSprite
	.global	__aeabi_fcmpeq
	.global	__aeabi_fsub
	.global	__aeabi_fdiv
	.global	__aeabi_fadd
	.global	__aeabi_fmul
	.global	__aeabi_fcmpge
	.section	.text._ZN16CollisionManager6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN16CollisionManager6UpdateEf
	.hidden	_ZN16CollisionManager6UpdateEf
	.type	_ZN16CollisionManager6UpdateEf, %function
_ZN16CollisionManager6UpdateEf:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #108
	ldr	r3, [r0, #28]
	add	ip, r0, #24
	cmp	r3, #0
	mov	r9, r0
	str	ip, [sp, #48]
	bne	.L356
	ldr	r4, [r9, #12]
	ldr	r5, [r9, #16]
	cmp	r4, r5
	beq	.L357
.L272:
	ldr	r2, [r9, #4]
	ldr	r6, [r9]
	add	r4, r4, #4
.L281:
	cmp	r6, r2
	beq	.L328
	ldr	r3, [r6]
	ldr	ip, [r4, #-4]
	cmp	r3, ip
	addne	r3, r6, #4
	bne	.L277
	b	.L363
.L279:
	ldr	r1, [r0]
	add	r3, r3, #4
	cmp	r1, ip
	beq	.L275
.L277:
	cmp	r3, r2
	mov	r0, r3
	bne	.L279
	mov	r2, r3
.L274:
	cmp	r4, r5
	add	r4, r4, #4
	bne	.L281
	ldr	r4, [r9, #12]
.L273:
	cmp	r2, r6
	str	r4, [r9, #16]
	beq	.L270
	rsb	r2, r6, r2
	mov	r10, r2, asr #2
	subs	ip, r10, #1
	str	ip, [sp, #44]
	beq	.L270
	mov	ip, #1
	str	ip, [sp, #4]
	add	ip, sp, #84
	str	ip, [sp, #52]
	add	ip, sp, #80
	str	ip, [sp, #56]
	add	ip, sp, #88
	str	ip, [sp, #60]
	ldr	ip, [sp, #4]
	mov	fp, r9
.L321:
	sub	r3, ip, #-1073741823
	mov	r1, #0
	ldr	r4, [r6, r3, asl #2]
	mov	r3, r3, asl #2
	str	r3, [sp, #24]
	ldr	ip, [r4, #236]	@ float
	mov	r0, ip
	str	ip, [sp, #16]	@ float
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	bne	.L355
	ldrb	r3, [r4, #232]	@ zero_extendqisi2
	ldr	ip, [sp, #4]
	cmp	r3, #0
	beq	.L354
	cmp	r10, ip
	ldr	ip, [r4, #4]	@ float
	ldr	r4, [r4, #8]	@ float
	str	ip, [sp, #36]	@ float
	str	r4, [sp, #40]	@ float
	bls	.L355
	ldr	ip, [sp, #4]
	add	ip, ip, #1
	str	ip, [sp, #28]
	mov	r8, ip
	ldr	ip, [sp, #24]
	add	r9, ip, #4
	b	.L322
.L320:
	ldr	r6, [fp]
	add	r8, r8, #1
.L322:
	ldr	r4, [r6, r9]
	mov	r1, #0
	ldr	r5, [r4, #236]	@ float
	mov	r0, r5
	bl	__aeabi_fcmpeq(PLT)
	cmp	r0, #0
	bne	.L286
	ldrb	r3, [r4, #232]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L286
	mov	r1, r5
	ldr	r0, [sp, #16]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r1, r0
	bl	__aeabi_fmul(PLT)
	ldr	r1, [sp, #36]	@ float
	mov	r7, r0
	ldr	r0, [r4, #4]	@ float
	bl	__aeabi_fsub(PLT)
	ldr	r1, [sp, #40]	@ float
	mov	r6, r0
	ldr	r0, [r4, #8]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r1, r6
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_fmul(PLT)
	mov	r1, r4
	mov	r5, r0
	mov	r0, r4
	bl	__aeabi_fmul(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r5, r0
	mov	r1, r5
	mov	r0, r7
	bl	__aeabi_fcmpge(PLT)
	cmp	r0, #0
	bne	.L359
.L286:
	cmp	r10, r8
	add	r9, r9, #4
	bne	.L320
	ldr	ip, [sp, #44]
	ldr	r1, [sp, #4]
	cmp	ip, r1
	bls	.L270
.L360:
	ldr	ip, [sp, #28]
	ldr	r6, [fp]
	str	ip, [sp, #4]
	b	.L321
.L355:
	ldr	ip, [sp, #4]
.L354:
	add	ip, ip, #1
	str	ip, [sp, #28]
	ldr	r1, [sp, #4]
	ldr	ip, [sp, #44]
	cmp	ip, r1
	bhi	.L360
.L270:
	add	sp, sp, #108
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L359:
	mov	r0, r5
	bl	sqrtf(PLT)
	mov	r5, r0
	mov	r0, r7
	bl	sqrtf(PLT)
	mov	r1, r5
	bl	__aeabi_fsub(PLT)
	mov	r1, r5
	str	r0, [sp, #32]	@ float
	mov	r0, r6
	bl	__aeabi_fdiv(PLT)
	mov	r1, r5
	str	r0, [sp, #8]	@ float
	mov	r0, r4
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [fp]
	ldr	ip, [r3, r9]
	str	ip, [sp]
	ldr	ip, [ip, #240]
	str	ip, [sp, #20]
	ldr	ip, [sp, #24]
	ldr	r3, [r3, ip]
	str	r0, [sp, #12]	@ float
	ldr	r0, [fp, #24]
	mov	r4, r0
	ldr	r2, [r0, #4]
	cmp	r2, #0
	beq	.L293
.L292:
	ldr	r1, [r2, #16]
	cmp	r1, r3
	movcs	r4, r2
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #8]
	cmp	r2, #0
	bne	.L292
	cmp	r0, r4
	beq	.L293
	ldr	r2, [r4, #16]
	cmp	r2, r3
	bls	.L294
.L293:
	mov	ip, #0
	add	r0, sp, #84
	str	r3, [sp, #88]
	ldr	r1, [sp, #48]
	add	r2, sp, #80
	add	r3, sp, #88
	str	r4, [sp, #80]
	str	ip, [sp, #92]
	str	ip, [sp, #100]
	str	ip, [sp, #96]
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_(PLT)
	ldr	r0, [sp, #92]
	ldr	r4, [sp, #84]
	cmp	r0, #0
	beq	.L294
	bl	free(PLT)
.L294:
	ldr	r6, [r4, #24]
	ldr	r3, [r4, #28]
	cmp	r6, r3
	beq	.L295
	ldr	ip, [sp, #32]	@ float
	str	ip, [r6]	@ float
	ldr	ip, [sp, #20]
	str	ip, [r6, #4]
	ldr	ip, [sp]
	str	ip, [r6, #8]
	ldr	ip, [sp, #8]	@ float
	str	ip, [r6, #12]	@ float
	ldr	ip, [sp, #12]	@ float
	str	ip, [r6, #16]	@ float
	ldr	r3, [r4, #24]
	add	r3, r3, #20
	str	r3, [r4, #24]
.L296:
	ldr	r3, [fp]
	ldr	ip, [sp, #24]
	ldr	r0, [fp, #24]
	ldr	r2, [sp, #8]
	ldr	ip, [r3, ip]
	add	r2, r2, #-2147483648
	ldr	r1, [sp, #12]
	str	r2, [sp, #20]
	ldr	r2, [r0, #4]
	str	ip, [sp]
	ldr	ip, [ip, #240]
	add	r1, r1, #-2147483648
	cmp	r2, #0
	str	r1, [sp, #12]
	str	ip, [sp, #8]
	ldr	r3, [r3, r9]
	mov	r4, r0
	beq	.L309
.L308:
	ldr	r1, [r2, #16]
	cmp	r3, r1
	movls	r4, r2
	ldrhi	r2, [r2, #12]
	ldrls	r2, [r2, #8]
	cmp	r2, #0
	bne	.L308
	cmp	r4, r0
	beq	.L309
	ldr	r2, [r4, #16]
	cmp	r3, r2
	bcs	.L310
.L309:
	mov	ip, #0
	add	r0, sp, #84
	str	r3, [sp, #88]
	ldr	r1, [sp, #48]
	add	r2, sp, #80
	add	r3, sp, #88
	str	r4, [sp, #80]
	str	ip, [sp, #92]
	str	ip, [sp, #100]
	str	ip, [sp, #96]
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE13insert_uniqueENS_17_Rb_tree_iteratorISA_NS_16_Nonconst_traitsISA_EEEERKSA_(PLT)
	ldr	r0, [sp, #92]
	ldr	r4, [sp, #84]
	cmp	r0, #0
	beq	.L310
	bl	free(PLT)
.L310:
	ldr	r6, [r4, #24]
	ldr	r3, [r4, #28]
	cmp	r6, r3
	beq	.L311
	ldr	ip, [sp, #32]	@ float
	str	ip, [r6]	@ float
	ldr	ip, [sp, #8]
	str	ip, [r6, #4]
	ldr	ip, [sp]
	str	ip, [r6, #8]
	ldr	ip, [sp, #20]	@ float
	str	ip, [r6, #12]	@ float
	ldr	ip, [sp, #12]	@ float
	str	ip, [r6, #16]	@ float
	ldr	r3, [r4, #24]
	add	r3, r3, #20
	str	r3, [r4, #24]
	b	.L286
.L363:
	mov	r0, r6
.L275:
	add	r1, r0, #4
	cmp	r1, r2
	beq	.L278
	rsb	r2, r1, r2
	bl	memmove(PLT)
	ldr	r2, [r9, #4]
	ldr	r6, [r9]
	ldr	r5, [r9, #16]
.L278:
	sub	r2, r2, #4
	str	r2, [r9, #4]
	b	.L274
.L295:
	ldr	ip, [r4, #20]
	rsb	r3, ip, r6
	str	ip, [sp, #64]
	mov	r3, r3, asr #2
	add	r2, r3, r3, asl #1
	add	r2, r2, r2, asl #4
	add	r2, r2, r2, asl #8
	add	r2, r2, r2, asl #16
	adds	r3, r3, r2, asl #2
	beq	.L331
	movs	r3, r3, asl #1
	streq	r3, [sp, #72]
	streq	r3, [sp, #68]
	moveq	r5, #20
	bne	.L297
.L298:
	ldr	ip, [sp, #64]
	cmp	r6, ip
	beq	.L333
	mov	r7, ip
	ldr	ip, [sp, #68]
	str	r9, [sp, #76]
	add	r3, ip, #20
	mov	r9, r3
.L302:
	mov	r5, r7
	sub	ip, r9, #20
	ldmia	r5!, {r0, r1, r2, r3}
	add	r7, r7, #20
	cmp	r6, r7
	add	r9, r9, #20
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [ip]
	bne	.L302
	ldr	ip, [sp, #64]
	ldr	r1, .L364
	add	r3, ip, #20
	rsb	r3, r3, r6
	ldr	ip, [sp, #68]
	mov	r3, r3, lsr #2
	ldr	r9, [sp, #76]
	mul	r3, r1, r3
	bic	r3, r3, #-1073741824
	add	r3, r3, #1
	add	r3, r3, r3, asl #2
	add	r3, ip, r3, asl #2
	add	r5, r3, #20
.L300:
	ldr	ip, [sp, #32]	@ float
	str	ip, [r3]	@ float
	ldr	ip, [sp, #20]
	str	ip, [r3, #4]
	ldr	ip, [sp]
	str	ip, [r3, #8]
	ldr	ip, [sp, #8]	@ float
	str	ip, [r3, #12]	@ float
	ldr	ip, [sp, #12]	@ float
	str	ip, [r3, #16]	@ float
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L303
	bl	free(PLT)
.L303:
	ldr	ip, [sp, #68]
	ldr	r1, [sp, #72]
	str	ip, [r4, #20]
	add	r3, ip, r1
	str	r3, [r4, #28]
	str	r5, [r4, #24]
	b	.L296
.L311:
	ldr	ip, [r4, #20]
	rsb	r3, ip, r6
	str	ip, [sp, #64]
	mov	r3, r3, asr #2
	add	r2, r3, r3, asl #1
	add	r2, r2, r2, asl #4
	add	r2, r2, r2, asl #8
	add	r2, r2, r2, asl #16
	adds	r3, r3, r2, asl #2
	beq	.L334
	movs	r3, r3, asl #1
	streq	r3, [sp, #72]
	streq	r3, [sp, #68]
	moveq	r5, #20
	bne	.L313
.L314:
	ldr	ip, [sp, #64]
	cmp	ip, r6
	beq	.L336
	mov	r7, ip
	ldr	ip, [sp, #68]
	str	r9, [sp, #76]
	add	r3, ip, #20
	mov	r9, r3
.L318:
	mov	r5, r7
	sub	ip, r9, #20
	ldmia	r5!, {r0, r1, r2, r3}
	add	r7, r7, #20
	cmp	r6, r7
	add	r9, r9, #20
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [ip]
	bne	.L318
	ldr	ip, [sp, #64]
	ldr	r1, .L364
	add	r3, ip, #20
	rsb	r3, r3, r6
	ldr	ip, [sp, #68]
	mov	r3, r3, lsr #2
	ldr	r9, [sp, #76]
	mul	r3, r1, r3
	bic	r3, r3, #-1073741824
	add	r3, r3, #1
	add	r3, r3, r3, asl #2
	add	r3, ip, r3, asl #2
	add	r5, r3, #20
.L316:
	ldr	ip, [sp, #32]	@ float
	str	ip, [r3]	@ float
	ldr	ip, [sp, #8]
	str	ip, [r3, #4]
	ldr	ip, [sp]
	str	ip, [r3, #8]
	ldr	ip, [sp, #20]	@ float
	str	ip, [r3, #12]	@ float
	ldr	ip, [sp, #12]	@ float
	str	ip, [r3, #16]	@ float
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L319
	bl	free(PLT)
.L319:
	ldr	ip, [sp, #68]
	ldr	r1, [sp, #72]
	str	ip, [r4, #20]
	add	r3, ip, r1
	str	r3, [r4, #28]
	str	r5, [r4, #24]
	b	.L286
.L334:
	mov	r3, #1
.L313:
	add	r3, r3, r3, asl #2
	mov	r3, r3, asl #2
	mov	r0, r3
	str	r3, [sp, #72]
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [sp, #68]
	beq	.L361
.L315:
	ldr	ip, [sp, #68]
	add	r5, ip, #20
	b	.L314
.L331:
	mov	r3, #1
.L297:
	add	r3, r3, r3, asl #2
	mov	r3, r3, asl #2
	mov	r0, r3
	str	r3, [sp, #72]
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [sp, #68]
	beq	.L362
.L299:
	ldr	ip, [sp, #68]
	add	r5, ip, #20
	b	.L298
.L328:
	mov	r2, r6
	b	.L274
.L356:
	ldr	r3, [r0, #24]
	mov	r0, ip
	ldr	r1, [r3, #4]
	bl	_ZN4_STL8_Rb_treeIP10GameSpriteNS_4pairIKS2_NS_6vectorI9CollisionNS_9allocatorIS6_EEEEEENS_10_Select1stISA_EENS_4lessIS2_EENS7_ISA_EEE8_M_eraseEPNS_13_Rb_tree_nodeISA_EE(PLT)
	ldr	r2, [r9, #24]
	mov	r3, #0
	str	r2, [r2, #8]
	ldr	r2, [r9, #24]
	str	r3, [r2, #4]
	ldr	r2, [r9, #24]
	str	r2, [r2, #12]
	ldr	r4, [r9, #12]
	ldr	r5, [r9, #16]
	str	r3, [r9, #28]
	cmp	r4, r5
	bne	.L272
.L357:
	ldr	r6, [r9]
	ldr	r2, [r9, #4]
	b	.L273
.L336:
	ldr	r3, [sp, #68]
	b	.L316
.L333:
	ldr	r3, [sp, #68]
	b	.L300
.L362:
	ldr	r0, [sp, #72]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	ip, [r4, #20]
	str	ip, [sp, #64]
	str	r0, [sp, #68]
	b	.L299
.L361:
	ldr	r0, [sp, #72]
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	ldr	ip, [r4, #20]
	str	ip, [sp, #64]
	str	r0, [sp, #68]
	b	.L315
.L365:
	.align	2
.L364:
	.word	214748365
	.size	_ZN16CollisionManager6UpdateEf, .-_ZN16CollisionManager6UpdateEf
	.hidden	_ZN16CollisionManager9singletonE
	.global	_ZN16CollisionManager9singletonE
	.bss
	.align	2
	.type	_ZN16CollisionManager9singletonE, %object
	.size	_ZN16CollisionManager9singletonE, 4
_ZN16CollisionManager9singletonE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
