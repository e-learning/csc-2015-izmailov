# >gcc -c hello1.s
# >gcc hello1.o
# >./a.out
# Ругается: Segmentation fault (core dumped)

.global main
.text

main:
    push $msg
    call puts
    sub $4, %esp
    
    mov $1, %eax
    mov $0, %ebx
    int $0x80

.data
msg:
    .ascii "Hello world!\n"