var
    h1,h2:text;
    st,ans:string;
    sum,i:integer;
    loop,modd:longint;

begin
    assign(h1,'TONGHV.INP');
    assign(h2,'TONGHV.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,st);
    sum:= 0;
    loop:= 1;
    for i:= 1 to length(st) do
    begin
        sum:= ORD(st[i]) - 48 + sum;
        loop:= loop * i;
    end;
    loop:= loop DIV length(st) * sum;

    ans:='';
    for i:= 1 to length(st) do
    begin
        ans:= ans + CHR((modd + loop) MOD 10 + 48);
        modd:= loop div 10;
    end;
    if modd <> 0 then
    begin STR(modd,st); ans:= ans + st; end;
    for i:= length(ans) downto 1 do
    begin
        write(h2,ans[i]);
    end;

    close(h1);
    close(h2);
end.
