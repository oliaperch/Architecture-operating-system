program Second;
uses Crt;
var a,b:integer;
BEGIN
writeln('Type number: ');
readln(a);
          asm
             mov bx,a
             mov cx,16
             mov ax,0
             @loop:
             shr bx,1
             jc @odin
             jnc @end
             @odin:
             add ax,1
             @end:
             loop @loop
             mov b,ax
          end;
writeln('Result is: ',b);
repeat until KeyPressed;
END.
