program Simplest;
{Simple program which calculates the sum of two numbers}
uses Crt;
var a,b:shortint;
    Sum:shortint;
BEGIN
ClrScr;
writeln('Enter the first operand');
readln(a);
writeln('Enter the second operand');
readln(b);
         asm
         mov al,a
         mov bl,b
         add al,bl
         mov Sum,al
         end;
writeln('The result is: ',Sum);
repeat until KeyPressed;
END.