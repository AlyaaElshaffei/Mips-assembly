.data
promptN: .asciiz "Enter number of integers (n): "
promptNum: .asciiz "Enter an integer: "
resultMsg: .asciiz "The average is: "

.text

main:

 
    li $v0, 4
    la $a0, promptN
    syscall

    li $v0, 5
    syscall
    move $t0, $v0   


    li $t1, 0        
    li $t2, 0       

loop:
    beq $t2, $t0, calc_avg   


    li $v0, 4
    la $a0, promptNum
    syscall

    li $v0, 5
    syscall
    add $t1, $t1, $v0  
    
    addi $t2, $t2, 1  

    j loop

calc_avg:
  
    div $t1, $t0
    mflo $t3   

   
    li $v0, 4
    la $a0, resultMsg
    syscall

   
    move $a0, $t3
    li $v0, 1
    syscall

  
    li $v0, 10
    syscall
