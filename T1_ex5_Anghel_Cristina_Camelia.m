%reprezentarea semnalului sinusoidal redresat dubla alternanta
%perioada=4 +> frecventa(f)=1/4
%amplitudinea(A)=1.5
%reprezentarea pentru rezolutie temporara de 2ms
t=0:0.002:4; %semnalul porneste de la 0s cu un pas de 0.002 pana la 4s
s=1.5*sin(2*pi*0.25*t); %sintaxa semnalului sinusoidal s=A*sin(2*pi*f*t)
for i=1:length(s)
if s(i)<0
    s(i)=-1*s(i);%pentru a transforma semnalul intr-unul redresat dubla alternanta inmultimi componentele negative cu -1
end
end
subplot(3,1,1)%pentru a reprezenta toate cele 3 grafice in aceeasi fereasta folosim functia subplot
plot(t,s) %reprezentarea grafica a semnalului in functie de timp

%reprezentarea semnalului pentru o rezolutie temporara de 20 ms
t=0:0.02:4;
s=1.5*sin(2*pi*0.25*t);
for i=1:length(s)
    if s(i)<0
        s(i)=-1*s(i);
    end
end
subplot(3,1,2)
plot(t,s)

%reprezentarea semnalului pentru o rezolutie temporara de 200 ms
t=0:0.2:4;
s=1.5*sin(2*pi*0.25*t);
for i=1:length(s)
    if s(i)<0
        s(i)=-1*s(i);
    end
end
subplot(3,1,3)
plot(t,s)
