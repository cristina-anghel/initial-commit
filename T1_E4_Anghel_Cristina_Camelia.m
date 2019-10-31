%  initializarea vectorului z
z=[0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0];
i=0;
for j=1:1:21
    n(j)=0+i;  %initializarea vectorului n
    i=i+1;
end

i=0;
for j=1:1:21
    m(j)=-5+i;  %initializarea vecotrului m
    i=i+1;
end 
%voi folosi figure(1), figure(2)si figure(3) ca la rularea programului sa
%fie afisate toate cele 3 grafice in ferestre separate
figure(1)
subplot(2,1,1) %pentru a reprezenta ambele grafice in aceeasi fereastra am folosit functia subplot
plot (n,z)  %reprezentarea lui z in functie de n
subplot(2,1,2)
plot(m,z)  %reprezentarea lui z in functie de m
figure(2)
for j=1:1:21
    t(j)=abs(10-n(i));  %initializarea vectorului t=|10-n|
    
end
plot(t,z)  % reprezentarea lui z in functie de t
figure(3)
for i=1:1:21
    x1(i)=sin(pi*n(i)/17);  %initializarea vectorului x1 
    x2(i)=cos(pi*n(i)/sqrt(23)); %initializarea vectorului x2
end
subplot(2,1,1)
plot(x1,z) %reprezentarea grafica a lui z in functie de x1
subplot(2,1,2)
plot(x2,z)  % reprezentarea grafica a lui z in functie de x2
 