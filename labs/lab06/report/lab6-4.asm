%include 'in_out.asm' ;

SECTION .data
msg: DB 'Введите значение переменной x: ',0
rem: DB 'Результат: ', 0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:

mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
add eax,-5
mov ebx,(10*x-5)

mul ebx
mov edi, eax

mov eax,rem
call sprint
mov eax,edi
call iprint
call quit
