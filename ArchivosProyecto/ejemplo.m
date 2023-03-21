clc;clear;close
La=5.8e-3;%[H]
fc=5000; %[Hz]
R=fc*La
a=tf([1],[La/R 1])
pzplot(a,'g')
grid on
