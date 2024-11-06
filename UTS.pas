var
    h1,h2:text;
    n,i:longint;

begin
    assign(h1,'UTS.INP');
    assign(h2,'UTS.OUT');
    reset(h1);
    rewrite(h2);

    readln(h1,n);
    for i:= Round(Sqrt(n)) downto 1 do
    begin
        if n MOD i = 0 then begin write(h2,i); break; end;
    end;

    close(h1);
    close(h2);
end.
