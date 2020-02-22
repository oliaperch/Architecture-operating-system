Program OddBytes;
Uses Crt;
Var number,result:byte;
begin
clrscr;
writeln('Number: ');
readln(number);
asm
   mov cl,0
   mov dl,0
   @loop:
   mov al,number
   mov bl,1
   shr al,cl
   shl bl,cl
   and al,bl
   add dl,al
   inc cl
   cmp cl,4
   jne @loop
   mov result,dl
end;
writeln('Result: ', result);
readkey;
end.