program ForLoop;
uses Crt;
var i,n:integer;
 result:integer;
BEGIN
ClrScr;
writeln('Input n');
readln(n);
result:=0;
for i:=1 to n do result:=result+i;
writeln('The result is ',result);
repeat until KeyPressed;
END.