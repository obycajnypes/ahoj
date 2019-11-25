program big;

const
  RIADKOV = 5;
  STLPCOV = 5;

type
  tTabulka = array [1..RIADKOV, 1..STLPCOV] of integer;
  //---------------------------
  //zobrazenie tabulky
  procedure zobraz(var pole: tTabulka);
  var
    i, j: integer;
  begin
    for i := 1 to RIADKOV do
    begin
      for j := 1 to STLPCOV do
      begin
        Write(' ', pole[i, j]: 4);
      end;
      writeln;
    end;
    for i := 1 to STLPCOV do
      Write('-----');
  end;
  //----------------------------
  //vygenerovanie nahodnych cisel
  procedure inicializuj(var pole: tTabulka; var od, po: integer);
  var
    i, j: integer;
  begin
    for i := 1 to RIADKOV do
    begin
      for j := 1 to STLPCOV do
      begin
        pole[i, j] := random(po - od + 1) + od;
      end;
      writeln;
    end;
  end;
  //---------------------------
  //zapisanie do suboru
  procedure zapis(var pole: tTabulka);
  var
    subor: Text;
    i, j: integer;
  begin
    Assign(subor, 'sleeper.txt');
    rewrite(subor);
    for i := 1 to RIADKOV do
    begin
      for j := 1 to STLPCOV do
      begin
        Write(subor, pole[i, j]: 4, ' ');
      end;
      writeln(subor);
    end;
    Close(subor);
  end;
  //-----------------------
  //vypisanie najmensieho cisla z riadku
  procedure najmensi(var pole: tTabulka; po: integer);
  var
    i, j, hodnota: integer;
  begin
    hodnota := po + 1;
    for i := 1 to RIADKOV do
    begin
      for j := 1 to STLPCOV do
      begin
        if (pole[i, j] < hodnota) then
          hodnota := pole[i, j];
      end;
      writeln;
      writeln('najmensie je ', hodnota);
      hodnota := po + 1;
    end;
  end;
  //------------------------
  //zrkadlove vypisanie
  procedure zrkadielko(var pole: tTabulka);
  var
    i, j: integer;
  begin
    writeln;
    for i := RIADKOV downto 1 do
    begin
      for j := 1 to STLPCOV do
      begin
        Write(' ', pole[i, j]: 4);
      end;
      writeln;
    end;
  end;
  //------------------
  //citanie zo suboru
  procedure citam(var pole: tTabulka);
  var
    i, j: integer;
    subor: Text;
  begin
    Assign(subor, 'sleeper.txt');
    reset(subor);
    for i := 1 to RIADKOV do
    begin
      for j := 1 to STLPCOV do
      begin
        Read(subor, pole[i, j]);
      end;
    end;
    Close(subor);
    zobraz(pole);
  end;



var
  mojepole: tTabulka;
  dolna, horna: integer;
begin
  writeln('zadaj rozsah  cisel od do ');
  readln(dolna, horna);
  citam(mojepole);
  readln;
end.
