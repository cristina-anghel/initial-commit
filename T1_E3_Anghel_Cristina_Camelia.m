%realizez un vector cu 7 numere complexe
%un numar complex z=x+iy, x de la 1 la 7 , y de la 7 la 1  
x=1;
y=7;
suma=0; %am initializat suma cu 0
for j=1:1:7 %parcurgem vectorul de la pozitia 1 panal a 7
    v(1,j)=complex(x,y); %atribuim valoare complexa
    x=x+1; 
    y=y-1;
 suma=suma+real(v(1,j));% am adaugat la suma initiala fiecare parte reala a fiecarui nr complex
end;
media=suma/7 %am calculat media prin impartirea sumei la 7(7=nr meu de elemente din vector)

for j=1:1:7 %am parcurs vectorul de la pozitia initiala pana la pozitia finala
  u(1,j)=v(1,j)*v(1,j);%am tribuit vectorului u patratul fiecarui element al vectorului v
end
disp('u=') %afisez mesajul 'u=' 
disp(u) %afisez vectorul u
m=v*v'; %am creat matricea m egala cu vectorul v ori transpusul sau
disp(m) %afisez matricea m

  