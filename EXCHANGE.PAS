program ExhangeBytes;
Uses Crt;
Var number,result:byte;
begin
clrscr;
writeln('Enter the number from 0..255: ');
readln(number);
asm
   mov al,number
   mov bl,al
   mov dl,al
   and bl,00001111b
   and cl,11110000b
   mov cl,4
   shr dl,cl
   shl bl,cl
   add dl,bl
   mov al,dl
   mov result,al
end;
writeln('Start value: ', number);
writeln('Value after exchange: ', result);
readkey;
end.