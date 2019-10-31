%initializez vectorul (v) cu elemente aleatoare cu distributie normala(gaussiana)
v=randn(1,7) %am considerat vector o matrice cu un singur rand si 7 coloane

%parcurgem vectorul de la pozitia 1 pana la pozitia 7 pentru a gasi
%elementele negative
for j=1:1:7
    if v(1,j)<0 %verificam daca numarul este negativ
        disp(v(1,j)) %daca este negativ il afisez
    end
end

