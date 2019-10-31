%semnal sinusoidal redresat monoalternanta
%perioada=3s ; f=1/T => f=1/3
%reprezentare semnalului pentru rezolutia temporara de 2ms
t=0:0.002:3;
s=0.8*sin(2*pi*1/3*t); %sintaxa semnalului sinusoidal este s= A*sin(2*pi*f*t)
% unde A este amplitudinea, f frecventa si t perioada
for i=1:length(s)
    if s(i)<0  %pentru a avea un semnal sinusoidal redresat moanoalternanta toate elementele negative le egalam cu 0
        s(i)=0;
    end
end
subplot(3,1,1)%pentru a reprezenta toate cele 3 grafice intr-o singura fereastra am folosit functia subplot
plot(t,s)  % reprezentarea grafica a semnalului in functie de timp

% reprezentarea semnalului pentru rezolutia temporara de 20ms
t=0:0.02:3;
s=0.8*sin(2*pi*1/3*t);
for i=1:length(s)
    if s(i)<0 
        s(i)=0;
    end
end
subplot(3,1,2)
plot(t,s)

% reprezentarea semnalului pentru rezolutia temporara de 200ms
t=0:0.2:3;
s=0.8*sin(2*pi*1/3*t);
for i=1:length(s)
    if s(i)<0 
        s(i)=0;
    end
end
subplot(3,1,3)
plot(t,s)