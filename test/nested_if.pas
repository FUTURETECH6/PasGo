
program nested_if;

const 
  y = 1;

var 
  i, x : integer;

function go(b : integer): integer;
begin
  if b = 1 then go := 1
  else
    begin
      if b = 2 then go := 2
      else
        begin
          go := go(b - 1);
        end;
    end;
end;

begin
  x := go(3);
  for i := 0 to 10 do
    begin
      x := x + 1;
    end;
  writeln(x);
end.
