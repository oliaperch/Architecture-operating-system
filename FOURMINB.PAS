program fourBytes;
Uses Crt;
Var number:integer;
    minInteger:integer;
begin
clrscr;
writeln('Input the number: ');
readln(number);
asm
   mov ax,0000000000001111b
   mov bx,1111111111111111b
   mov cl,4
   mov dx,number

   @loop:
   cmp si,4
   je @exit
   and dx,ax
   shl ax,cl
   inc si

   cmp dx,bx
   jl @saveResult
   jmp @loop

   @saveResult:
   mov bx,dx

   jmp @loop
   @exit:
   mov minInteger,bx
   end;
writeln('The minimum integer: ', minInteger);
readkey;
end.