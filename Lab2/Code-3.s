e# 3. take input from user and check if its prime or not

.data
num: .asciiz "enter number: "
p: .asciiz "its prime..... uwu "
np: .asciiz "not prime -_(||)_- "

.text
main:

li $v0, 4
la $a0, num
syscall

li $v0, 5
syscall
move $t0, $v0

li $t1, 2
li $t2, 3

rem $t3, 

