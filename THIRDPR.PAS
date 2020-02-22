program Third;
uses Crt;
var character:char;
    b:integer;
BEGIN
writeln('Type a character: ');
readln(character);
                  asm
                     mov bl,character
                     mov b,bx
                  end;
writeln('The result is: ',b);
repeat until KeyPressed;
END.