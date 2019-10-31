%semnal dreptunghiular periodic
%reprezentare pentru rezolutie temporara de 2ms
t=0:0.002:2; %avand o perioada de 2s si o rezolutie temporara 2ms, perioada...
...semnalului va porni de la 0 pana la 2 cu un pas de 0.002 
s=square(t,25); % semnal dreptunghiular cu duty cicle 25%

%am observat ca semnalul initial are un nivel maxim=1 si nivel minim=-1
%cum ni se cere ca nivelul maxim=0.5 toate valorile pozitive le vom imparti
%la 2
for i=1:1:length(s) 
    if s(i)>0
        s(i)=s(i)/2;
   end
end
subplot(3,1,1)%pentru a reprezenta toate cele 3 grafice in aceeasi fereastra am folosit funsctia subplot
plot(t,s,'.-'),grid %reprezentarea grafica a semnalului in functie de timp

%reprezentarea pentru rezolutie temporara de 20ms
t=0:0.02:2;
s=square(t,25);
for i=1:1:length(s) 
    if s(i)>0
        s(i)=s(i)/2;
   end
end
subplot(3,1,2)
plot(t,s,'.-'),grid

%reprezentarea pentru rezolutie temporara de 200ms
t=0:0.2:2;
s=square(t,25);
for i=1:1:length(s) 
    if s(i)>0
        s(i)=s(i)/2;
   end
end
subplot(3,1,3)
plot(t,s,'.-'),grid


