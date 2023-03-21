clear; clc;


%% SUBSISTEMA MECÁNICO:
Jl = 0.2520; % ±0.1260 [kg.m^2]
bl = 0; % ±0.0630 [(N.m)/(rad/s)]

Tl = 0; % ±6.28 [rad/s]


r = 314.3008;

wl_nom = 2.2; %[rad/s]
Tl_nom = 7.26; %[N.m]
Tl_max = 29.42; %[N.m]


Jm = 3.1e-6; %[kg.m^2]
bm = 1.5e-5; %[(N.m)/(rad/s)]

wm_nom = 691.15; % [rad/s]


Jeq = (Jm+Jl/r^2); %[kg.m^2]
Beq = (bm+bl/r^2); %[(N.m)/(rad/s)]

d_wm = 10;


%% SUBSISTEMA ELÉCTRICO:
Pp = 3;  %(6 polos)
lambda_m = 0.01546; %[Wb-t] ó [V/(rad/s)]
Lq = 5.8; %[mH]
Ld = 6.6; %[mH]
Lls = 0.8; %[mH]


%% SUBSISTEMA TÉRMICO
Rs = 1.02; %[Ω] (a 40°C)
Tref = 40; %[°C] (corresponde a 1.02Ω)
Rs_40 = 1.02; %[Ω] (a 40°C)
%Rs_115 = 1.32; %[Ω] (a 115°C)
alpha_Cu = 3.9e-3; %[1/°C]
Cts = 0.818; %[W/(°C/s)]
Rts_amb = 146.7; %[°C/W]
tts_amb = Rts_amb*Cts; % ≈120[s]  Constante de tiempo térmica

% Ts_max = 115; %[°C]
% -15°C ≤ Ts_amb ≤ 40°C













