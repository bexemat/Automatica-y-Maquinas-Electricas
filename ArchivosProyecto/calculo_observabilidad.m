clc;clear;close all;
syms beq
syms Jeq
syms Pp
syms lambda_m
syms Rs
syms Lq
syms Ld
syms Rs_tamb
syms Cts
syms r
%C=[1,0,1,1];
C=[1,0,0,1];
%a=[0 1 0 0;0 -(beq/Jeq) (3/2*((Pp*lambda_m)/(Jeq))) 0;0 -((Pp*lambda_m)/(Jeq)) -(Rs/(Lq)) 0;0 0 0 (1/(Cts*Rs_tamb))];
%b=[0;(-1/(r*Jeq));(1/(Lq));(-1/(Cts*Rs_tamb))+(1/(Cts))];
%b=[0 0;0 0;1/Lq 0;0 1/Ld];
b=[0;0;1/Lq;0];
%a=[0 1 0;0 -(beq/Jeq) (3/2*((Pp*lambda_m)/(Jeq)));0 -((Pp*lambda_m)/(Jeq)) -(Rs/(Lq))];
a=[0 1 0 0;0 -(beq/Jeq) (3/2*((Pp*lambda_m)/(Jeq))) 0;0 -((Pp*lambda_m)/(Jeq)) -(Rs/(Lq)) 0;0 0 0 -(Rs/(Ld))];
%bltia=[0;0;1/Lq;1/Ld];
aa=a*a;
aaa=aa*a;
ab=a*b;
aab=aa*b;
aaab=aaa*b;
c=[b,ab,aab,aaab]%matriz de controlabilidad
rank(c)
%x=ltia*bltia;
%xx=(ltia*ltia)*bltia;
%xxx=(ltia*ltia*ltia)*bltia;
%cltia=[bltia,x,xx,xxx]
%c=[b,ab,aab,aaab]%matriz de controlabilidad
ca=C*a;
caa=C*aa;
caaa=C*aaa;
o=[C;ca;caa;caaa]%matriz de observabilidad
%o=[C;ca;caa;caaa]%matriz de observabilidad