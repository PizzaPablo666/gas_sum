.section .data

msg:
   .ascii "The sum is: \n"
    len = . - msg
   
num1:
   .long 12

.section .text

.global _start

_start:
 
   movl $4, %eax
   movl $1, %ebx
   movl $msg, %ecx
   movl $len, %edx
   int  $0x80

   movl $1, %ecx # our second number
   add num1, %ecx  

#exit

   movl $1, %eax
   movl %ecx, %ebx  #this we gonna change
   int $0x80 



