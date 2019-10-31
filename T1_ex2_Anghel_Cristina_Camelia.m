%semnal triungiular periodic: perioada 5s, nivel maxim=1, nivel minim=-2
%panta=1
%reprezentarea semnalului pentru rezolutie temporara de 2ms
t=0:0.002:5; %avand o perioada de 5s si o rezolutie temporara 2ms, perioada...
...semnalului va porni de la 0 pana la 2 cu un pas de 0.002
    
%sintaxa pentru generarea semnalui triunghiular s este: s = sawtooth(2*pi*F*t); 
% f=1/t => f=0.2
s=sawtooth(0.4*pi*t, 1/2);

%graficul initial are nivelul maxim=1 si nivelul minim=-1, iar pentru a
%atinge nivelul minim=-2 si nivelul maxim=1, observam ca este necesar sa
%inmultim cu 1.5 si apoi sa scadem 0.5
s=s*1.5;
s=s-0.5;
subplot (3,1,1)%pentru a reprezenta grafic in aceeasi fereastra toate cele 3 cazurile am folosit functia subplot
plot(t,s), grid %am reprezentat grafic semnalul in functie de timp

%reprezentarea pentru rezolutie temporara de 20ms
t=0:0.02:5; 
s=sawtooth(0.4*pi*t, 1/2);
s=s*1.5;
s=s-0.5;
subplot (3,1,2)
plot(t,s), grid

%reprezentarea pentru rezolutia temporara de 200ms
t=0:0.2:5;
s=sawtooth(0.4*pi*t, 1/2);
s=s*1.5;
s=s-0.5;
subplot (3,1,3)
plot(t,s), grid

