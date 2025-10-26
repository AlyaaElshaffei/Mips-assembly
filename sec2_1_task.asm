.data
promot1:.asciiz "Enter the frist number : "
promot2:.asciiz "Enter the second number : "
promot3:.asciiz "Enter the thrid number : "
promot4:.asciiz "Enter the fourth number : "
result:.asciiz "The result  : "

.text
main:
    li $v0,4
    la $a0,promot1
    syscall

    li $v0 ,5
    syscall
    move $t0,$v0

    li $v0,4
    la $a0,promot2
    syscall

    li $v0 ,5
    syscall
    move $t1,$v0


    li $v0,4
    la $a0,promot3
    syscall

    li $v0 ,5
    syscall
    move $t2,$v0


    li $v0,4
    la $a0,promot4
    syscall

    li $v0 ,5
    syscall
    move $t3,$v0

    li $v0,4
    la $a0,result
    syscall

    add $t4,$t0,$t1
    add $t4,$t4,$t2
    add $t4,$t4,$t3
    li $t5,4
    div $t4,$t5
    mflo $t6
    move $a0,$t6



    li $v0,1
    syscall

    li $v0,10
    syscall

     
