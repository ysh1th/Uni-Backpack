# to read a number N from input and find if the number is odd or even 

.data
msg1: .asciiz "enter N value, to check even or odd: "
msg2: .asciiz "even"
msg3: .asciiz "odd"

.text
main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall 
move $t0, $v0

li $t1, 2

div $t0, $t1
mfhi $s1

bne $s1, $zero, L1

li $v0, 4
la $a0, msg2
syscall
j Exit

L1:
li $v0, 4
la $a0, msg3
syscall

Exit:
li $v0, 10
syscall
.end main
