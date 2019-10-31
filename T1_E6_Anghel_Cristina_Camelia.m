s = randi([0 1],1,167);  % crearea unui vector binar aleator cu 167 elemente
%am ales 167 pentru ca atatea elemente are t
Fs=12; % frecventa de esantionare 12kHz
%perioada t=1/f => t=1/12 ms
t=0:0.0005:1/12;% t de la 0 la 1/12 cu pas de 0.5ms
plot(t,s)%reprezentarea semnalului