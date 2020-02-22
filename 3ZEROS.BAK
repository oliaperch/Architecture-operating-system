program CheckSequence;
Uses Crt;
Var number:byte;
    result:char;
begin
clrscr;
writeln('Enter the number from 0..255: ');
readln(number);
result:='N';
asm
    mov al,number
    mov bl,number
    mov si,0
    mov cl,1

    @cycle:
    cmp si,6
    jl @doOperations
    jmp @exit
           @doOperations:
           mov al,bl
           and al,00000111b
           cmp al,0
           je @isZero
           shr bl,cl
           inc si
           jmp @cycle

           @isZero:
           mov result,'Y'
           jmp @exit
    @exit:
end;
writeln('Result: ', result);
readkey;
end.