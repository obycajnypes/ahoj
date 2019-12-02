program sifra;
uses crt;

type tPole=array['A'..'Z','A'..'Z'] of char;

 var mojepole:tPole;
     i,j:integer;
     posun:integer;
     pomocna:integer;
begin
  clrscr;
  posun:=0;
  for i:=65 to 90 do begin
    for j:=65 to 90 do begin
    pomocna:=j+posun; if pomocna>90 then pomocna:=pomocna-90+64;
    mojepole[chr(i),chr(j)]:=chr(pomocna);

    end; posun:=posun+1;
  end;
  for i:=65 to 90 do begin
  for j:=65 to 90 do begin write(mojepole[chr(i),chr(j)]:2);
  end;  writeln;
  end;
  readln;
end.

