# find sum of digits of a number N, display the result to the user

.data
msg1: .asciiz "enter N value: "
msg2: .asciiz "the sum is:"

.text
main:

li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall 
move $t0, $v0

li $t1, 0
# t1 - sum

li $t2, 10

move $t3, $t0

L1:
div $t3, $t2

mfhi $s1
mflo $t3
#move $t0, $s2

add $t1, $t1, $t2

beq $t0, $zero, L1
j Exit

Exit:
li $v0, 4
la $a0, msg2
syscall

move $a0, $t1
li $v0, 1
syscall

li $v0, 10
syscall
.end main

