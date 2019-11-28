.section .data

msg:
   .ascii "The sum is: \n"
    len = . - msg


num1: .byte 2 
num2: .byte 2
sum: .byte 2
.section .text

.global _start

_start:


#input1
   movl $3, %eax
   movl $0, %ebx
   movl $num1, %ecx
   movl $3, %edx
   int $0x80


#input2
   movl $3, %eax
   movl $0, %ebx
   movl $num2, %ecx
   movl $3, %edx
   int $0x80


#The sum is:
   movl $4, %eax
   movl $1, %ebx
   movl $msg, %ecx
   movl $len, %edx
   int  $0x80

   movl num1, %ecx
   add  num2, %ecx
   movl %ecx, sum
   

   
   movl $4, %eax
   movl $1, %ebx
   movl $sum, %ecx
   movl $3, %edx
   int $0x80
 

#exit
   sub $96, sum
   movl $1, %eax
   movl sum, %ebx  #this we gonna change
   int $0x80


