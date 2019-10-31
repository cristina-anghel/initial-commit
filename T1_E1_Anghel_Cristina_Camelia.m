%initializarea vectorului a
a=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2];

%initializarea vectorul b
b=[1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1];

%ce lungime trebuie sa aiba b astfel incat inmultirea sa abia sens?
%raspuns: trebuie sa aiba aceeasi lungime ca vectorul a

% calculam produsul a*b (produs_1)
produs_1=a*b

%calculam produsul b*a (produs_2)
produs_2=b*a

%inmultirea element cu element a celor 2 vectori (produs_3)
produs_3=a.*b' 
% b' -> am transformat vectorul coloana in vector linie 