program prirodzenecislo;
uses crt;
var cislo:integer;
    sucetcif:integer;
     pomocna:integer;
     sustava:integer;
  pole:array[1..100] of integer;
  i,j:integer;

begin
  clrscr;

  repeat
  writeln('zadaj prirodzene cislo');
  readln(cislo);
  if cislo<0 then writeln('nezadal si prirodzene cislo ,zadaj cele cislo vacsie ako 0');
  until(cislo>=0);
   pomocna:=cislo;
   //// sucet cifier
 while pomocna<>0  do begin
  sucetcif:=sucetcif+(pomocna mod 10);
  pomocna:=pomocna div 10;
  end;
 writeln('ciferny sucet cisla ',cislo,' je : ',sucetcif);
  ////////// prevody
  writeln('napis cislo do akej sustavy chces previest cislo ktore si zadal predtym, pre dvojkovu sustavu napis 2 , desiatkovu 10...');
  readln(sustava);
  i:=1;                                              // zvysky po deleni cislom danej sustavy vypisane odzadu nam daju spravnu hodnotu
  while (cislo div sustava<>0) do begin
  pole[i]:=cislo MOD sustava;
  cislo:=cislo DIV sustava;
   i:=i+1;
  end;
  if cislo<>0 then
  pole[i]:=cislo MOD sustava;   //musime este pricitat zvysok ked je cislo mensie ako sustava
  j:=i;
   for i:=j downto 1 do
   write(pole[i]);
   readln;
end.

