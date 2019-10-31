%semnal dreptunghiular multinivel
%reprezentare pentru rezolutia temporara de 2ms
nr_nivele=8;%pentru d){-7,-5,-3,-1,1,3,5,7} avem 8 nivele
t=0:0.002:nr_nivele+1; %am adaugat 1 la nr de nivele pentru ca semnalul sa atinga si nivelul 7
j=1;
for i=1:length(t) %parcurgem vectorul de la 0 la 9
    if t(i)<=j*0.25 % verificam daca durata unui vinel este mai mica sau egala de 0.25s
        if j<=length(t)
        s(i)=t(j);%daca j<perioada atunci semnalul primeste valoarea perioadei
    else
        s(i)=0;%daca j>perioada semnalul va primi 0
        end
    else
        if j<=length(t)
            s(i)=t(j);
        end
        j=j+1; %am marit j pentru a putea parcurge vectorul t in continuare
    end
end
s=s*200-7 % am abservat ca semnanului intial trebuia inmultit cu 200 pentru a atinge nivelurile de 1,3,5,7
%apoi am scazut 7 pentru a obtine niveluri de la -7 la 7

plot(t,s), grid %reprezentarea grafica a semnalului

