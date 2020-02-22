program ASS;
Uses Crt;
Var number:integer;
    result:integer;
begin
clrscr;
writeln('Enter the number from 0..65546: ');
readln(number);
result:=0;
asm
   mov ax,number
   mov bx,number
   mov dx,0000000000000001b
   mov cx,0
   mov cl,0
   mov al,0
   mov bl,0
   mov si,0

   @cycle:
   cmp si,8
   jl @less
   mov result,cx
   jmp @exit
   @less:

   mov cl,bl
   shl dx,cl

   mov bx,ax
   and bx,dx

   mov cl,al
   shr bx,cl

   add cx,bx

   add al,1
   add bl,2
   inc si
   jmp @cycle

   @exit:
end;
writeln('Result: ', result);
readkey;
end.