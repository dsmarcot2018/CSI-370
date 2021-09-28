; First Program for MASM 32-bit

.386						; Signifying that the program is in 32 bit
.MODEL FLAT, stdcall				; Sets up the FLAT memory model
.STACK 4096					; Alotting stack size

ExitProcess PROTO, dwExitCode:DWORD		; Setting up the exit process

.DATA  						; Variable header
arrayA WORD 5, 10, 15, 20			; Creates an array full of WORD values
arrayB DWORD 4 dup (?)				; Creates an empty array that can contain 4 DWORD values
multiplier DWORD 8				; Creates a DWORD variable containing the number 8

.CODE  ; Code header
_main PROC					; Creates main program process
	lea esi, arrayB				; Stores the address of arrayB in the esi register
	mov ebx, multiplier			; Stores the value in multiplier in the ebx register
	movzx eax, [arrayA]			; Stores the first cell of arrayA in the eax register and changes the size so that it fits in the register
	mul ebx					; Multiplied the ebx register to the eax register
	mov [arrayB], eax			; Stores the newly multiplied value in eax to the first cell of arrayB
	movzx eax, [arrayA + 2]			; Stores the second of arrayA in the eax register and changes the size so that it fits in the register
	mul ebx					; Multiplied the ebx register to the eax register
	mov [arrayB + 4], eax			; Stores the newly multiplied value in eax to the second cell of arrayB
	movzx eax, [arrayA + 4]			; Stores the third of arrayA in the eax register and changes the size so that it fits in the register
	mul ebx					; Multiplied the ebx register to the eax register
	mov [arrayB + 8], eax			; Stores the newly multiplied value in eax to the third cell of arrayB
	movzx eax, [arrayA + 6]			; Stores the fourth of arrayA in the eax register and changes the size so that it fits in the register
	mul ebx					; Multiplied the ebx register to the eax register
	mov [arrayB + 12], eax			; Stores the newly multiplied value in eax to the third cell of arrayB
	
	INVOKE ExitProcess, 0			; Calls the previously set up exit process
_main ENDP					; Terminates the main program process
END						; Termination line for the file
