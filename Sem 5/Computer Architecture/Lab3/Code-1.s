# 1. to read a number \n from input and check if it is prime or not, display the result to the user
# N - $t0

.data
num: .asciiz "enter number N to check if it is prime or not:"
prime: .asciiz "it is prime number"
nonprime: .asciiz "it is not prime number"

.text
main:

li $v0, 4
la $a0, num
syscall

li $v0, 5
syscall
move $t0, $v0

li $t1, 1
# $t1 - loop 

li $t2, 1
# $t2 - prime

L1:
addi $t1, 1
beq $t1, $t0, L4
div $t0, $t1

mfhi $s1
mflo $s2

beq $s1, $zero, L5
j L1

L2:
li $t2, 0
j L3

L3:
bne $t2, $zero, L4
j L5

L4:
li $v0, 4
la $a0, prime
syscall
j Exit

L5:

li $v0, 4
la $a0, nonprime
syscall

Exit:
li $v0, 10
syscall
