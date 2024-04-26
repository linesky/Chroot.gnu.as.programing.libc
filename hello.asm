.intel_syntax noprefix
.global _start
.global main
.text
.extern printf
.extern exit
_start:
main:
nop            

    mov eax,offset hello
    push eax
    call printf
    add esp,4
    mov eax,0
    push eax
    call exit
    add esp,4
    ret
.data
hello: 
.ascii "\x1b[43;37mhello world.\n\0"
.word 0
stdoutss:
.word 1
stdinss:
.word 2
readsss:
.word 0
writesss:
.word 1
readwritesss:
.word 2
enters:
.word 10
clearsss:
.ascii "\x1bc\0"
