var
    h1,h2:text;
    arr:array [1..200000000] of longint;
    i,iter,x:longint;
    st:string;
    count,check:integer;

begin
    assign(h1,'NTDX.INP');
    assign(h2,'NTDX.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,x);
    i:= 2;
    while i * i <= x do
    begin
        while arr[i] = 1 do INC(i);
        iter:= i * i;
        while iter <= x do
        begin
            arr[iter]:= 1;
            iter:= iter + i;
        end;
        INC(i);
    end;

    count:= 0;
    check:= 0;
    for i:= 11 to x do
    begin
        if arr[i] = 0 then
        begin
            STR(i,st);
            for iter:= 1 to length(st) DIV 2 do
            begin
                if st[iter] <> st[length(st) + 1 - iter] then begin check:= 1; break; end;
            end;
            if check = 0 then INC(count);
        end;
        check:= 0;
    end;
    write(h2,count);

    close(h1);
    close(h2);
end.