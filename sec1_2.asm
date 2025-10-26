.data
name: .asciiz "Name :Alyaa\n"
id: .asciiz "Id : 20812022200544\n"
course: .asciiz "Course : Computer Organization"

.text
main:
     li $v0, 4
     la $a0 ,name
     syscall

     li $v0, 4
     la $a0 ,id
     syscall

                                                                                                                  
     li $v0, 4
     la $a0 ,course
     syscall

     li $v0, 10
     syscall