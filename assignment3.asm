; First Program for MASM 32-bit

.386  					 ; Signifying that the program is in 32 bit
.MODEL FLAT, stdcall  			 ; Sets up the FLAT memory model
.STACK 4096 				 ; Alotting stack size

ExitProcess PROTO, dwExitCode:DWORD  	 ; Setting up the exit process

.DATA  					 ; Variable header
answer_string db 'The answer is: '  	 ; Creates a string variable that can be used later if we want

.CODE  					 ; Code header
_main PROC  				 ; Creates main program process
	mov eax, 73   			 ; Moves the value of 73 to the eax register
	mov ebx, 45	  		 ; Moves the value of 45 to the ebx register
	mov ecx, 13   			 ; Moves the value of 13 to the ecx register
	mov edx, 88   			 ; Moves the value of 88 to the edx register

	add eax, ebx  			 ; Adds the value stored in the ebx register to the eax register
	add ecx, edx  			 ; Adds the value stored in the edx register to the ecx register

	sub eax, ecx  			 ; Subtracts the value stored in the ecx register from the eax register
	
	INVOKE ExitProcess, 0  		 ; Calls the previously set up exit process
_main ENDP  				 ; Terminates the main program process
END  					 ; Termination line for the file
