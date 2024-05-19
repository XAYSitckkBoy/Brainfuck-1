section .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcome
section .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcomesection .data
    secret_number db 42      ; The secret number to guess
    guess db 0               ; The player's guess
    message_correct db "Congratulations! You guessed the number!", 0xA, 0xD, '$'
    message_high db "Too high! Try again.", 0xA, 0xD, '$'
    message_low db "Too low! Try again.", 0xA, 0xD, '$'

section .text
    global _start

_start:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, msg_welcome ; address of the message
    mov     edx, msg_len    ; length of the message
    int     0x80            ; invoke syscall

    ; Game loop
game_loop:
    ; Read user input
    mov     eax, 3          ; syscall number for sys_read
    mov     ebx, 0          ; file descriptor 0 (stdin)
    mov     ecx, guess      ; address to store the input
    mov     edx, 2          ; number of bytes to read
    int     0x80            ; invoke syscall

    ; Convert ASCII input to integer
    mov     bl, [guess]
    sub     bl, '0'         ; convert ASCII to integer

    ; Compare guess with secret number
    cmp     bl, secret_number
    je      correct_guess
    ja      too_high
    jb      too_low

too_high:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_high ; address of the message
    call    print_message
    jmp     game_loop

too_low:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_low ; address of the message
    call    print_message
    jmp     game_loop

correct_guess:
    mov     eax, 4          ; syscall number for sys_write
    mov     ebx, 1          ; file descriptor 1 (stdout)
    mov     ecx, message_correct ; address of the message
    call    print_message
    jmp     end_game

print_message:
    mov     edx, 25         ; length of the message
    int     0x80            ; invoke syscall
    ret

end_game:
    mov     eax, 1          ; syscall number for sys_exit
    xor     ebx, ebx        ; exit code 0
    int     0x80            ; invoke syscall

section .data
    msg_welcome db "Guess the secret number (0-9): ", 0xA, 0xD, '$'
    msg_len equ $ - msg_welcome
