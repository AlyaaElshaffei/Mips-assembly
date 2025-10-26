.data
prompt: .asciiz "Enter a positive integer n: "
result_msg: .asciiz "The sum of first n natural numbers = "

.text

main:

 
    li $v0, 4
    la $a0, prompt
    syscall


    li $v0, 5
    syscall
    move $t0, $v0    # t0 = n


    li $t1, 0       
    li $t2, 1       

for_loop:
    bgt $t2, $t0, end_loop   

    add $t1, $t1, $t2        
    addi $t2, $t2, 1        

    j for_loop

end_loop:
 
    li $v0, 4
    la $a0, result_msg
    syscall


    move $a0, $t1
    li $v0, 1
    syscall


    li $v0, 10
    syscall
