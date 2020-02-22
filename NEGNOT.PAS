program NegNot;
uses Crt;
var a,r:shortint;
BEGIN
ClrScr;
writeln('Input a');
readln(a);
asm
mov al,a
mov bl,al
not al
neg bl
sub bl,al
mov r,bl
end;
writeln('You have ',r);
repeat until KeyPressed;
END.