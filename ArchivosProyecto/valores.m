clc;clear;close;
RsREF=1.02;
TsREF=40;
aCu=3.9e-3;
Cts=0.818;
Jlnom=0.2520;%[kg*m^2]
Jlmin=0.2520-0.1260;%[kg*m^2]
Jlmax=0.2520+0.1260;%[kg*m^2]
blnom=0;%[N*m/rad*s]
blmin=-0.0630;%[N*m/rad*s]
blmax=0.0630;%[N*m/rad*s]
r=314.3008;
Jm=3.1E-6;%[kg*m^2]
bm=1.5E-5;%[N*m/rad*s]
Rts_amb=146.7;%[C/W]
Cts=0.818;%[W/C*s]
Pp=3;
lambda_m=0.01546;%[Wb-t]
Lq=5.8E-3;%[H]
Ld=6.6E-3;%[H]
Lls=0.8E-3;%[H]
Rs=1.02;%[Ω]
Rsmin=1.02;%[Ω]
Rsmax=1.32;%[Ω]
Jeq=Jm+(Jlnom/(r^2));%[kg*m^2]
Jeq_nom=Jm+(Jlnom/(r^2));%[kg*m^2]
Jeq_min=Jm+(Jlmin/(r^2));%[kg*m^2]
Jeq_max=Jm+(Jlmax/(r^2));%[kg*m^2]
beq=bm+(blnom/(r^2));%[N*m/rad*s]
beq_nom=bm+(blnom/(r^2));%[N*m/rad*s]
beq_min=bm+(blmin/(r^2));%[N*m/rad*s]
beq_max=bm+(blmax/(r^2));%[N*m/rad*s]
[wm_nom_Rsmin,xita_nom_Rsmin]=polos(Lq,Jeq_nom,beq_nom,Rsmin,Pp,lambda_m);
[wm_min_Rsmin,xita_min_Rsmin]=polos(Lq,Jeq_min,beq_min,Rsmin,Pp,lambda_m);
[wm_max_Rsmin,xita_max_Rsmin]=polos(Lq,Jeq_max,beq_max,Rsmin,Pp,lambda_m);
[wm_nom_Rsmax,xita_nom_Rsmax]=polos(Lq,Jeq_nom,beq_nom,Rsmax,Pp,lambda_m);
[wm_min_Rsmax,xita_min_Rsmax]=polos(Lq,Jeq_min,beq_min,Rsmax,Pp,lambda_m);
[wm_max_Rsmax,xita_max_Rsmax]=polos(Lq,Jeq_max,beq_max,Rsmax,Pp,lambda_m);
% Gvrqs_min_Rsmin=tf([3/2*Pp*lambda_m],[Lq*Jeq_min (Rsmin*Jeq_min+Lq*beq_min) (beq_min*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
% Gvrqs_nom_Rsmin=tf([3/2*Pp*lambda_m],[Lq*Jeq_nom (Rsmin*Jeq_nom+Lq*beq_nom) (beq_nom*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
% Gvrqs_max_Rsmin=tf([3/2*Pp*lambda_m],[Lq*Jeq_max (Rsmin*Jeq_max+Lq*beq_max) (beq_max*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
Gtl_min_Rsmin=tf([Lq Rsmin],[Lq*Jeq_min (Rsmin*Jeq_min+Lq*beq_min) (beq_min*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
Gtl_nom_Rsmin=tf([Lq Rsmin],[Lq*Jeq_nom (Rsmin*Jeq_nom+Lq*beq_nom) (beq_nom*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
Gtl_max_Rsmin=tf([Lq Rsmin],[Lq*Jeq_max (Rsmin*Jeq_max+Lq*beq_max) (beq_max*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
pzplot(Gtl_min_Rsmin)
hold on
pzplot(Gtl_nom_Rsmin)
hold on
pzplot(Gtl_max_Rsmin)
legend('Min','Nom','Max')
title('G(s)=θ(s)/Tl(s), con Rsmin')
grid on
%figure
% pzplot(Gvrqs_min_Rsmin)
% hold on
% pzplot(Gvrqs_nom_Rsmin)
% hold on
% pzplot(Gvrqs_max_Rsmin)
% legend('GvrqsMin','GvrqsNom','GvrqsMax')
% grid on
% figure 
% Gvrqs_min_Rsmax=tf([3/2*Pp*lambda_m],[Lq*Jeq_min (Rsmax*Jeq_min+Lq*beq_min) (beq_min*Rsmax+3/2*Pp^2*lambda_m^2) 0]);
% Gvrqs_nom_Rsmax=tf([3/2*Pp*lambda_m],[Lq*Jeq_nom (Rsmax*Jeq_nom+Lq*beq_nom) (beq_nom*Rsmax+3/2*Pp^2*lambda_m^2) 0]);
% Gvrqs_max_Rsmax=tf([3/2*Pp*lambda_m],[Lq*Jeq_max (Rsmax*Jeq_max+Lq*beq_max) (beq_max*Rsmax+3/2*Pp^2*lambda_m^2) 0]);
% pzplot(Gvrqs_max_Rsmin)
% hold on
% pzplot(Gvrqs_nom_Rsmax)
% hold on
% pzplot(Gvrqs_max_Rsmax)
% legend('GvrqsMin','GvrqsNom','GvrqsMax')
% grid on
figure 
GTl_min_Rsmax=tf([Lq Rsmax],[Lq*Jeq_min (Rsmax*Jeq_min+Lq*beq_min) (beq_min*Rsmax+3/2*Pp^2*lambda_m^2) 0]);
GTl_nom_Rsmax=tf([Lq Rsmax],[Lq*Jeq_nom (Rsmax*Jeq_nom+Lq*beq_nom) (beq_nom*Rsmax+3/2*Pp^2*lambda_m^2) 0]);
GTl_max_Rsmax=tf([Lq Rsmax],[Lq*Jeq_max (Rsmax*Jeq_max+Lq*beq_max) (beq_max*Rsmax+3/2*Pp^2*lambda_m^2) 0]);
pzplot(GTl_min_Rsmax)
hold on
pzplot(GTl_nom_Rsmax)
hold on
pzplot(GTl_max_Rsmax)
legend('Min','Nom','Max')
title('G(s)=θ(s)/Tl(s), con Rsmax')
grid on
pi=5000;%[rad/s]
Rq=Lq*pi;%[Ω]
Rd=Ld*pi;%[Ω]
R0=Lls*pi;%[Ω]

%% Funcion de transferencia con polos en 5000 rad/s
Gvrqs1_nom_Rsmax=tf([1],[(Lq/Rq),1])
figure
pzmap(Gvrqs1_nom_Rsmax,'r')
pole(Gvrqs1_nom_Rsmax)
%grid on
xlabel('w [rad/s]')
legend('polos en 5000')
title('polos y zeros')
%% Metodo Sintonia Serie
n=2.5;
wpos=800;
ba=Jeq*n*wpos;
ksa=ba*wpos;
wint=(1/n)*wpos;
ksia=ksa*wint;
GthetaPID=tf([ba ksa ksia],[Jeq ba ksa ksia]);
figure
pzmap(GthetaPID)
zero(GthetaPID);
pole(GthetaPID);
title('Polos y zeros con Metodo de Sintonia Serie')
grid on

%% Observador 
pobs=3200;
kotheta=3*pobs;
kow=3*(pobs^2);
koTl=(pobs^3);
%% polos y zeros de sensores
ws=15000;
tau=2;
xitaa=1;
s2=tf([ws^2],[1 2*xitaa*ws ws^2])
s1=tf([1],[tau 1])
figure
pzplot(s2)
title('polo de sensores con filtro de 2 orden con wn=15000 rad/s')
figure
pzplot(s1)
title('polo de sensores con filtro de 1 orden con τ=2s')
%% modulador trifasico
wsv=30000;

v2=tf([wsv^2],[1 2*xitaa*wsv wsv^2])
figure
pzplot(v2)
title('polo de modulador trifasico con filtro de 2 orden con wn=30000 rad/s')




