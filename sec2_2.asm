.data
prompt: .asciiz "Enter a number"
prompt1: .asciiz "positive"
prompt2: .asciiz "negative"
prompt3: .asciiz "zero"



.text
main:
    li $v0,4
    la $a0 ,prompt
    syscall
    li $v0,5
    syscall
    move $t0,$v0

if:
    bne $t0 ,$zero ,elseif
    la $a0,prompt3
    j endif
elseif:
    blez $t0, else
    la $a0,prompt1
    j endif
else:
    la $a0,prompt2
    j endif
endif:
    li $v0,4
    syscall

    li $v0,10
    syscall