; Assignment 5, Drew Marcotte
.386                                    ; Signifying that the program is in 32 bit
.MODEL FLAT, stdcall                    ; Sets up the FLAT memory model
.STACK 4096                             ; Alotting stack size
ExitProcess PROTO, dwExitCode:DWORD     ; Setting up the exit process

.DATA                                   ; Variable header
totalNum DWORD 0                        ; Creates a DWORD set to 0 that will hold the total added number
prevNum DWORD 0                         ; Creates a DWORD set to 0 that will hold the previous number in the sequence

.CODE                                   ; Code header
main PROC                               ; Creates main program process
  mov ebx, 1                            ; Moves the 1 value to the ebx register, this is the first number in the fibonacci sequence
  mov ecx, 2                            ; Moves the 2 value to the ecx register, this is the divisor to check if a number is even or not
  fibLoop:                              ; Loop header
    mov eax, ebx                        ; Moves the ebx value to the eax register
    mov edx, 0                          ; Moves 0 to the edx register
    div ecx                             ; Divides the eax register by the ecx register, remainder is stored in edx
    cmp edx, 0                          ; Compares the edx register to 0
    je fibAdd                           ; If the value in the edx register is equal to 0 then jump to fibAdd
    add totalNum, ebx                   ; Adds the value stored in the ebx register to totalNum

    fibAdd:                             ; Section header
      mov edx, ebx                      ; Moves the value stored in the ebx register to the edx register
      add ebx, prevNum                  ; Adds the value stored in prevNum to the ebx register
      mov prevNum, edx                  ; Moves the value stored in the edx register to prevNum
    
    mov eax, 1000000                    ; Moves the value 1,000,000 to the eax register
    sub eax, ebx                        ; Subtracts the value in the ebx register from the value in the eax register
    cmp eax, 0                          ; Compares the value in the eax register to 0
    jg fibLoop                          ; If the value in the eax register is greater than 0 then jump back to fibLoop

  lea esi, totalNum                     ; Lists the effective address of totalNum in the esi register
  lea esi, prevNum                      ; Lists the effective address of prevNum in the esi register

  INVOKE ExitProcess, 0                 ; Calls the previously set up exit process
main ENDP                               ; Terminates the main program process
END                                     ; Termination line for the file
