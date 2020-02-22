program ExhangeBytes;
Uses Crt;
Var number:byte;
    result:char;
begin
clrscr;
writeln('Enter the number from 0..255: ');
readln(number);
asm
   mov al,number
   mov bl,number
   mov cl,4
   mov dl,number

   and bl,00001111b
   and dl,11110000b
   shr dl,cl
   cmp dl,bl
   jge @equalsOrGreater
   mov result,'L'
   jmp @exit
   @equalsOrGreater:
   mov result,'H'
   @exit:
end;
writeln('Comparing the first and last four bits. Result: ', result);
readkey;
end.