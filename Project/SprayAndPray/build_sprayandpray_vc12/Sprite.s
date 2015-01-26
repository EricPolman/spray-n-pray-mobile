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
	.file	"Sprite.cpp"
	.section	.text._ZN6SpriteD2Ev,"ax",%progbits
	.align	2
	.global	_ZN6SpriteD2Ev
	.hidden	_ZN6SpriteD2Ev
	.type	_ZN6SpriteD2Ev, %function
_ZN6SpriteD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2
	stmfd	sp!, {r4, lr}
.LPIC0:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN18Iw2DSceneGraphCore5CNodeD2Ev(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN6SpriteD2Ev, .-_ZN6SpriteD2Ev
	.global	_ZN6SpriteD1Ev
	.hidden	_ZN6SpriteD1Ev
	.set	_ZN6SpriteD1Ev,_ZN6SpriteD2Ev
	.section	.text._ZN6SpriteD0Ev,"ax",%progbits
	.align	2
	.global	_ZN6SpriteD0Ev
	.hidden	_ZN6SpriteD0Ev
	.type	_ZN6SpriteD0Ev, %function
_ZN6SpriteD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L5
	stmfd	sp!, {r4, lr}
.LPIC1:
	add	r3, pc, r3
	add	r3, r3, #8
	mov	r4, r0
	str	r3, [r0]
	bl	_ZN18Iw2DSceneGraphCore5CNodeD2Ev(PLT)
	mov	r0, r4
	bl	_ZdlPv(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	_ZN6SpriteD0Ev, .-_ZN6SpriteD0Ev
	.section	.text._ZN6SpriteC2Ev,"ax",%progbits
	.align	2
	.global	_ZN6SpriteC2Ev
	.hidden	_ZN6SpriteC2Ev
	.type	_ZN6SpriteC2Ev, %function
_ZN6SpriteC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN18Iw2DSceneGraphCore5CNodeC2Ev(PLT)
	ldr	r1, .L8
	mov	r2, #0
.LPIC2:
	add	r1, pc, r1
	add	r1, r1, #8
	mov	r3, #0
	str	r1, [r4]
	str	r2, [r4, #116]	@ float
	str	r3, [r4, #120]
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	_ZN6SpriteC2Ev, .-_ZN6SpriteC2Ev
	.global	_ZN6SpriteC1Ev
	.hidden	_ZN6SpriteC1Ev
	.set	_ZN6SpriteC1Ev,_ZN6SpriteC2Ev
	.global	__aeabi_fcmpgt
	.section	.text._Z5zSortPN18Iw2DSceneGraphCore5CNodeES1_,"ax",%progbits
	.align	2
	.global	_Z5zSortPN18Iw2DSceneGraphCore5CNodeES1_
	.hidden	_Z5zSortPN18Iw2DSceneGraphCore5CNodeES1_
	.type	_Z5zSortPN18Iw2DSceneGraphCore5CNodeES1_, %function
_Z5zSortPN18Iw2DSceneGraphCore5CNodeES1_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, [r0, #116]	@ float
	ldr	r1, [r1, #116]	@ float
	bl	__aeabi_fcmpgt(PLT)
	mov	r3, #1
	cmp	r0, #0
	moveq	r3, r0
	uxtb	r0, r3
	ldmfd	sp!, {r3, pc}
	.size	_Z5zSortPN18Iw2DSceneGraphCore5CNodeES1_, .-_Z5zSortPN18Iw2DSceneGraphCore5CNodeES1_
	.section	.text._ZN6Sprite8SetImageEP10CIw2DImage,"ax",%progbits
	.align	2
	.global	_ZN6Sprite8SetImageEP10CIw2DImage
	.hidden	_ZN6Sprite8SetImageEP10CIw2DImage
	.type	_ZN6Sprite8SetImageEP10CIw2DImage, %function
_ZN6Sprite8SetImageEP10CIw2DImage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #120]
	bx	lr
	.size	_ZN6Sprite8SetImageEP10CIw2DImage, .-_ZN6Sprite8SetImageEP10CIw2DImage
	.section	.text._ZN6Sprite6UpdateEff,"ax",%progbits
	.align	2
	.global	_ZN6Sprite6UpdateEff
	.hidden	_ZN6Sprite6UpdateEff
	.type	_ZN6Sprite6UpdateEff, %function
_ZN6Sprite6UpdateEff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_ZN18Iw2DSceneGraphCore5CNode6UpdateEff(PLT)
	.size	_ZN6Sprite6UpdateEff, .-_ZN6Sprite6UpdateEff
	.global	__aeabi_ui2f
	.global	__aeabi_fcmplt
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.section	.text._ZN6Sprite6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN6Sprite6RenderEv
	.hidden	_ZN6Sprite6RenderEv
	.type	_ZN6Sprite6RenderEv, %function
_ZN6Sprite6RenderEv:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	ldr	r0, [r0, #120]
	ldr	r4, .L26
	cmp	r0, #0
.LPIC3:
	add	r4, pc, r4
	sub	sp, sp, #36
	beq	.L16
	ldr	r3, [r0]
	ldr	r5, [r10, #4]	@ float
	ldr	r7, [r10, #8]	@ float
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r10, #120]
	ldr	r8, [r10, #28]	@ float
	mov	r9, r0
	mov	r0, r3
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, .L26+4
	ldr	r2, [r10, #32]	@ float
	str	r2, [sp, #12]	@ float
	ldr	r3, [r4, r3]
	ldr	r6, [r3]
	mov	fp, r0
	ldr	r0, [r6, #536]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	beq	.L16
	mov	r1, r8
	mov	r0, r9
	bl	__aeabi_fmul(PLT)
	mov	r8, r0
	mov	r1, r8
	mov	r0, r5
	bl	__aeabi_fadd(PLT)
	mov	r1, #0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	beq	.L16
	ldr	r0, [r6, #540]
	bl	__aeabi_ui2f(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	__aeabi_fcmplt(PLT)
	cmp	r0, #0
	beq	.L16
	ldr	r1, [sp, #12]	@ float
	mov	r0, fp
	bl	__aeabi_fmul(PLT)
	mov	r6, r0
	mov	r1, r6
	mov	r0, r7
	bl	__aeabi_fadd(PLT)
	mov	r1, #0
	bl	__aeabi_fcmpgt(PLT)
	cmp	r0, #0
	beq	.L16
	str	r6, [sp, #28]	@ float
	ldr	r3, [sp, #28]
	add	r2, sp, #16
	str	r8, [sp, #24]	@ float
	ldr	r0, [r10, #120]
	str	r5, [sp, #16]	@ float
	str	r3, [sp]
	str	r7, [sp, #20]	@ float
	ldr	r3, [sp, #24]
	ldmia	r2, {r1, r2}
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwFVec2S1_(PLT)
.L16:
	mov	r0, r10
	bl	_ZN18Iw2DSceneGraphCore5CNode6RenderEv(PLT)
	ldr	r3, .L26+8
	ldr	r0, [r4, r3]
	add	sp, sp, #36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	_Z22Iw2DSetTransformMatrixRK9CIwFMat2D(PLT)
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	g_IwGxState(GOT)
	.word	_ZN9CIwFMat2D10g_IdentityE(GOT)
	.size	_ZN6Sprite6RenderEv, .-_ZN6Sprite6RenderEv
	.hidden	_ZTS6Sprite
	.global	_ZTS6Sprite
	.hidden	_ZTI6Sprite
	.global	_ZTI6Sprite
	.hidden	_ZTV6Sprite
	.global	_ZTV6Sprite
	.section	.rodata
	.align	2
	.type	_ZTS6Sprite, %object
	.size	_ZTS6Sprite, 8
_ZTS6Sprite:
	.ascii	"6Sprite\000"
	.section	.data.rel.ro,"aw",%progbits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV6Sprite, %object
	.size	_ZTV6Sprite, 24
_ZTV6Sprite:
	.word	0
	.word	_ZTI6Sprite
	.word	_ZN6SpriteD1Ev
	.word	_ZN6SpriteD0Ev
	.word	_ZN6Sprite6UpdateEff
	.word	_ZN6Sprite6RenderEv
	.type	_ZTI6Sprite, %object
	.size	_ZTI6Sprite, 12
_ZTI6Sprite:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS6Sprite
	.word	_ZTIN18Iw2DSceneGraphCore5CNodeE
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
