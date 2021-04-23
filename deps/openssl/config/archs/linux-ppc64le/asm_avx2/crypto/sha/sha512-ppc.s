.machine	"any"
.abiversion	2
.text

.globl	sha512_block_ppc
.type	sha512_block_ppc,@function
.align	6
sha512_block_ppc:
.localentry	sha512_block_ppc,0

	stdu	1,-384(1)
	mflr	0
	sldi	5,5,7

	std	3,208(1)

	std	14,240(1)
	std	15,248(1)
	std	16,256(1)
	std	17,264(1)
	std	18,272(1)
	std	19,280(1)
	std	20,288(1)
	std	21,296(1)
	std	22,304(1)
	std	23,312(1)
	std	24,320(1)
	std	25,328(1)
	std	26,336(1)
	std	27,344(1)
	std	28,352(1)
	std	29,360(1)
	std	30,368(1)
	std	31,376(1)
	std	0,400(1)
	ld	8,0(3)
	mr	31,4
	ld	9,8(3)
	ld	10,16(3)
	ld	11,24(3)
	ld	12,32(3)
	ld	6,40(3)
	ld	14,48(3)
	ld	15,56(3)
	bl	.LPICmeup
.LPICedup:
	andi.	0,31,3
	bne	.Lunaligned
.Laligned:
	add	5,31,5
	std	5,192(1)
	std	31,200(1)
	bl	.Lsha2_block_private
	b	.Ldone







.align	4
.Lunaligned:
	subfic	0,31,4096
	andi.	0,0,3968
	beq	.Lcross_page
	cmpld	5,0
	ble	.Laligned
	subfc	5,0,5
	add	0,31,0
	std	5,184(1)
	std	0,192(1)
	std	31,200(1)
	bl	.Lsha2_block_private

	ld	5,184(1)
.Lcross_page:
	li	0,32
	mtctr	0
	addi	20,1,48
.Lmemcpy:
	lbz	16,0(31)
	lbz	17,1(31)
	lbz	18,2(31)
	lbz	19,3(31)
	addi	31,31,4
	stb	16,0(20)
	stb	17,1(20)
	stb	18,2(20)
	stb	19,3(20)
	addi	20,20,4
	bdnz	.Lmemcpy
	std	31,176(1)
	addi	0,1,176
	addi	31,1,48
	std	5,184(1)
	std	0,192(1)
	std	31,200(1)
	bl	.Lsha2_block_private
	ld	31,176(1)
	ld	5,184(1)
	addic.	5,5,-128
	bne	.Lunaligned

.Ldone:
	ld	0,400(1)
	ld	14,240(1)
	ld	15,248(1)
	ld	16,256(1)
	ld	17,264(1)
	ld	18,272(1)
	ld	19,280(1)
	ld	20,288(1)
	ld	21,296(1)
	ld	22,304(1)
	ld	23,312(1)
	ld	24,320(1)
	ld	25,328(1)
	ld	26,336(1)
	ld	27,344(1)
	ld	28,352(1)
	ld	29,360(1)
	ld	30,368(1)
	ld	31,376(1)
	mtlr	0
	addi	1,1,384
	blr	
.long	0
.byte	0,12,4,1,0x80,18,3,0
.long	0
.align	4
.Lsha2_block_private:
	ld	0,0(7)
	lwz	3,0(31)
	lwz	4,4(31)
	rotlwi	5,3,8
	rotlwi	16,4,8
	rlwimi	5,3,24,0,7
	rlwimi	16,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	16,4,24,16,23
	insrdi	16,5,32,0
	rotrdi	3,12,14
	rotrdi	4,12,18
	and	5,6,12
	xor	3,3,4
	add	15,15,0
	andc	0,14,12
	rotrdi	4,4,23
	or	5,5,0
	add	15,15,16
	xor	3,3,4
	add	15,15,5
	add	15,15,3

	rotrdi	3,8,28
	rotrdi	4,8,34
	and	5,8,9
	and	0,8,10
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,9,10
	xor	3,3,4
	add	11,11,15
	xor	5,5,0
	ld	0,8(7)
	add	15,15,3
	add	15,15,5

	lwz	3,8(31)
	lwz	4,12(31)
	rotlwi	5,3,8
	rotlwi	17,4,8
	rlwimi	5,3,24,0,7
	rlwimi	17,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	17,4,24,16,23
	insrdi	17,5,32,0
	rotrdi	3,11,14
	rotrdi	4,11,18
	and	5,12,11
	xor	3,3,4
	add	14,14,0
	andc	0,6,11
	rotrdi	4,4,23
	or	5,5,0
	add	14,14,17
	xor	3,3,4
	add	14,14,5
	add	14,14,3

	rotrdi	3,15,28
	rotrdi	4,15,34
	and	5,15,8
	and	0,15,9
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,8,9
	xor	3,3,4
	add	10,10,14
	xor	5,5,0
	ld	0,16(7)
	add	14,14,3
	add	14,14,5

	lwz	3,16(31)
	lwz	4,20(31)
	rotlwi	5,3,8
	rotlwi	18,4,8
	rlwimi	5,3,24,0,7
	rlwimi	18,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	18,4,24,16,23
	insrdi	18,5,32,0
	rotrdi	3,10,14
	rotrdi	4,10,18
	and	5,11,10
	xor	3,3,4
	add	6,6,0
	andc	0,12,10
	rotrdi	4,4,23
	or	5,5,0
	add	6,6,18
	xor	3,3,4
	add	6,6,5
	add	6,6,3

	rotrdi	3,14,28
	rotrdi	4,14,34
	and	5,14,15
	and	0,14,8
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,15,8
	xor	3,3,4
	add	9,9,6
	xor	5,5,0
	ld	0,24(7)
	add	6,6,3
	add	6,6,5

	lwz	3,24(31)
	lwz	4,28(31)
	rotlwi	5,3,8
	rotlwi	19,4,8
	rlwimi	5,3,24,0,7
	rlwimi	19,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	19,4,24,16,23
	insrdi	19,5,32,0
	rotrdi	3,9,14
	rotrdi	4,9,18
	and	5,10,9
	xor	3,3,4
	add	12,12,0
	andc	0,11,9
	rotrdi	4,4,23
	or	5,5,0
	add	12,12,19
	xor	3,3,4
	add	12,12,5
	add	12,12,3

	rotrdi	3,6,28
	rotrdi	4,6,34
	and	5,6,14
	and	0,6,15
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,14,15
	xor	3,3,4
	add	8,8,12
	xor	5,5,0
	ld	0,32(7)
	add	12,12,3
	add	12,12,5

	lwz	3,32(31)
	lwz	4,36(31)
	rotlwi	5,3,8
	rotlwi	20,4,8
	rlwimi	5,3,24,0,7
	rlwimi	20,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	20,4,24,16,23
	insrdi	20,5,32,0
	rotrdi	3,8,14
	rotrdi	4,8,18
	and	5,9,8
	xor	3,3,4
	add	11,11,0
	andc	0,10,8
	rotrdi	4,4,23
	or	5,5,0
	add	11,11,20
	xor	3,3,4
	add	11,11,5
	add	11,11,3

	rotrdi	3,12,28
	rotrdi	4,12,34
	and	5,12,6
	and	0,12,14
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,6,14
	xor	3,3,4
	add	15,15,11
	xor	5,5,0
	ld	0,40(7)
	add	11,11,3
	add	11,11,5

	lwz	3,40(31)
	lwz	4,44(31)
	rotlwi	5,3,8
	rotlwi	21,4,8
	rlwimi	5,3,24,0,7
	rlwimi	21,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	21,4,24,16,23
	insrdi	21,5,32,0
	rotrdi	3,15,14
	rotrdi	4,15,18
	and	5,8,15
	xor	3,3,4
	add	10,10,0
	andc	0,9,15
	rotrdi	4,4,23
	or	5,5,0
	add	10,10,21
	xor	3,3,4
	add	10,10,5
	add	10,10,3

	rotrdi	3,11,28
	rotrdi	4,11,34
	and	5,11,12
	and	0,11,6
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,12,6
	xor	3,3,4
	add	14,14,10
	xor	5,5,0
	ld	0,48(7)
	add	10,10,3
	add	10,10,5

	lwz	3,48(31)
	lwz	4,52(31)
	rotlwi	5,3,8
	rotlwi	22,4,8
	rlwimi	5,3,24,0,7
	rlwimi	22,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	22,4,24,16,23
	insrdi	22,5,32,0
	rotrdi	3,14,14
	rotrdi	4,14,18
	and	5,15,14
	xor	3,3,4
	add	9,9,0
	andc	0,8,14
	rotrdi	4,4,23
	or	5,5,0
	add	9,9,22
	xor	3,3,4
	add	9,9,5
	add	9,9,3

	rotrdi	3,10,28
	rotrdi	4,10,34
	and	5,10,11
	and	0,10,12
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,11,12
	xor	3,3,4
	add	6,6,9
	xor	5,5,0
	ld	0,56(7)
	add	9,9,3
	add	9,9,5

	lwz	3,56(31)
	lwz	4,60(31)
	rotlwi	5,3,8
	rotlwi	23,4,8
	rlwimi	5,3,24,0,7
	rlwimi	23,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	23,4,24,16,23
	insrdi	23,5,32,0
	rotrdi	3,6,14
	rotrdi	4,6,18
	and	5,14,6
	xor	3,3,4
	add	8,8,0
	andc	0,15,6
	rotrdi	4,4,23
	or	5,5,0
	add	8,8,23
	xor	3,3,4
	add	8,8,5
	add	8,8,3

	rotrdi	3,9,28
	rotrdi	4,9,34
	and	5,9,10
	and	0,9,11
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,10,11
	xor	3,3,4
	add	12,12,8
	xor	5,5,0
	ld	0,64(7)
	add	8,8,3
	add	8,8,5

	lwz	3,64(31)
	lwz	4,68(31)
	rotlwi	5,3,8
	rotlwi	24,4,8
	rlwimi	5,3,24,0,7
	rlwimi	24,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	24,4,24,16,23
	insrdi	24,5,32,0
	rotrdi	3,12,14
	rotrdi	4,12,18
	and	5,6,12
	xor	3,3,4
	add	15,15,0
	andc	0,14,12
	rotrdi	4,4,23
	or	5,5,0
	add	15,15,24
	xor	3,3,4
	add	15,15,5
	add	15,15,3

	rotrdi	3,8,28
	rotrdi	4,8,34
	and	5,8,9
	and	0,8,10
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,9,10
	xor	3,3,4
	add	11,11,15
	xor	5,5,0
	ld	0,72(7)
	add	15,15,3
	add	15,15,5

	lwz	3,72(31)
	lwz	4,76(31)
	rotlwi	5,3,8
	rotlwi	25,4,8
	rlwimi	5,3,24,0,7
	rlwimi	25,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	25,4,24,16,23
	insrdi	25,5,32,0
	rotrdi	3,11,14
	rotrdi	4,11,18
	and	5,12,11
	xor	3,3,4
	add	14,14,0
	andc	0,6,11
	rotrdi	4,4,23
	or	5,5,0
	add	14,14,25
	xor	3,3,4
	add	14,14,5
	add	14,14,3

	rotrdi	3,15,28
	rotrdi	4,15,34
	and	5,15,8
	and	0,15,9
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,8,9
	xor	3,3,4
	add	10,10,14
	xor	5,5,0
	ld	0,80(7)
	add	14,14,3
	add	14,14,5

	lwz	3,80(31)
	lwz	4,84(31)
	rotlwi	5,3,8
	rotlwi	26,4,8
	rlwimi	5,3,24,0,7
	rlwimi	26,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	26,4,24,16,23
	insrdi	26,5,32,0
	rotrdi	3,10,14
	rotrdi	4,10,18
	and	5,11,10
	xor	3,3,4
	add	6,6,0
	andc	0,12,10
	rotrdi	4,4,23
	or	5,5,0
	add	6,6,26
	xor	3,3,4
	add	6,6,5
	add	6,6,3

	rotrdi	3,14,28
	rotrdi	4,14,34
	and	5,14,15
	and	0,14,8
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,15,8
	xor	3,3,4
	add	9,9,6
	xor	5,5,0
	ld	0,88(7)
	add	6,6,3
	add	6,6,5

	lwz	3,88(31)
	lwz	4,92(31)
	rotlwi	5,3,8
	rotlwi	27,4,8
	rlwimi	5,3,24,0,7
	rlwimi	27,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	27,4,24,16,23
	insrdi	27,5,32,0
	rotrdi	3,9,14
	rotrdi	4,9,18
	and	5,10,9
	xor	3,3,4
	add	12,12,0
	andc	0,11,9
	rotrdi	4,4,23
	or	5,5,0
	add	12,12,27
	xor	3,3,4
	add	12,12,5
	add	12,12,3

	rotrdi	3,6,28
	rotrdi	4,6,34
	and	5,6,14
	and	0,6,15
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,14,15
	xor	3,3,4
	add	8,8,12
	xor	5,5,0
	ld	0,96(7)
	add	12,12,3
	add	12,12,5

	lwz	3,96(31)
	lwz	4,100(31)
	rotlwi	5,3,8
	rotlwi	28,4,8
	rlwimi	5,3,24,0,7
	rlwimi	28,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	28,4,24,16,23
	insrdi	28,5,32,0
	rotrdi	3,8,14
	rotrdi	4,8,18
	and	5,9,8
	xor	3,3,4
	add	11,11,0
	andc	0,10,8
	rotrdi	4,4,23
	or	5,5,0
	add	11,11,28
	xor	3,3,4
	add	11,11,5
	add	11,11,3

	rotrdi	3,12,28
	rotrdi	4,12,34
	and	5,12,6
	and	0,12,14
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,6,14
	xor	3,3,4
	add	15,15,11
	xor	5,5,0
	ld	0,104(7)
	add	11,11,3
	add	11,11,5

	lwz	3,104(31)
	lwz	4,108(31)
	rotlwi	5,3,8
	rotlwi	29,4,8
	rlwimi	5,3,24,0,7
	rlwimi	29,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	29,4,24,16,23
	insrdi	29,5,32,0
	rotrdi	3,15,14
	rotrdi	4,15,18
	and	5,8,15
	xor	3,3,4
	add	10,10,0
	andc	0,9,15
	rotrdi	4,4,23
	or	5,5,0
	add	10,10,29
	xor	3,3,4
	add	10,10,5
	add	10,10,3

	rotrdi	3,11,28
	rotrdi	4,11,34
	and	5,11,12
	and	0,11,6
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,12,6
	xor	3,3,4
	add	14,14,10
	xor	5,5,0
	ld	0,112(7)
	add	10,10,3
	add	10,10,5

	lwz	3,112(31)
	lwz	4,116(31)
	rotlwi	5,3,8
	rotlwi	30,4,8
	rlwimi	5,3,24,0,7
	rlwimi	30,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	30,4,24,16,23
	insrdi	30,5,32,0
	rotrdi	3,14,14
	rotrdi	4,14,18
	and	5,15,14
	xor	3,3,4
	add	9,9,0
	andc	0,8,14
	rotrdi	4,4,23
	or	5,5,0
	add	9,9,30
	xor	3,3,4
	add	9,9,5
	add	9,9,3

	rotrdi	3,10,28
	rotrdi	4,10,34
	and	5,10,11
	and	0,10,12
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,11,12
	xor	3,3,4
	add	6,6,9
	xor	5,5,0
	ld	0,120(7)
	add	9,9,3
	add	9,9,5

	lwz	3,120(31)
	lwz	4,124(31)
	rotlwi	5,3,8
	rotlwi	31,4,8
	rlwimi	5,3,24,0,7
	rlwimi	31,4,24,0,7
	rlwimi	5,3,24,16,23
	rlwimi	31,4,24,16,23
	insrdi	31,5,32,0
	rotrdi	3,6,14
	rotrdi	4,6,18
	and	5,14,6
	xor	3,3,4
	add	8,8,0
	andc	0,15,6
	rotrdi	4,4,23
	or	5,5,0
	add	8,8,31
	xor	3,3,4
	add	8,8,5
	add	8,8,3

	rotrdi	3,9,28
	rotrdi	4,9,34
	and	5,9,10
	and	0,9,11
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,10,11
	xor	3,3,4
	add	12,12,8
	xor	5,5,0
	add	8,8,3
	add	8,8,5

	li	5,4
	mtctr	5
.align	4
.Lrounds:
	addi	7,7,128
	rotrdi	3,17,1
	rotrdi	4,17,8
	rotrdi	5,30,19
	rotrdi	0,30,61
	xor	3,3,4
	srdi	4,17,7
	xor	5,5,0
	srdi	0,30,6
	add	16,16,25
	xor	3,3,4
	xor	5,5,0
	ld	0,0(7)
	add	16,16,3
	add	16,16,5
	rotrdi	3,12,14
	rotrdi	4,12,18
	and	5,6,12
	xor	3,3,4
	add	15,15,0
	andc	0,14,12
	rotrdi	4,4,23
	or	5,5,0
	add	15,15,16
	xor	3,3,4
	add	15,15,5
	add	15,15,3

	rotrdi	3,8,28
	rotrdi	4,8,34
	and	5,8,9
	and	0,8,10
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,9,10
	xor	3,3,4
	add	11,11,15
	xor	5,5,0
	add	15,15,3
	add	15,15,5

	rotrdi	3,18,1
	rotrdi	4,18,8
	rotrdi	5,31,19
	rotrdi	0,31,61
	xor	3,3,4
	srdi	4,18,7
	xor	5,5,0
	srdi	0,31,6
	add	17,17,26
	xor	3,3,4
	xor	5,5,0
	ld	0,8(7)
	add	17,17,3
	add	17,17,5
	rotrdi	3,11,14
	rotrdi	4,11,18
	and	5,12,11
	xor	3,3,4
	add	14,14,0
	andc	0,6,11
	rotrdi	4,4,23
	or	5,5,0
	add	14,14,17
	xor	3,3,4
	add	14,14,5
	add	14,14,3

	rotrdi	3,15,28
	rotrdi	4,15,34
	and	5,15,8
	and	0,15,9
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,8,9
	xor	3,3,4
	add	10,10,14
	xor	5,5,0
	add	14,14,3
	add	14,14,5

	rotrdi	3,19,1
	rotrdi	4,19,8
	rotrdi	5,16,19
	rotrdi	0,16,61
	xor	3,3,4
	srdi	4,19,7
	xor	5,5,0
	srdi	0,16,6
	add	18,18,27
	xor	3,3,4
	xor	5,5,0
	ld	0,16(7)
	add	18,18,3
	add	18,18,5
	rotrdi	3,10,14
	rotrdi	4,10,18
	and	5,11,10
	xor	3,3,4
	add	6,6,0
	andc	0,12,10
	rotrdi	4,4,23
	or	5,5,0
	add	6,6,18
	xor	3,3,4
	add	6,6,5
	add	6,6,3

	rotrdi	3,14,28
	rotrdi	4,14,34
	and	5,14,15
	and	0,14,8
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,15,8
	xor	3,3,4
	add	9,9,6
	xor	5,5,0
	add	6,6,3
	add	6,6,5

	rotrdi	3,20,1
	rotrdi	4,20,8
	rotrdi	5,17,19
	rotrdi	0,17,61
	xor	3,3,4
	srdi	4,20,7
	xor	5,5,0
	srdi	0,17,6
	add	19,19,28
	xor	3,3,4
	xor	5,5,0
	ld	0,24(7)
	add	19,19,3
	add	19,19,5
	rotrdi	3,9,14
	rotrdi	4,9,18
	and	5,10,9
	xor	3,3,4
	add	12,12,0
	andc	0,11,9
	rotrdi	4,4,23
	or	5,5,0
	add	12,12,19
	xor	3,3,4
	add	12,12,5
	add	12,12,3

	rotrdi	3,6,28
	rotrdi	4,6,34
	and	5,6,14
	and	0,6,15
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,14,15
	xor	3,3,4
	add	8,8,12
	xor	5,5,0
	add	12,12,3
	add	12,12,5

	rotrdi	3,21,1
	rotrdi	4,21,8
	rotrdi	5,18,19
	rotrdi	0,18,61
	xor	3,3,4
	srdi	4,21,7
	xor	5,5,0
	srdi	0,18,6
	add	20,20,29
	xor	3,3,4
	xor	5,5,0
	ld	0,32(7)
	add	20,20,3
	add	20,20,5
	rotrdi	3,8,14
	rotrdi	4,8,18
	and	5,9,8
	xor	3,3,4
	add	11,11,0
	andc	0,10,8
	rotrdi	4,4,23
	or	5,5,0
	add	11,11,20
	xor	3,3,4
	add	11,11,5
	add	11,11,3

	rotrdi	3,12,28
	rotrdi	4,12,34
	and	5,12,6
	and	0,12,14
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,6,14
	xor	3,3,4
	add	15,15,11
	xor	5,5,0
	add	11,11,3
	add	11,11,5

	rotrdi	3,22,1
	rotrdi	4,22,8
	rotrdi	5,19,19
	rotrdi	0,19,61
	xor	3,3,4
	srdi	4,22,7
	xor	5,5,0
	srdi	0,19,6
	add	21,21,30
	xor	3,3,4
	xor	5,5,0
	ld	0,40(7)
	add	21,21,3
	add	21,21,5
	rotrdi	3,15,14
	rotrdi	4,15,18
	and	5,8,15
	xor	3,3,4
	add	10,10,0
	andc	0,9,15
	rotrdi	4,4,23
	or	5,5,0
	add	10,10,21
	xor	3,3,4
	add	10,10,5
	add	10,10,3

	rotrdi	3,11,28
	rotrdi	4,11,34
	and	5,11,12
	and	0,11,6
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,12,6
	xor	3,3,4
	add	14,14,10
	xor	5,5,0
	add	10,10,3
	add	10,10,5

	rotrdi	3,23,1
	rotrdi	4,23,8
	rotrdi	5,20,19
	rotrdi	0,20,61
	xor	3,3,4
	srdi	4,23,7
	xor	5,5,0
	srdi	0,20,6
	add	22,22,31
	xor	3,3,4
	xor	5,5,0
	ld	0,48(7)
	add	22,22,3
	add	22,22,5
	rotrdi	3,14,14
	rotrdi	4,14,18
	and	5,15,14
	xor	3,3,4
	add	9,9,0
	andc	0,8,14
	rotrdi	4,4,23
	or	5,5,0
	add	9,9,22
	xor	3,3,4
	add	9,9,5
	add	9,9,3

	rotrdi	3,10,28
	rotrdi	4,10,34
	and	5,10,11
	and	0,10,12
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,11,12
	xor	3,3,4
	add	6,6,9
	xor	5,5,0
	add	9,9,3
	add	9,9,5

	rotrdi	3,24,1
	rotrdi	4,24,8
	rotrdi	5,21,19
	rotrdi	0,21,61
	xor	3,3,4
	srdi	4,24,7
	xor	5,5,0
	srdi	0,21,6
	add	23,23,16
	xor	3,3,4
	xor	5,5,0
	ld	0,56(7)
	add	23,23,3
	add	23,23,5
	rotrdi	3,6,14
	rotrdi	4,6,18
	and	5,14,6
	xor	3,3,4
	add	8,8,0
	andc	0,15,6
	rotrdi	4,4,23
	or	5,5,0
	add	8,8,23
	xor	3,3,4
	add	8,8,5
	add	8,8,3

	rotrdi	3,9,28
	rotrdi	4,9,34
	and	5,9,10
	and	0,9,11
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,10,11
	xor	3,3,4
	add	12,12,8
	xor	5,5,0
	add	8,8,3
	add	8,8,5

	rotrdi	3,25,1
	rotrdi	4,25,8
	rotrdi	5,22,19
	rotrdi	0,22,61
	xor	3,3,4
	srdi	4,25,7
	xor	5,5,0
	srdi	0,22,6
	add	24,24,17
	xor	3,3,4
	xor	5,5,0
	ld	0,64(7)
	add	24,24,3
	add	24,24,5
	rotrdi	3,12,14
	rotrdi	4,12,18
	and	5,6,12
	xor	3,3,4
	add	15,15,0
	andc	0,14,12
	rotrdi	4,4,23
	or	5,5,0
	add	15,15,24
	xor	3,3,4
	add	15,15,5
	add	15,15,3

	rotrdi	3,8,28
	rotrdi	4,8,34
	and	5,8,9
	and	0,8,10
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,9,10
	xor	3,3,4
	add	11,11,15
	xor	5,5,0
	add	15,15,3
	add	15,15,5

	rotrdi	3,26,1
	rotrdi	4,26,8
	rotrdi	5,23,19
	rotrdi	0,23,61
	xor	3,3,4
	srdi	4,26,7
	xor	5,5,0
	srdi	0,23,6
	add	25,25,18
	xor	3,3,4
	xor	5,5,0
	ld	0,72(7)
	add	25,25,3
	add	25,25,5
	rotrdi	3,11,14
	rotrdi	4,11,18
	and	5,12,11
	xor	3,3,4
	add	14,14,0
	andc	0,6,11
	rotrdi	4,4,23
	or	5,5,0
	add	14,14,25
	xor	3,3,4
	add	14,14,5
	add	14,14,3

	rotrdi	3,15,28
	rotrdi	4,15,34
	and	5,15,8
	and	0,15,9
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,8,9
	xor	3,3,4
	add	10,10,14
	xor	5,5,0
	add	14,14,3
	add	14,14,5

	rotrdi	3,27,1
	rotrdi	4,27,8
	rotrdi	5,24,19
	rotrdi	0,24,61
	xor	3,3,4
	srdi	4,27,7
	xor	5,5,0
	srdi	0,24,6
	add	26,26,19
	xor	3,3,4
	xor	5,5,0
	ld	0,80(7)
	add	26,26,3
	add	26,26,5
	rotrdi	3,10,14
	rotrdi	4,10,18
	and	5,11,10
	xor	3,3,4
	add	6,6,0
	andc	0,12,10
	rotrdi	4,4,23
	or	5,5,0
	add	6,6,26
	xor	3,3,4
	add	6,6,5
	add	6,6,3

	rotrdi	3,14,28
	rotrdi	4,14,34
	and	5,14,15
	and	0,14,8
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,15,8
	xor	3,3,4
	add	9,9,6
	xor	5,5,0
	add	6,6,3
	add	6,6,5

	rotrdi	3,28,1
	rotrdi	4,28,8
	rotrdi	5,25,19
	rotrdi	0,25,61
	xor	3,3,4
	srdi	4,28,7
	xor	5,5,0
	srdi	0,25,6
	add	27,27,20
	xor	3,3,4
	xor	5,5,0
	ld	0,88(7)
	add	27,27,3
	add	27,27,5
	rotrdi	3,9,14
	rotrdi	4,9,18
	and	5,10,9
	xor	3,3,4
	add	12,12,0
	andc	0,11,9
	rotrdi	4,4,23
	or	5,5,0
	add	12,12,27
	xor	3,3,4
	add	12,12,5
	add	12,12,3

	rotrdi	3,6,28
	rotrdi	4,6,34
	and	5,6,14
	and	0,6,15
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,14,15
	xor	3,3,4
	add	8,8,12
	xor	5,5,0
	add	12,12,3
	add	12,12,5

	rotrdi	3,29,1
	rotrdi	4,29,8
	rotrdi	5,26,19
	rotrdi	0,26,61
	xor	3,3,4
	srdi	4,29,7
	xor	5,5,0
	srdi	0,26,6
	add	28,28,21
	xor	3,3,4
	xor	5,5,0
	ld	0,96(7)
	add	28,28,3
	add	28,28,5
	rotrdi	3,8,14
	rotrdi	4,8,18
	and	5,9,8
	xor	3,3,4
	add	11,11,0
	andc	0,10,8
	rotrdi	4,4,23
	or	5,5,0
	add	11,11,28
	xor	3,3,4
	add	11,11,5
	add	11,11,3

	rotrdi	3,12,28
	rotrdi	4,12,34
	and	5,12,6
	and	0,12,14
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,6,14
	xor	3,3,4
	add	15,15,11
	xor	5,5,0
	add	11,11,3
	add	11,11,5

	rotrdi	3,30,1
	rotrdi	4,30,8
	rotrdi	5,27,19
	rotrdi	0,27,61
	xor	3,3,4
	srdi	4,30,7
	xor	5,5,0
	srdi	0,27,6
	add	29,29,22
	xor	3,3,4
	xor	5,5,0
	ld	0,104(7)
	add	29,29,3
	add	29,29,5
	rotrdi	3,15,14
	rotrdi	4,15,18
	and	5,8,15
	xor	3,3,4
	add	10,10,0
	andc	0,9,15
	rotrdi	4,4,23
	or	5,5,0
	add	10,10,29
	xor	3,3,4
	add	10,10,5
	add	10,10,3

	rotrdi	3,11,28
	rotrdi	4,11,34
	and	5,11,12
	and	0,11,6
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,12,6
	xor	3,3,4
	add	14,14,10
	xor	5,5,0
	add	10,10,3
	add	10,10,5

	rotrdi	3,31,1
	rotrdi	4,31,8
	rotrdi	5,28,19
	rotrdi	0,28,61
	xor	3,3,4
	srdi	4,31,7
	xor	5,5,0
	srdi	0,28,6
	add	30,30,23
	xor	3,3,4
	xor	5,5,0
	ld	0,112(7)
	add	30,30,3
	add	30,30,5
	rotrdi	3,14,14
	rotrdi	4,14,18
	and	5,15,14
	xor	3,3,4
	add	9,9,0
	andc	0,8,14
	rotrdi	4,4,23
	or	5,5,0
	add	9,9,30
	xor	3,3,4
	add	9,9,5
	add	9,9,3

	rotrdi	3,10,28
	rotrdi	4,10,34
	and	5,10,11
	and	0,10,12
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,11,12
	xor	3,3,4
	add	6,6,9
	xor	5,5,0
	add	9,9,3
	add	9,9,5

	rotrdi	3,16,1
	rotrdi	4,16,8
	rotrdi	5,29,19
	rotrdi	0,29,61
	xor	3,3,4
	srdi	4,16,7
	xor	5,5,0
	srdi	0,29,6
	add	31,31,24
	xor	3,3,4
	xor	5,5,0
	ld	0,120(7)
	add	31,31,3
	add	31,31,5
	rotrdi	3,6,14
	rotrdi	4,6,18
	and	5,14,6
	xor	3,3,4
	add	8,8,0
	andc	0,15,6
	rotrdi	4,4,23
	or	5,5,0
	add	8,8,31
	xor	3,3,4
	add	8,8,5
	add	8,8,3

	rotrdi	3,9,28
	rotrdi	4,9,34
	and	5,9,10
	and	0,9,11
	xor	3,3,4
	rotrdi	4,4,5
	xor	5,5,0
	and	0,10,11
	xor	3,3,4
	add	12,12,8
	xor	5,5,0
	add	8,8,3
	add	8,8,5

	bdnz	.Lrounds

	ld	3,208(1)
	ld	31,200(1)
	ld	5,192(1)
	subi	7,7,512

	ld	16,0(3)
	ld	17,8(3)
	ld	18,16(3)
	ld	19,24(3)
	ld	20,32(3)
	ld	21,40(3)
	ld	22,48(3)
	addi	31,31,128
	ld	23,56(3)
	add	8,8,16
	add	9,9,17
	std	31,200(1)
	add	10,10,18
	std	8,0(3)
	add	11,11,19
	std	9,8(3)
	add	12,12,20
	std	10,16(3)
	add	6,6,21
	std	11,24(3)
	add	14,14,22
	std	12,32(3)
	add	15,15,23
	std	6,40(3)
	std	14,48(3)
	cmpld	31,5
	std	15,56(3)
	bne	.Lsha2_block_private
	blr	
.long	0
.byte	0,12,0x14,0,0,0,0,0
.size	sha512_block_ppc,.-sha512_block_ppc
.align	6
.LPICmeup:
	mflr	0
	bcl	20,31,$+4
	mflr	7
	addi	7,7,56
	mtlr	0
	blr	
.long	0
.byte	0,12,0x14,0,0,0,0,0
.space	28
.long	0xd728ae22,0x428a2f98
.long	0x23ef65cd,0x71374491
.long	0xec4d3b2f,0xb5c0fbcf
.long	0x8189dbbc,0xe9b5dba5
.long	0xf348b538,0x3956c25b
.long	0xb605d019,0x59f111f1
.long	0xaf194f9b,0x923f82a4
.long	0xda6d8118,0xab1c5ed5
.long	0xa3030242,0xd807aa98
.long	0x45706fbe,0x12835b01
.long	0x4ee4b28c,0x243185be
.long	0xd5ffb4e2,0x550c7dc3
.long	0xf27b896f,0x72be5d74
.long	0x3b1696b1,0x80deb1fe
.long	0x25c71235,0x9bdc06a7
.long	0xcf692694,0xc19bf174
.long	0x9ef14ad2,0xe49b69c1
.long	0x384f25e3,0xefbe4786
.long	0x8b8cd5b5,0x0fc19dc6
.long	0x77ac9c65,0x240ca1cc
.long	0x592b0275,0x2de92c6f
.long	0x6ea6e483,0x4a7484aa
.long	0xbd41fbd4,0x5cb0a9dc
.long	0x831153b5,0x76f988da
.long	0xee66dfab,0x983e5152
.long	0x2db43210,0xa831c66d
.long	0x98fb213f,0xb00327c8
.long	0xbeef0ee4,0xbf597fc7
.long	0x3da88fc2,0xc6e00bf3
.long	0x930aa725,0xd5a79147
.long	0xe003826f,0x06ca6351
.long	0x0a0e6e70,0x14292967
.long	0x46d22ffc,0x27b70a85
.long	0x5c26c926,0x2e1b2138
.long	0x5ac42aed,0x4d2c6dfc
.long	0x9d95b3df,0x53380d13
.long	0x8baf63de,0x650a7354
.long	0x3c77b2a8,0x766a0abb
.long	0x47edaee6,0x81c2c92e
.long	0x1482353b,0x92722c85
.long	0x4cf10364,0xa2bfe8a1
.long	0xbc423001,0xa81a664b
.long	0xd0f89791,0xc24b8b70
.long	0x0654be30,0xc76c51a3
.long	0xd6ef5218,0xd192e819
.long	0x5565a910,0xd6990624
.long	0x5771202a,0xf40e3585
.long	0x32bbd1b8,0x106aa070
.long	0xb8d2d0c8,0x19a4c116
.long	0x5141ab53,0x1e376c08
.long	0xdf8eeb99,0x2748774c
.long	0xe19b48a8,0x34b0bcb5
.long	0xc5c95a63,0x391c0cb3
.long	0xe3418acb,0x4ed8aa4a
.long	0x7763e373,0x5b9cca4f
.long	0xd6b2b8a3,0x682e6ff3
.long	0x5defb2fc,0x748f82ee
.long	0x43172f60,0x78a5636f
.long	0xa1f0ab72,0x84c87814
.long	0x1a6439ec,0x8cc70208
.long	0x23631e28,0x90befffa
.long	0xde82bde9,0xa4506ceb
.long	0xb2c67915,0xbef9a3f7
.long	0xe372532b,0xc67178f2
.long	0xea26619c,0xca273ece
.long	0x21c0c207,0xd186b8c7
.long	0xcde0eb1e,0xeada7dd6
.long	0xee6ed178,0xf57d4f7f
.long	0x72176fba,0x06f067aa
.long	0xa2c898a6,0x0a637dc5
.long	0xbef90dae,0x113f9804
.long	0x131c471b,0x1b710b35
.long	0x23047d84,0x28db77f5
.long	0x40c72493,0x32caab7b
.long	0x15c9bebc,0x3c9ebe0a
.long	0x9c100d4c,0x431d67c4
.long	0xcb3e42b6,0x4cc5d4be
.long	0xfc657e2a,0x597f299c
.long	0x3ad6faec,0x5fcb6fab
.long	0x4a475817,0x6c44198c
