clc;clear;
Jlnom=0.2520;%[kg*m^2]
Jlmin=0.2520-0.1260;%[kg*m^2]
Jlmax=0.2520+0.1260;%[kg*m^2]
blnom=0;%[N*m/rad*s]
blmin=-0.0630;%[N*m/rad*s]
blmax=0.0630;%[N*m/rad*s]
r=314.3008;
Jm=3.1E-6;%[kg*m^2]
bm=1.5E-5;%[N*m/rad*s]
Pp=3;
lambda_m=0.01546;%[Wb-t]
Lq=5.8E-3;%[H]
Ld=6.6E-3;%[H]
Lls=0.8E-3;%[H]
Rsmin=1.02;%[Ω]
Rsmax=1.32;%[Ω]
Jeq_nom=Jm+(Jlnom/(r^2));%[kg*m^2]
Jeq_min=Jm+(Jlmin/(r^2));%[kg*m^2]
Jeq_max=Jm+(Jlmax/(r^2));%[kg*m^2]
beq_nom=bm+(blnom/(r^2));%[N*m/rad*s]
beq_min=bm+(blmin/(r^2));%[N*m/rad*s]
beq_max=bm+(blmax/(r^2));%[N*m/rad*s]
[wm_nom_Rsmin,xita_nom_Rsmin]=polos(Lq,Jeq_nom,beq_nom,Rsmin,Pp,lambda_m);
[wm_min_Rsmin,xita_min_Rsmin]=polos(Lq,Jeq_min,beq_min,Rsmin,Pp,lambda_m);
[wm_max_Rsmin,xita_max_Rsmin]=polos(Lq,Jeq_max,beq_max,Rsmin,Pp,lambda_m);
[wm_nom_Rsmax,xita_nom_Rsmax]=polos(Lq,Jeq_nom,beq_nom,Rsmax,Pp,lambda_m);
[wm_min_Rsmax,xita_min_Rsmax]=polos(Lq,Jeq_min,beq_min,Rsmax,Pp,lambda_m);
[wm_max_Rsmax,xita_max_Rsmax]=polos(Lq,Jeq_max,beq_max,Rsmax,Pp,lambda_m);
Gvrqs_min_Rsmin=tf([3/2*Pp*lambda_m],[Lq*Jeq_min (Rsmin*Jeq_min+Lq*beq_min) (beq_min*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
Gvrqs_nom_Rsmin=tf([3/2*Pp*lambda_m],[Lq*Jeq_nom (Rsmin*Jeq_nom+Lq*beq_nom) (beq_nom*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
Gvrqs_max_Rsmin=tf([3/2*Pp*lambda_m],[Lq*Jeq_max (Rsmin*Jeq_max+Lq*beq_max) (beq_max*Rsmin+3/2*Pp^2*lambda_m^2) 0]);
pzplot(Gvrqs_min_Rsmin)
hold on
pzplot(Gvrqs_nom_Rsmin)
hold on
pzplot(Gvrqs_max_Rsmin)
legend('GvrqsMinRsmin','GvrqsNomRsmin','GvrqsMaxRsmin')

