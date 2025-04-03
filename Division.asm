#division portion

	.data
m:	.word 7

	.text
	.globl main
	

main: 
	#Take m and load into $t0 

	la $a0, m
	lw $t0, 0($a0)		#  $t0 = m
	
	li $t1, 2 		#  $t1 = y = 2
	li $t2, 0 		#$t2 = quotient
	move $t3, $t0		# $t3 = x = m 
	
	
division_loop:
	ble $t3, $t1, done  # while x > y
	sub $t3, $t3, $t1	     # x = x- y	
	addi $t2, $t2, 1	     # quotient = quotient + 1
	j division_loop			     # jump to the result

done: 
	# $t43 contains the result 
