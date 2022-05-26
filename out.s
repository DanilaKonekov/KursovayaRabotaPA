.data
	true: .byte 1
	false: .byte 0
.text
main:
	li $t0, 1
	li $t1, 5
	addu $t0, $t0, $t1
	move $s1, $t0
	li $s0, 8
	move $a0, $s1
	move $a1, $s0
	jal fun
	move $t0, $t9
	move $s2, $t0
	li $v0, 1
	la $a0, ($s1)
	syscall
	j END
fun:
	mult $a0, $a1
	mflo $t0
	move $t9, $t0
	jr $ra
END:
