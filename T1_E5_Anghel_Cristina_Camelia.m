%a)modificarea pasului de variatie a variabilei t la 0.01 apoi la 0.0002
%am considerat ca modificarea se face exemplului din platforma
figure(1)
F=50;
t=0:0.001:0.2; % semnalul de la 0 la 2 cu pasul 0.001
s=2*sin(2*pi*F*t);
plot(t,s,'.-'), xlabel('Timp[s]'),title('pas 0.001'),grid %reprezentare grafica a semnalului
% am denumit axa ox axa timpului si titlul graficului reprezentativ pentru
% pas

figure(2)
F=50;
t=0:0.01:0.2; % semnalul de la 0 la 2 cu pasul 0.01
s=2*sin(2*pi*F*t);
plot(t,s,'.-'), xlabel('Timp[s]'),title('pas 0.01'),grid %reprezentarea grafica a semnalului

figure(3)
F=50;
t=0:0.0002:0.2; %semnalul de la 0 la 2 cu pasul 0.0002
s=2*sin(2*pi*F*t);
plot(t,s,'.-'), xlabel('Timp[s]'),title('pas 0.0002'),grid %reprezentarea grafica a semnalului

% am folosit figure(1), figure (2) si figure(3) pentru ca la rularea
% programului sa fie afisate toate cele 3 semnale in ferestre diferite

%c)generarea unui semnal cosinusoidal  cu F=20Hz, culoare rosie peste
%semnalul sinusoidal initial
%pentru ca la rularea programului sa afisez si cerinta anterioara voi
%folosi figure(4)
figure(4)
F=50;
t=0:0.001:0.2; 
s=2*sin(2*pi*F*t);
plot(t,s,'.-'), xlabel('Timp[s]'),title('sinusoidal vs cosinusoidal'),grid 
hold on %am folosit hold on pentru a reprezenta cele doua semnale pe acelasi grafic
F=20;
t=0:0.001:0.2; 
s=2*cos(2*pi*F*t); % semnalul cosinusoidal
plot(t,s,'.-') %reprezentarea semnalului cosinusoidal, s-a reprezentat automat cu rosu


