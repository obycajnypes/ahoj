program suradnice;
var ax,bx,ay,by:real;
  vektorx,vektory:real;
  vzdialenost:real;

begin
  randomize;
  ax:=random*200-100;
  bx:=random*200-100;
  ay:=random*200-100;
  by:=random*200-100;
  writeln('A[',ax:4:2,',',ay:4:2,']');
  writeln('B[',bx:4:2,',',by:4:2,']');

  if(ax>0) and (ay>0) then writeln('bod A je v prvom kvadrante');           ///////vypisanie z ktoreho kvadrantu je dany bod podla znamienka
  if(ax>0) and (ay<0) then writeln('bod A je v stvrtom kvadrante');
  if(ax<0) and (ay<0) then writeln('bod A je v tretom kvadrante');
  if(ax<0) and (ay>0) then writeln('bod A je v druhom kvadrante');
  if (ax=0) or (ay=0) then writeln('nie je v ziadnom z kvadrantov');


  if(bx>0) and (by>0) then writeln('bod B je v prvom kvadrante');
  if(bx>0) and (by<0) then writeln('bod B je v stvrtom kvadrante');
  if(bx<0) and (by<0) then writeln('bod B je v tretom kvadrante');
  if(bx<0) and (by>0) then writeln('bod B je v druhom kvadrante');
  if (bx=0) or (by=0) then writeln('nie je v ziadnom z kvadrantov');



  //vzdialenost vektorov
  vektorx:=ax-bx; //odcitam X-ovu suradnicu jednoho bodu od druheho
  vektory:=ay-by; //octiam Y-psilonovu suradnicu jednoho bodu od druheho
  vzdialenost:=sqrt(sqr(vektorx)+sqr(vektory));  //odmocnina zo suradnic na druhu sa rovna vzdialenost
  writeln('vzdialenost bodov je ',vzdialenost:4:2);
  readln;
end.

