### Assignment 3
Create a program that calculates the following expression: *answer = (A + B) - (C + D)*
 - 32 bit masm program
 - The answer must be stored in a variable of the correct data type.
 - The values for your data *(A, B, C, D)* must be stored in registers, not variables.
 - You must supply the initial values for the data *(A, B, C, D)*.
 - Create a string that *could* accompany the answer in an output statement
   - (e.g., "The answer is:"). You do not have to output the string.
 - Comment each line of code
 ### Grade: 19/20
 Comments:
 - Need to NULL terminate the string. I also think it's best to use BYTE as opposed to the abbreviated version DB, if you plan to use DWORD, etc. As long as you're consistent.
 - The instructions noted you should create a variable to store the result, here you just leave it in a register.
 - END tells the assembler to stop assembling.
