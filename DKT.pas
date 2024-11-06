var
    h1,h2:text;
    st:string;
    ch:char;
    count,count2:integer;

begin
    assign(h1,'DKT.INP');
    assign(h2,'DKT.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,st);
    count2:= 0;
    while st <> '' do
    begin
        ch:= st[1];
        count:= 0;
        if (st[1] in ['A'..'Z']) OR (st[1] in ['a'..'z']) then
        begin
           while POS(ch,st) <> 0 do
           begin
               DELETE(st,POS(ch,st),1);
               INC(count);
           end;
           if count > 1 then INC(count2);
        end;
    end;
    write(h2,count2);
    close(h1);
    close(h2);
end.