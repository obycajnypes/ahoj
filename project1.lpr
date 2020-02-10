program project1;
uses crt;
var
dekompresia:text;
vystup:text;
cisla:array[1..2500] of integer;
sucet:integer;
i,k,j,f,x:integer;
riadok:array[1..2500]of string;
pocet:array[1..2500]of integer;
begin
assign(dekompresia,'dekompresia_obrazka_1.txt');
reset(dekompresia);  i:=1;
while not eof(dekompresia) do
begin
      read(dekompresia,cisla[i]);
      i:=i+1;

end;
close(dekompresia);
writeln('sirka obrazka je ',cisla[1],' vyska obrazka je ',cisla[2],' a pocet vsetkych bodov je ',cisla[1]*cisla[2]);
i:=3;           k:=1;
repeat sucet:=0;  j:=0;
     repeat
       write(cisla[i],' '); sucet:=sucet+cisla[i];  i:=i+1;   j:=j+1;
     until(sucet=cisla[1]);
     writeln;          pocet[k]:=pocet[k]+j;
     k:=k+1;
until(k=cisla[2]+1);


{assign(vystup,'dekompresia_obrazka_vystup.txt');
rewrite(vystup);
writeln(vystup,cisla[1],' ',cisla[2]); }

{close(vystup);    }
readln;
end.

