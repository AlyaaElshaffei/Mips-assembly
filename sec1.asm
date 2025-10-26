.data
name:.asciiz "Alyaa\n"
id:.asciiz "123456\n"
course:.asciiz "logic design\n"
promot1 : .asciiz "name: "
promot2 : .asciiz "id: "
promot3 : .asciiz "course: "



.text
main :

    li $v0,4
    la $a0,promot1
    syscall

    li $v0,4
    la $a0,name
    syscall



    li $v0,4
    la $a0,promot2
    syscall


    li $v0,4
    la $a0,id
    syscall

    li $v0,4
    la $a0,promot3
    syscall

    li $v0,4
    la $a0,course
    syscall
    li $v0,10
    syscall