	li	$s7, 0			# this is the sum number
	li 	$a0, 0xa		# this is the input number 
	move	$s2, $a0		# move input number to s2 
FirstCheck:	ble 	$s2, 1, Fibend	#Checks if it is 0 or 1, if so brings that value to the end

	li	$s0, 0			# $s0:  a = 0
	move 	$s4, $s2		# makes s4 the i value, ( n ), then from there works down by subtracting it by 1 till it reaches 1 to make sure it runs
	# n amount of times.
	li	$s2, 0x1			# $s2:  b = 1
Loop:	ble	$s4, 1, Fibend		# When it reaches 1, it goes to the PreEnd function
	move	$s5, $s2		# temp (s5 ) = b ( s1 ) 
	add	$s2, $s2,$s0		# b = a + b
	move	$s0,$s5			# a = temp
	sub	$s4,$s4,1		# i = i - 1
	j Loop				# restarts the loop 


	

Fibend:	move	$s7, $s2		# moves the final value to s7 which is presented in the end. 





#division portion

main: 
	#Take m and load into $t0 

	move $a0, $s7
	move $t0, $a0
	
	li $t1, 2 		#  $t1 = y = 2
	li $t2, 0 		#$t2 = quotient
	li $t5, 0 		# $t5 = if it is odd or even 
	move $t3, $t0		# $t3 = x = m 
	
	
division_loop:
	ble $t3, $t1, checkOdd  # while x > y
	sub $t3, $t3, $t1	     # x = x- y	
	addi $t2, $t2, 1	     # quotient = quotient + 1
	j division_loop			     # jump to the result


checkOdd: 
	beq $t3, 1, done
	li $t3, 0 
	
done:
	move $t5, $t3
