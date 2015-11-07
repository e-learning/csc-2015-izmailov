# >gcc -c hello2.s
# >ld hello2.o -lc
# >./a.out
# bash: ./a.out: No such file or directory
# Хотя файл на самом деле есть

.global _start
.text

_start:
    push $msg
    call puts
    sub $4, %esp
    
    mov $1, %eax
    mov $0, %ebx
    int $0x80

.data
msg:
    .ascii "Hello world!\n"