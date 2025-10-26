.data
promot1:.asciiz "Enter the frist number : "
promot2:.asciiz "Enter the second number : "
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
    la $a0,result
    syscall

    add $a0,$t0,$t1



    li $v0,1
    syscall

    li $v0,10
    syscall

     
