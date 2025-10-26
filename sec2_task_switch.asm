.data
prompt:     .asciiz "Enter a number (1 or 2): "
msg1:       .asciiz "You selected Case 1\n"
msg2:       .asciiz "You selected Case 2\n"
msgDefault: .asciiz "Default Case!\n"

.text

main:

  
    li $v0, 4
    la $a0, prompt
    syscall

  
    li $v0, 5
    syscall
    move $t0, $v0     

    

    li $t1, 1
    beq $t0, $t1, case1

    li $t1, 2
    beq $t0, $t1, case2

    j default_case     

case1:
    li $v0, 4
    la $a0, msg1
    syscall
    j exit

case2:
    li $v0, 4
    la $a0, msg2
    syscall
    j exit

default_case:
    li $v0, 4
    la $a0, msgDefault
    syscall

exit:
    li $v0, 10
    syscall
