program ParneNeparne;
uses Crt;
var a,res:shortint;
BEGIN
writeln('Type a number: ');
readln(a);
          asm
             mov al,a
             and al,00000001b
			 res,al
          end;
writeln(b);
repeat until KeyPressed;
END.