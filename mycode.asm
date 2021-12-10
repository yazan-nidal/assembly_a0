.model small 
.stack 64 
;----------------------------------------------------------------------
.data 
Str1 DB "Yazan Nidal Abd AL-Rahman 11821168 $"     
;----------------------------------------------------------------------
.code 
myproc proc far
  mov ax,@data
  mov ds, ax   
  
  mov cx,00
  
   lea SI,Str1
   lea DI,Str1  
   
   
   B19: 

   inc DI 
   inc CX
   
   cmp  [DI] ,'$'
   je B21
   
   jmp B19
   
   
      B21: 
      dec DI 
      mov ax,cx  ;; 
      mov cx,2
      div cx 
      mov cx,ax
      
   ;store Reverse string in str1
   
   B20: 
   
   mov AL,[SI]  
   mov BL,[DI]  
   
   mov [DI],AL 
   mov [SI],BL
    
   inc SI 
   dec DI  
   dec CX 
   
   jnz B20  
   
 
     
   
   LEA DX,Str1  
  
; output the string 
; loaded in dx  
MOV AH, 09H  
INT 21H  
   
   mov AX,4c00h;
   
    int 21h 
    
endp myproc 
end   



