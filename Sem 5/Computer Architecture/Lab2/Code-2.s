#2. implement for loop, take input from user N and iterate and add with following  
.data
msg1: .asciiz "enter N value: "
msg2: .asciiz "the sum after N iterations: "

.text
main:

li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall 
move $t2, $v0

li $t0,0

L2: bgt $t0, $t2, L1
    add $t1, $t1, $t0
    addi $t0, $t0, 1
    j L2

L1: li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 10
    syscall
.end main
