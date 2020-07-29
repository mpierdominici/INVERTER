N=200; %cantidad de elemenetos del array
fs=50;% frecuencia del la senial de linea
ft=N*fs;%frecuencia de clock
t=[0 : N-1];
t=t.*(1/ft);
signal1=sin(2*pi*fs.*t);
signal2=sin(2*pi*fs.*t + (2/3)*pi);

plot(t, signal1);
hold on
plot(t, signal2);
plot(t,signal1-signal2);
hold off

array1=ceil((signal1+1)*(1600/2));
array2=ceil((signal2+1)*(1600/2));

for c = 1:N
    fprintf('%i,', array2(c))
end

