#1. d=a+b-c, input each a,b,c and calculate the formula as given
#sol: 
#a - t0 terminal
#b - t1 terminal
#c - t2 terminal 
#d - t3 terminal

.data
msga: .asciiz "enter 'a' value: "
msgb: .asciiz "enter 'b' value: "
msgc: .asciiz "enter 'c' value: "
msgd: .asciiz "the result for calculating using formula d = a+b-c is: "

.text
main:

li $v0, 4
la $a0, msga
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, msgb
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 4
la $a0, msgc
syscall

li $v0, 5
syscall
move $t2, $v0

add $t0, $t0, $t1
sub $t3, $t0, $t2

li $v0, 4
la $a0, msgd
syscall

li $v0, 1
move $a0, $t3
syscall

li $v0, 10
syscall
