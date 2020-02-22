program GreaterNumber;
uses Crt;
var a,b,r:integer;
BEGIN
ClrScr;
writeln('Input a ');
readln(a);
writeln('Input b ');
readln(b);
          asm
          mov ax,a
          mov bx,b
          cmp ax,bx
          jg @greater
          mov r,bx
          jmp @exit
          @greater:
          mov r,ax
          @exit:
          end;
writeln('greater number is ',r);
repeat until KeyPressed;
END.