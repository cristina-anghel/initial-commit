%numarul 1 in lista trimisa, semnal dreptunghiular
P=40;%perioada
N=50;%numarul de coeficienti
D=1;%durata semnalului
n=D/P;
p=1/(2*P);%pasul
PMaxim=3*P;%baza de timp, pentru 3 perioade
t=0:p:PMaxim-p;
%apelarea functiei de creare a semnalului dreptunghiular:
s_original=s_dreptunghiular(n,t,P);
%voi nota cu V vectorul care contine toati coeficientii seriei
for i=1:N
    % calculul coeficientilor pozitivi ai seriei:
    X_pozitiv(i)=integral(@(t)s_dreptunghiular(n,t,P).*exp((-j*i*2*pi.*t)/P),0,P);
    %adaugarea coeficientilor negativi(obtinuti prin conjugarea celor pozitivi)
    %la vectorul V:
    V(N-i+1)=conj(X_pozitiv(i));
    %adaugarea coeficientilor pozitivi la vectorul V:
    V(N+1+i)=X_pozitiv(i);
end
% adaugarea in vectorul final a componentei continue:
V(N+1)=integral(@(t)s_dreptunghiular(n,t,P),0,P);
f=zeros(1,length(t));%vector gol pentru semnalul reconstruit
nr_termeni=2*N+1;
for i=1:length(t) %suma termenilor seriei Fourier
    for m=1:nr_termeni
        f(i)=f(i)+V(m)*exp((j*(m-N-1)*2*pi*t(i))/P);
    end
    f(i)=f(i)/P;
end
%afisarea spectrului:
stem(-50:50, abs(V),'r') %de la -50 la 50 pentru ca N=50
title('Spectru de amplitudini')
hold on
plot(-50:50, abs(V),'b')
figure()
%afisarea semnalului(albastru)original si reconstruit(rosu))
plot(t,s_original,'b') 
title('semnal original si reconstructia lui')
hold on
plot(t,f,'r')