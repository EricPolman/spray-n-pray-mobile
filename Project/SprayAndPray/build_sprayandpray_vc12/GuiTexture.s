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
	.file	"GuiTexture.cpp"
	.section	.text._ZN10GuiTexture6UpdateEf,"ax",%progbits
	.align	2
	.global	_ZN10GuiTexture6UpdateEf
	.hidden	_ZN10GuiTexture6UpdateEf
	.type	_ZN10GuiTexture6UpdateEf, %function
_ZN10GuiTexture6UpdateEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN10GuiTexture6UpdateEf, .-_ZN10GuiTexture6UpdateEf
	.global	__aeabi_fdiv
	.section	.text._ZN10GuiTexture12UpdateLayoutEffff,"ax",%progbits
	.align	2
	.global	_ZN10GuiTexture12UpdateLayoutEffff
	.hidden	_ZN10GuiTexture12UpdateLayoutEffff
	.type	_ZN10GuiTexture12UpdateLayoutEffff, %function
_ZN10GuiTexture12UpdateLayoutEffff:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, [r0, #132]
	ldr	ip, [sp, #16]	@ float
	str	r3, [r4, #16]	@ float
	str	ip, [r4, #20]	@ float
	ldr	r3, [r0]
	mov	r5, r2
	mov	r6, r1
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	mov	r0, r6
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r4, #132]
	mov	r6, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	str	r6, [r4, #40]	@ float
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fdiv(PLT)
	str	r0, [r4, #44]	@ float
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN10GuiTexture12UpdateLayoutEffff, .-_ZN10GuiTexture12UpdateLayoutEffff
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
	beq	.L4
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L14
.L5:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L15
.L9:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #12]
	ldr	r3, [r5]
	ldr	r2, [r3, #12]
	cmp	r6, r2
	streq	r4, [r3, #12]
.L7:
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
.L14:
	cmp	r2, #0
	beq	.L16
.L4:
	mov	r0, #24
	bl	malloc(PLT)
	subs	r4, r0, #0
	beq	.L17
.L11:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	ldr	r3, [r8, #4]
	str	r3, [r4, #20]
	str	r4, [r6, #8]
	ldr	r3, [r5]
	cmp	r6, r3
	beq	.L18
	ldr	r2, [r3, #8]
	cmp	r6, r2
	streq	r4, [r3, #8]
	b	.L7
.L18:
	str	r4, [r6, #4]
	ldr	r3, [r5]
	str	r4, [r3, #12]
	b	.L7
.L17:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L11
.L15:
	mov	r0, #24
	bl	_ZN4_STL14__malloc_allocILi0EE13_S_oom_mallocEj(PLT)
	mov	r4, r0
	b	.L9
.L16:
	ldr	r2, [r8]
	ldr	r3, [r6, #16]
	cmp	r2, r3
	bcc	.L4
	b	.L5
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
	beq	.L95
	cmp	ip, r8
	beq	.L96
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	ip, [r2, #16]
	cmp	r1, ip
	bcc	.L97
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r3, [r4]
	ldr	r1, [r6]
	ldr	ip, [r3, #16]
	cmp	ip, r1
	bcs	.L98
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L56
	ldr	r2, [r0, #16]
	cmp	r1, r2
	bcs	.L57
.L56:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L89
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L19
.L97:
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bls	.L99
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L100
.L91:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
.L19:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L96:
	ldr	r3, [ip, #12]
	ldr	r8, [r6]
	ldr	r4, [r3, #16]
	cmp	r4, r8
	bcc	.L101
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L50
	b	.L111
.L102:
	mov	r4, r0
.L50:
	ldr	r3, [r4, #16]
	mov	r1, #1
	cmp	r8, r3
	movcs	r1, #0
	ldrcc	r0, [r4, #8]
	ldrcs	r0, [r4, #12]
	cmp	r0, #0
	bne	.L102
	cmp	r1, #0
	beq	.L80
	cmp	r2, r4
	beq	.L103
.L46:
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	r8, [r6]
	mov	ip, r4
	ldr	r3, [r0, #16]
	mov	r4, r0
.L51:
	cmp	r8, r3
	bhi	.L104
.L64:
	mov	r0, r5
	str	r4, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L99:
	mov	r0, r2
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
.L57:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	moveq	r4, ip
	beq	.L72
	ldr	r0, [r6]
	b	.L61
.L105:
	mov	r4, r3
.L61:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r0, r2
	movcs	r1, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L105
	cmp	r1, #0
	moveq	r3, r4
	bne	.L72
.L62:
	cmp	r0, r2
	bls	.L64
.L92:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L64
.L101:
	stmia	sp, {r6, ip}
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L95:
	ldr	r3, [r1, #4]
	cmp	r3, #0
	beq	.L106
	ldr	r2, [r6]
	ldr	r3, [ip, #16]
	cmp	r2, r3
	bcc	.L107
	strls	ip, [r0]
	bls	.L19
	mov	r0, ip
	bl	_ZN4_STL10_Rb_globalIbE12_M_incrementEPNS_18_Rb_tree_node_baseE(PLT)
	ldr	ip, [r7]
	cmp	ip, r0
	beq	.L108
	ldr	r1, [r6]
	ldr	r3, [r0, #16]
	cmp	r1, r3
	bcs	.L34
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L35
.L89:
	mov	r2, r0
	b	.L91
.L80:
	mov	ip, r4
	b	.L51
.L100:
	str	r0, [sp, #4]
	mov	r2, r3
	str	r6, [sp]
	mov	r3, r0
	mov	r1, r7
	mov	r0, r5
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L19
.L106:
	ldr	r4, [r8, #4]
	cmp	r4, #0
	beq	.L73
	ldr	r0, [r6]
	b	.L26
.L109:
	mov	r4, r3
.L26:
	ldr	r2, [r4, #16]
	mov	r1, #1
	cmp	r2, r0
	movls	r1, #0
	ldrhi	r3, [r4, #8]
	ldrls	r3, [r4, #12]
	cmp	r3, #0
	bne	.L109
	cmp	r1, #0
	moveq	r3, r4
	bne	.L22
.L27:
	cmp	r2, r0
	bcs	.L64
	b	.L92
.L72:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L94
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L62
.L104:
	mov	r2, #0
	str	r6, [sp]
	mov	r1, r7
	mov	r3, ip
	str	r2, [sp, #4]
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L64
.L107:
	mov	r2, ip
	mov	ip, #0
	str	r6, [sp]
	mov	r3, r2
	str	ip, [sp, #4]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L19
.L73:
	mov	r4, r8
.L22:
	cmp	ip, r4
	moveq	r2, ip
	beq	.L93
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r2, [r0, #16]
	mov	r4, r0
	ldr	r0, [r6]
	b	.L27
.L111:
	mov	r4, ip
	b	.L46
.L34:
	ldr	r4, [ip, #4]
	cmp	r4, #0
	bne	.L40
	b	.L112
.L110:
	mov	r4, r3
.L40:
	ldr	r2, [r4, #16]
	mov	r0, #1
	cmp	r1, r2
	movcs	r0, #0
	ldrcc	r3, [r4, #8]
	ldrcs	r3, [r4, #12]
	cmp	r3, #0
	bne	.L110
	cmp	r0, #0
	moveq	r3, r4
	bne	.L36
.L41:
	cmp	r2, r1
	bcs	.L64
	b	.L92
.L103:
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L64
.L108:
	ldr	r3, [r4]
.L35:
	str	r6, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	b	.L19
.L94:
	mov	r2, r4
.L93:
	mov	r0, #0
	str	r0, [sp, #4]
	str	r6, [sp]
	mov	r1, r7
	mov	r3, r2
	add	r0, sp, #12
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE9_M_insertEPNS_18_Rb_tree_node_baseESE_RKS5_SE_(PLT)
	ldr	r4, [sp, #12]
	b	.L64
.L112:
	mov	r4, ip
.L36:
	ldr	r3, [ip, #8]
	cmp	r3, r4
	beq	.L94
	mov	r0, r4
	bl	_ZN4_STL10_Rb_globalIbE12_M_decrementEPNS_18_Rb_tree_node_baseE(PLT)
	mov	r3, r4
	ldr	r1, [r6]
	ldr	r2, [r0, #16]
	mov	r4, r0
	b	.L41
.L98:
	str	r3, [r5]
	b	.L19
	.size	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_, .-_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_
	.section	.text._ZN10GuiTextureC2EPKcffff,"ax",%progbits
	.align	2
	.global	_ZN10GuiTextureC2EPKcffff
	.hidden	_ZN10GuiTextureC2EPKcffff
	.type	_ZN10GuiTextureC2EPKcffff, %function
_ZN10GuiTextureC2EPKcffff:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	mov	r6, r1
	mov	r7, r2
	mov	r8, r3
	mov	r5, r0
	ldr	r9, [sp, #60]	@ float
	bl	_ZN10GuiElementC2Ev(PLT)
	ldr	r3, .L138
	mov	r10, r5
.LPIC0:
	add	r3, pc, r3
	add	r3, r3, #8
	str	r3, [r10], #12
	ldr	r4, .L138+4
	mov	r0, r10
	bl	_ZN6SpriteC1Ev(PLT)
	ldr	r3, .L138+8
.LPIC1:
	add	r4, pc, r4
	mov	r1, r6
	ldr	r6, [r4, r3]
	ldr	r2, .L138+12
	mov	r3, #0
	ldr	r0, [r6]
.LPIC2:
	add	r2, pc, r2
	ldr	r0, [r0, #12]
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j(PLT)
	ldr	r3, .L138+16
	ldr	r1, [r6]
	ldr	r3, [r4, r3]
	ldr	r2, [r1, #12]
	ldr	r3, [r3]
	str	r2, [r3, #100]
	ldr	r2, [r1]
	ldr	lr, [r2, #4]
	cmp	lr, #0
	mov	fp, r0
	ldr	r4, [r0, #4]
	beq	.L119
	mov	r0, r2
	mov	ip, lr
.L118:
	ldr	r3, [ip, #16]
	cmp	r3, r4
	movcs	r0, ip
	ldrcc	ip, [ip, #12]
	ldrcs	ip, [ip, #8]
	cmp	ip, #0
	bne	.L118
	cmp	r2, r0
	beq	.L119
	ldr	r3, [r0, #16]
	cmp	r3, r4
	bls	.L137
.L119:
	mov	r0, r4
	bl	_Z23Iw2DCreateImageResourcej(PLT)
	ldr	r1, [r6]
	ldr	ip, [fp, #4]
	mov	r4, r0
	ldr	r0, [r1]
	mov	lr, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L126
.L125:
	ldr	r2, [r3, #16]
	cmp	r2, ip
	movcs	lr, r3
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #8]
	cmp	r3, #0
	bne	.L125
	cmp	lr, r0
	beq	.L126
	ldr	r3, [lr, #16]
	cmp	r3, ip
	bls	.L133
.L126:
	mov	r6, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	lr, [sp]
	str	ip, [sp, #8]
	str	r6, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	lr, [sp, #4]
.L133:
	str	r4, [lr, #20]
	mov	r1, r4
	b	.L127
.L137:
	mov	ip, r2
.L131:
	ldr	r3, [lr, #16]
	cmp	r3, r4
	movcs	ip, lr
	ldrcc	lr, [lr, #12]
	ldrcs	lr, [lr, #8]
	cmp	lr, #0
	bne	.L131
	cmp	r2, ip
	beq	.L132
	ldr	r3, [ip, #16]
	cmp	r3, r4
	bls	.L134
.L132:
	mov	lr, #0
	add	r0, sp, #4
	mov	r2, sp
	add	r3, sp, #8
	str	ip, [sp]
	str	r4, [sp, #8]
	str	lr, [sp, #12]
	bl	_ZN4_STL8_Rb_treeIjNS_4pairIKjP10CIw2DImageEENS_10_Select1stIS5_EENS_4lessIjEENS_9allocatorIS5_EEE13insert_uniqueENS_17_Rb_tree_iteratorIS5_NS_16_Nonconst_traitsIS5_EEEERKS5_(PLT)
	ldr	ip, [sp, #4]
.L134:
	ldr	r1, [ip, #20]
.L127:
	mov	r0, r10
	bl	_ZN6Sprite8SetImageEP10CIw2DImage(PLT)
	ldr	r0, [r5, #132]
	str	r7, [r5, #16]	@ float
	str	r8, [r5, #20]	@ float
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	mov	r1, r0
	ldr	r0, [sp, #56]	@ float
	bl	__aeabi_fdiv(PLT)
	ldr	r3, [r5, #132]
	mov	r4, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	str	r4, [r5, #40]	@ float
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_fdiv(PLT)
	mov	r3, #4
	str	r3, [r5, #4]
	str	r0, [r5, #44]	@ float
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L139:
	.align	2
.L138:
	.word	.LANCHOR0-(.LPIC0+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	_ZN12ImageManager9singletonE(GOT)
	.word	.LC0-(.LPIC2+8)
	.word	g_IwResManager(GOT)
	.size	_ZN10GuiTextureC2EPKcffff, .-_ZN10GuiTextureC2EPKcffff
	.global	_ZN10GuiTextureC1EPKcffff
	.hidden	_ZN10GuiTextureC1EPKcffff
	.set	_ZN10GuiTextureC1EPKcffff,_ZN10GuiTextureC2EPKcffff
	.section	.text._ZN10GuiTextureD2Ev,"ax",%progbits
	.align	2
	.global	_ZN10GuiTextureD2Ev
	.hidden	_ZN10GuiTextureD2Ev
	.type	_ZN10GuiTextureD2Ev, %function
_ZN10GuiTextureD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L141
	stmfd	sp!, {r4, lr}
.LPIC3:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #12
	bl	_ZN6SpriteD1Ev(PLT)
	mov	r0, r4
	bl	_ZN10GuiElementD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L142:
	.align	2
.L141:
	.word	.LANCHOR0-(.LPIC3+8)
	.size	_ZN10GuiTextureD2Ev, .-_ZN10GuiTextureD2Ev
	.global	_ZN10GuiTextureD1Ev
	.hidden	_ZN10GuiTextureD1Ev
	.set	_ZN10GuiTextureD1Ev,_ZN10GuiTextureD2Ev
	.section	.text._ZN10GuiTextureD0Ev,"ax",%progbits
	.align	2
	.global	_ZN10GuiTextureD0Ev
	.hidden	_ZN10GuiTextureD0Ev
	.type	_ZN10GuiTextureD0Ev, %function
_ZN10GuiTextureD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L144
	stmfd	sp!, {r4, lr}
.LPIC4:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0], #12
	bl	_ZN6SpriteD1Ev(PLT)
	mov	r0, r4
	bl	_ZN10GuiElementD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L145:
	.align	2
.L144:
	.word	.LANCHOR0-(.LPIC4+8)
	.size	_ZN10GuiTextureD0Ev, .-_ZN10GuiTextureD0Ev
	.section	.text._ZN10GuiTexture6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN10GuiTexture6RenderEv
	.hidden	_ZN10GuiTexture6RenderEv
	.type	_ZN10GuiTexture6RenderEv, %function
_ZN10GuiTexture6RenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #12
	b	_ZN6Sprite6RenderEv(PLT)
	.size	_ZN10GuiTexture6RenderEv, .-_ZN10GuiTexture6RenderEv
	.hidden	_ZTS10GuiTexture
	.global	_ZTS10GuiTexture
	.hidden	_ZTI10GuiTexture
	.global	_ZTI10GuiTexture
	.hidden	_ZTV10GuiTexture
	.global	_ZTV10GuiTexture
	.section	.rodata
	.align	2
	.type	_ZTS10GuiTexture, %object
	.size	_ZTS10GuiTexture, 13
_ZTS10GuiTexture:
	.ascii	"10GuiTexture\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV10GuiTexture, %object
	.size	_ZTV10GuiTexture, 28
_ZTV10GuiTexture:
	.word	0
	.word	_ZTI10GuiTexture
	.word	_ZN10GuiTextureD1Ev
	.word	_ZN10GuiTextureD0Ev
	.word	_ZN10GuiTexture6UpdateEf
	.word	_ZN10GuiTexture12UpdateLayoutEffff
	.word	_ZN10GuiTexture6RenderEv
	.type	_ZTI10GuiTexture, %object
	.size	_ZTI10GuiTexture, 12
_ZTI10GuiTexture:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS10GuiTexture
	.word	_ZTI10GuiElement
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"CIwTexture\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
