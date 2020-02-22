program Shyfrovka;
uses Crt;
var start:char;
    destination:char;
    leftPath:shortint;
    rightPath:shortint;
begin
clrscr;
writeln('Input the start point: ');
readln(start);
writeln('Where you would like to travel: ');
readln(destination);
     asm
        mov al,start
        mov dl,destination

        cmp dl,al
        jl @less
        sub dl,al
        mov rightPath,dl
        mov al,start
        mov dl,destination
        sub dl,al
        sub dl,25
        sub dl,1
        mov leftPath,dl
        jmp @exit
        @less:
        sub al,dl
        mov rightPath,al
        mov al,start
        mov dl,destination
        sub al,dl
        sub al,25
        sub al,1
        mov leftPath,al
        @exit:
     end;
writeln('Right Path: ', rightPath);
writeln('Left Path: ', leftPath);
readkey;
end.