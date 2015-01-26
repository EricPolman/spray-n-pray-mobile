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
	.file	"Input.cpp"
	.section	.text._Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent,"ax",%progbits
	.align	2
	.global	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.hidden	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.type	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent, %function
_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r6, .L34
.LPIC10:
	add	r6, pc, r6
	ldr	r5, [r6, #320]
	cmp	r5, #0
	beq	.L32
.L2:
	ldr	r2, .L34+4
	ldr	r3, [r4]
.LPIC14:
	add	r2, pc, r2
	ldr	r1, [r2, #28]
	cmp	r3, r1
	beq	.L17
	ldrb	r1, [r2, #24]	@ zero_extendqisi2
	ldr	r0, [r2, #60]
	cmp	r1, #0
	moveq	r1, r2
	movne	r1, #0
	cmp	r3, r0
	beq	.L19
	ldrb	r0, [r2, #56]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #32
	ldr	r2, .L34+8
.LPIC18:
	add	r2, pc, r2
	ldr	r0, [r2, #92]
	cmp	r3, r0
	beq	.L20
	ldrb	r0, [r2, #88]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #64
	ldr	r2, .L34+12
.LPIC20:
	add	r2, pc, r2
	ldr	r0, [r2, #124]
	cmp	r3, r0
	beq	.L21
	ldrb	r0, [r2, #120]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #96
	ldr	r2, .L34+16
.LPIC22:
	add	r2, pc, r2
	ldr	r0, [r2, #156]
	cmp	r3, r0
	beq	.L22
	ldrb	r0, [r2, #152]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #128
	ldr	r2, .L34+20
.LPIC24:
	add	r2, pc, r2
	ldr	r0, [r2, #188]
	cmp	r3, r0
	beq	.L23
	ldrb	r0, [r2, #184]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #160
	ldr	r2, .L34+24
.LPIC26:
	add	r2, pc, r2
	ldr	r0, [r2, #220]
	cmp	r3, r0
	beq	.L24
	ldrb	r0, [r2, #216]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #192
	ldr	r2, .L34+28
.LPIC28:
	add	r2, pc, r2
	ldr	r0, [r2, #252]
	cmp	r3, r0
	beq	.L25
	ldrb	r0, [r2, #248]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #224
	ldr	r2, .L34+32
.LPIC30:
	add	r2, pc, r2
	ldr	r0, [r2, #284]
	cmp	r3, r0
	beq	.L26
	ldrb	r0, [r2, #280]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #256
	ldr	r2, .L34+36
.LPIC32:
	add	r2, pc, r2
	ldr	r0, [r2, #316]
	cmp	r3, r0
	moveq	r3, #9
	beq	.L3
	ldrb	r0, [r2, #312]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L33
	add	r1, r2, #288
.L15:
	mov	r2, r1
	str	r3, [r1, #28]
.L14:
	ldr	r3, [r4, #4]
	str	r3, [r2]
	ldr	r3, [r4, #8]
	str	r3, [r2, #4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L33:
	cmp	r1, #0
	bne	.L15
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L26:
	mov	r3, #8
.L3:
	ldr	r2, .L34+40
.LPIC33:
	add	r2, pc, r2
	add	r2, r2, r3, asl #5
	b	.L14
.L32:
	mov	r0, #1
	bl	_Znwj(PLT)
	ldr	r1, .L34+44
	mov	r2, r5
.LPIC11:
	add	r1, pc, r1
	mov	r7, r0
	mov	r0, #2
	bl	s3ePointerRegister(PLT)
	ldr	r1, .L34+48
	mov	r2, r5
	mov	r0, #3
.LPIC12:
	add	r1, pc, r1
	bl	s3ePointerRegister(PLT)
	str	r7, [r6, #320]
	b	.L2
.L17:
	mov	r3, #0
	b	.L3
.L19:
	mov	r3, #1
	b	.L3
.L20:
	mov	r3, #2
	b	.L3
.L21:
	mov	r3, #3
	b	.L3
.L22:
	mov	r3, #4
	b	.L3
.L23:
	mov	r3, #5
	b	.L3
.L24:
	mov	r3, #6
	b	.L3
.L25:
	mov	r3, #7
	b	.L3
.L35:
	.align	2
.L34:
	.word	.LANCHOR0-(.LPIC10+8)
	.word	.LANCHOR0-(.LPIC14+8)
	.word	.LANCHOR0-(.LPIC18+8)
	.word	.LANCHOR0-(.LPIC20+8)
	.word	.LANCHOR0-(.LPIC22+8)
	.word	.LANCHOR0-(.LPIC24+8)
	.word	.LANCHOR0-(.LPIC26+8)
	.word	.LANCHOR0-(.LPIC28+8)
	.word	.LANCHOR0-(.LPIC30+8)
	.word	.LANCHOR0-(.LPIC32+8)
	.word	.LANCHOR0-(.LPIC33+8)
	.word	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent-(.LPIC11+8)
	.word	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent-(.LPIC12+8)
	.size	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent, .-_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.section	.text._Z18MultiTouchButtonCBP20s3ePointerTouchEvent,"ax",%progbits
	.align	2
	.global	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent
	.hidden	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent
	.type	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent, %function
_Z18MultiTouchButtonCBP20s3ePointerTouchEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r6, .L68
.LPIC45:
	add	r6, pc, r6
	ldr	r5, [r6, #320]
	cmp	r5, #0
	beq	.L66
.L37:
	ldr	r2, .L68+4
	ldr	r3, [r4]
.LPIC49:
	add	r2, pc, r2
	ldr	r1, [r2, #28]
	cmp	r3, r1
	beq	.L52
	ldrb	r1, [r2, #24]	@ zero_extendqisi2
	ldr	r0, [r2, #60]
	cmp	r1, #0
	moveq	r1, r2
	movne	r1, #0
	cmp	r3, r0
	beq	.L54
	ldrb	r0, [r2, #56]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #32
	ldr	r2, .L68+8
.LPIC53:
	add	r2, pc, r2
	ldr	r0, [r2, #92]
	cmp	r3, r0
	beq	.L55
	ldrb	r0, [r2, #88]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #64
	ldr	r2, .L68+12
.LPIC55:
	add	r2, pc, r2
	ldr	r0, [r2, #124]
	cmp	r3, r0
	beq	.L56
	ldrb	r0, [r2, #120]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #96
	ldr	r2, .L68+16
.LPIC57:
	add	r2, pc, r2
	ldr	r0, [r2, #156]
	cmp	r3, r0
	beq	.L57
	ldrb	r0, [r2, #152]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #128
	ldr	r2, .L68+20
.LPIC59:
	add	r2, pc, r2
	ldr	r0, [r2, #188]
	cmp	r3, r0
	beq	.L58
	ldrb	r0, [r2, #184]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #160
	ldr	r2, .L68+24
.LPIC61:
	add	r2, pc, r2
	ldr	r0, [r2, #220]
	cmp	r3, r0
	beq	.L59
	ldrb	r0, [r2, #216]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #192
	ldr	r2, .L68+28
.LPIC63:
	add	r2, pc, r2
	ldr	r0, [r2, #252]
	cmp	r3, r0
	beq	.L60
	ldrb	r0, [r2, #248]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #224
	ldr	r2, .L68+32
.LPIC65:
	add	r2, pc, r2
	ldr	r0, [r2, #284]
	cmp	r3, r0
	beq	.L61
	ldrb	r0, [r2, #280]	@ zero_extendqisi2
	cmp	r0, #0
	addeq	r1, r2, #256
	ldr	r2, .L68+36
.LPIC67:
	add	r2, pc, r2
	ldr	r0, [r2, #316]
	cmp	r3, r0
	moveq	r3, #9
	beq	.L38
	ldrb	r0, [r2, #312]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L67
	add	r1, r2, #288
.L50:
	mov	r2, r1
	str	r3, [r1, #28]
.L49:
	ldr	r3, [r4, #4]
	adds	r3, r3, #0
	movne	r3, #1
	strb	r3, [r2, #24]
	ldr	r3, [r4, #8]
	str	r3, [r2]
	ldr	r3, [r4, #12]
	str	r3, [r2, #4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L67:
	cmp	r1, #0
	bne	.L50
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L61:
	mov	r3, #8
.L38:
	ldr	r2, .L68+40
.LPIC68:
	add	r2, pc, r2
	add	r2, r2, r3, asl #5
	b	.L49
.L66:
	mov	r0, #1
	bl	_Znwj(PLT)
	ldr	r1, .L68+44
	mov	r2, r5
.LPIC46:
	add	r1, pc, r1
	mov	r7, r0
	mov	r0, #2
	bl	s3ePointerRegister(PLT)
	ldr	r1, .L68+48
	mov	r2, r5
	mov	r0, #3
.LPIC47:
	add	r1, pc, r1
	bl	s3ePointerRegister(PLT)
	str	r7, [r6, #320]
	b	.L37
.L52:
	mov	r3, #0
	b	.L38
.L54:
	mov	r3, #1
	b	.L38
.L55:
	mov	r3, #2
	b	.L38
.L56:
	mov	r3, #3
	b	.L38
.L57:
	mov	r3, #4
	b	.L38
.L58:
	mov	r3, #5
	b	.L38
.L59:
	mov	r3, #6
	b	.L38
.L60:
	mov	r3, #7
	b	.L38
.L69:
	.align	2
.L68:
	.word	.LANCHOR0-(.LPIC45+8)
	.word	.LANCHOR0-(.LPIC49+8)
	.word	.LANCHOR0-(.LPIC53+8)
	.word	.LANCHOR0-(.LPIC55+8)
	.word	.LANCHOR0-(.LPIC57+8)
	.word	.LANCHOR0-(.LPIC59+8)
	.word	.LANCHOR0-(.LPIC61+8)
	.word	.LANCHOR0-(.LPIC63+8)
	.word	.LANCHOR0-(.LPIC65+8)
	.word	.LANCHOR0-(.LPIC67+8)
	.word	.LANCHOR0-(.LPIC68+8)
	.word	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent-(.LPIC46+8)
	.word	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent-(.LPIC47+8)
	.size	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent, .-_Z18MultiTouchButtonCBP20s3ePointerTouchEvent
	.section	.text._ZN5Input8GetTouchEi,"ax",%progbits
	.align	2
	.global	_ZN5Input8GetTouchEi
	.hidden	_ZN5Input8GetTouchEi
	.type	_ZN5Input8GetTouchEi, %function
_ZN5Input8GetTouchEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L97
.LPIC80:
	add	r3, pc, r3
	ldr	r2, [r3, #28]
	cmp	r2, r1
	beq	.L84
	ldrb	r0, [r3, #24]	@ zero_extendqisi2
	ldr	r2, [r3, #60]
	cmp	r0, #0
	moveq	r0, r3
	movne	r0, #0
	cmp	r2, r1
	beq	.L86
	ldrb	r2, [r3, #56]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #32
	ldr	r3, .L97+4
.LPIC84:
	add	r3, pc, r3
	ldr	r2, [r3, #92]
	cmp	r2, r1
	beq	.L87
	ldrb	r2, [r3, #88]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #64
	ldr	r3, .L97+8
.LPIC86:
	add	r3, pc, r3
	ldr	r2, [r3, #124]
	cmp	r2, r1
	beq	.L88
	ldrb	r2, [r3, #120]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #96
	ldr	r3, .L97+12
.LPIC88:
	add	r3, pc, r3
	ldr	r2, [r3, #156]
	cmp	r2, r1
	beq	.L89
	ldrb	r2, [r3, #152]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #128
	ldr	r3, .L97+16
.LPIC90:
	add	r3, pc, r3
	ldr	r2, [r3, #188]
	cmp	r2, r1
	beq	.L90
	ldrb	r2, [r3, #184]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #160
	ldr	r3, .L97+20
.LPIC92:
	add	r3, pc, r3
	ldr	r2, [r3, #220]
	cmp	r2, r1
	beq	.L91
	ldrb	r2, [r3, #216]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #192
	ldr	r3, .L97+24
.LPIC94:
	add	r3, pc, r3
	ldr	r2, [r3, #252]
	cmp	r2, r1
	beq	.L92
	ldrb	r2, [r3, #248]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #224
	ldr	r3, .L97+28
.LPIC96:
	add	r3, pc, r3
	ldr	r2, [r3, #284]
	cmp	r2, r1
	beq	.L93
	ldrb	r2, [r3, #280]	@ zero_extendqisi2
	cmp	r2, #0
	addeq	r0, r3, #256
	ldr	r3, .L97+32
.LPIC98:
	add	r3, pc, r3
	ldr	r2, [r3, #316]
	cmp	r2, r1
	moveq	r3, #9
	beq	.L71
	ldrb	r2, [r3, #312]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L96
	add	r0, r3, #288
.L83:
	str	r1, [r0, #28]
	bx	lr
.L96:
	cmp	r0, #0
	bne	.L83
	bx	lr
.L93:
	mov	r3, #8
.L71:
	ldr	r0, .L97+36
.LPIC99:
	add	r0, pc, r0
	add	r0, r0, r3, asl #5
	bx	lr
.L84:
	mov	r3, #0
	b	.L71
.L86:
	mov	r3, #1
	b	.L71
.L87:
	mov	r3, #2
	b	.L71
.L88:
	mov	r3, #3
	b	.L71
.L89:
	mov	r3, #4
	b	.L71
.L90:
	mov	r3, #5
	b	.L71
.L91:
	mov	r3, #6
	b	.L71
.L92:
	mov	r3, #7
	b	.L71
.L98:
	.align	2
.L97:
	.word	.LANCHOR0-(.LPIC80+8)
	.word	.LANCHOR0-(.LPIC84+8)
	.word	.LANCHOR0-(.LPIC86+8)
	.word	.LANCHOR0-(.LPIC88+8)
	.word	.LANCHOR0-(.LPIC90+8)
	.word	.LANCHOR0-(.LPIC92+8)
	.word	.LANCHOR0-(.LPIC94+8)
	.word	.LANCHOR0-(.LPIC96+8)
	.word	.LANCHOR0-(.LPIC98+8)
	.word	.LANCHOR0-(.LPIC99+8)
	.size	_ZN5Input8GetTouchEi, .-_ZN5Input8GetTouchEi
	.section	.text._Z19SingleTouchButtonCBP15s3ePointerEvent,"ax",%progbits
	.align	2
	.global	_Z19SingleTouchButtonCBP15s3ePointerEvent
	.hidden	_Z19SingleTouchButtonCBP15s3ePointerEvent
	.type	_Z19SingleTouchButtonCBP15s3ePointerEvent, %function
_Z19SingleTouchButtonCBP15s3ePointerEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]
	ldr	r3, .L100
	adds	r2, r2, #0
.LPIC101:
	add	r3, pc, r3
	movne	r2, #1
	strb	r2, [r3, #24]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #12]
	stmia	r3, {r1, r2}
	bx	lr
.L101:
	.align	2
.L100:
	.word	.LANCHOR0-(.LPIC101+8)
	.size	_Z19SingleTouchButtonCBP15s3ePointerEvent, .-_Z19SingleTouchButtonCBP15s3ePointerEvent
	.section	.text._Z19SingleTouchMotionCBP21s3ePointerMotionEvent,"ax",%progbits
	.align	2
	.global	_Z19SingleTouchMotionCBP21s3ePointerMotionEvent
	.hidden	_Z19SingleTouchMotionCBP21s3ePointerMotionEvent
	.type	_Z19SingleTouchMotionCBP21s3ePointerMotionEvent, %function
_Z19SingleTouchMotionCBP21s3ePointerMotionEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L103
	ldmia	r0, {r1, r2}
.LPIC104:
	add	r3, pc, r3
	stmia	r3, {r1, r2}
	bx	lr
.L104:
	.align	2
.L103:
	.word	.LANCHOR0-(.LPIC104+8)
	.size	_Z19SingleTouchMotionCBP21s3ePointerMotionEvent, .-_Z19SingleTouchMotionCBP21s3ePointerMotionEvent
	.section	.text._ZN5InputC2Ev,"ax",%progbits
	.align	2
	.global	_ZN5InputC2Ev
	.hidden	_ZN5InputC2Ev
	.type	_ZN5InputC2Ev, %function
_ZN5InputC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L106
	stmfd	sp!, {r4, lr}
.LPIC106:
	add	r1, pc, r1
	mov	r4, r0
	mov	r2, #0
	mov	r0, #2
	bl	s3ePointerRegister(PLT)
	ldr	r1, .L106+4
	mov	r2, #0
.LPIC107:
	add	r1, pc, r1
	mov	r0, #3
	bl	s3ePointerRegister(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L107:
	.align	2
.L106:
	.word	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent-(.LPIC106+8)
	.word	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent-(.LPIC107+8)
	.size	_ZN5InputC2Ev, .-_ZN5InputC2Ev
	.global	_ZN5InputC1Ev
	.hidden	_ZN5InputC1Ev
	.set	_ZN5InputC1Ev,_ZN5InputC2Ev
	.section	.text._ZN5InputD2Ev,"ax",%progbits
	.align	2
	.global	_ZN5InputD2Ev
	.hidden	_ZN5InputD2Ev
	.type	_ZN5InputD2Ev, %function
_ZN5InputD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L109
	stmfd	sp!, {r4, lr}
.LPIC108:
	add	r1, pc, r1
	mov	r4, r0
	mov	r0, #2
	bl	s3ePointerUnRegister(PLT)
	ldr	r1, .L109+4
	mov	r0, #3
.LPIC109:
	add	r1, pc, r1
	bl	s3ePointerUnRegister(PLT)
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L110:
	.align	2
.L109:
	.word	_Z18MultiTouchButtonCBP20s3ePointerTouchEvent-(.LPIC108+8)
	.word	_Z18MultiTouchMotionCBP26s3ePointerTouchMotionEvent-(.LPIC109+8)
	.size	_ZN5InputD2Ev, .-_ZN5InputD2Ev
	.global	_ZN5InputD1Ev
	.hidden	_ZN5InputD1Ev
	.set	_ZN5InputD1Ev,_ZN5InputD2Ev
	.section	.text._ZN5Input6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN5Input6UpdateEv
	.hidden	_ZN5Input6UpdateEv
	.type	_ZN5Input6UpdateEv, %function
_ZN5Input6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L112
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
.LPIC110:
	add	r3, pc, r3
	ldmib	r3, {r2, r6}
	ldr	r9, [r3, #44]
	ldr	r0, [r3, #36]
	ldr	r5, [r3]
	rsb	r9, r9, r0
	ldr	ip, [r3, #64]
	ldr	r0, [r3, #72]
	rsb	r6, r6, r5
	rsb	r7, r0, ip
	ldr	r1, [r3, #12]
	ldr	ip, [r3, #76]
	str	r6, [r3, #16]
	ldr	r6, [r3, #68]
	ldrb	fp, [r3, #24]	@ zero_extendqisi2
	rsb	r1, r1, r2
	rsb	r6, ip, r6
	str	r6, [r3, #84]
	str	r1, [r3, #20]
	ldr	r6, [r3, #104]
	ldr	r1, [r3, #96]
	ldr	r4, [r3, #32]
	ldr	r10, [r3, #40]
	ldrb	r8, [r3, #56]	@ zero_extendqisi2
	ldr	r0, [r3, #36]
	strb	fp, [r3, #25]
	rsb	fp, r6, r1
	ldr	r6, [r3, #64]
	rsb	r10, r10, r4
	str	r5, [r3, #8]
	str	r2, [r3, #12]
	ldrb	r5, [r3, #88]	@ zero_extendqisi2
	ldr	r2, [r3, #100]
	str	r10, [r3, #48]
	str	r4, [r3, #40]
	ldr	r10, [r3, #108]
	str	r9, [r3, #52]
	str	r0, [r3, #44]
	strb	r8, [r3, #57]
	str	r7, [r3, #80]
	str	r6, [r3, #72]
	ldr	r7, [r3, #68]
	ldr	r0, [r3, #160]
	str	r7, [r3, #76]
	ldr	r7, [r3, #168]
	ldr	r6, [r3, #164]
	rsb	r7, r7, r0
	ldr	r0, [r3, #172]
	rsb	r10, r10, r2
	rsb	r6, r0, r6
	str	fp, [r3, #112]
	ldrb	fp, [r3, #120]	@ zero_extendqisi2
	ldr	r4, [r3, #128]
	str	r10, [r3, #116]
	str	r6, [r3, #180]
	ldr	r10, [r3, #136]
	ldr	r6, [r3, #200]
	str	r1, [r3, #104]
	ldr	r1, [r3, #192]
	ldr	ip, [r3, #132]
	ldr	r9, [r3, #140]
	ldrb	r8, [r3, #152]	@ zero_extendqisi2
	rsb	r10, r10, r4
	strb	fp, [r3, #121]
	str	r4, [r3, #136]
	rsb	fp, r6, r1
	ldrb	r4, [r3, #216]	@ zero_extendqisi2
	ldr	r6, [r3, #160]
	str	r7, [r3, #176]
	ldr	r7, [r3, #164]
	rsb	r9, r9, ip
	strb	r5, [r3, #89]
	str	r2, [r3, #108]
	ldrb	r5, [r3, #184]	@ zero_extendqisi2
	ldr	r2, [r3, #196]
	str	r10, [r3, #144]
	str	r9, [r3, #148]
	ldr	r10, [r3, #204]
	str	ip, [r3, #140]
	strb	r8, [r3, #153]
	str	r6, [r3, #168]
	str	r7, [r3, #172]
	ldr	r7, [r3, #268]
	str	r1, [r3, #200]
	ldr	r1, [r3, #260]
	str	fp, [r3, #208]
	strb	r4, [r3, #217]
	ldr	fp, [r3, #232]
	ldr	r4, [r3, #224]
	rsb	r10, r10, r2
	rsb	r7, r7, r1
	str	r2, [r3, #204]
	ldr	r1, [r3, #296]
	ldr	r2, [r3, #288]
	ldr	ip, [r3, #228]
	rsb	fp, fp, r4
	str	r10, [r3, #212]
	ldr	r10, [r3, #236]
	ldr	r0, [r3, #256]
	ldrb	r9, [r3, #248]	@ zero_extendqisi2
	ldr	r8, [r3, #264]
	ldrb	r6, [r3, #280]	@ zero_extendqisi2
	strb	r5, [r3, #185]
	str	fp, [r3, #240]
	rsb	r5, r1, r2
	ldr	fp, [r3, #300]
	ldr	r2, [r3, #292]
	rsb	r10, r10, ip
	str	ip, [r3, #236]
	ldr	ip, [r3, #260]
	rsb	r8, r8, r0
	str	r4, [r3, #232]
	rsb	r2, fp, r2
	ldrb	r4, [r3, #312]	@ zero_extendqisi2
	str	r10, [r3, #244]
	strb	r9, [r3, #249]
	str	r8, [r3, #272]
	str	r0, [r3, #264]
	str	r7, [r3, #276]
	strb	r6, [r3, #281]
	str	r2, [r3, #308]
	str	ip, [r3, #268]
	str	r5, [r3, #304]
	ldr	r0, [r3, #288]
	ldr	r1, [r3, #292]
	str	r0, [r3, #296]
	str	r1, [r3, #300]
	strb	r4, [r3, #313]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
.L113:
	.align	2
.L112:
	.word	.LANCHOR0-(.LPIC110+8)
	.size	_ZN5Input6UpdateEv, .-_ZN5Input6UpdateEv
	.hidden	_ZN5Input9g_TouchesE
	.global	_ZN5Input9g_TouchesE
	.hidden	_ZN5Input10_singletonE
	.global	_ZN5Input10_singletonE
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN5Input9g_TouchesE, %object
	.size	_ZN5Input9g_TouchesE, 320
_ZN5Input9g_TouchesE:
	.space	320
	.type	_ZN5Input10_singletonE, %object
	.size	_ZN5Input10_singletonE, 4
_ZN5Input10_singletonE:
	.space	4
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-branch revision 208322]"
