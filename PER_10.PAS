program Perch;
uses Crt;
var number:integer;
    result:char;
begin
     ClrScr;
     writeln('Enter a number:');
     readln(number);
     result:='N';
     asm
        mov ax,number
        mov cx,12
        mov dl,'N'

        @cycle:
         mov bx,ax
         and bx,111111b
         cmp bx,0
     je @zero
         shr ax,1
         loop @cycle
         jmp @exit
         @zero:
         mov dl,'Y'
         @exit:
         mov ah,2h
         int 21h
     end;
repeat until KeyPressed;
end.