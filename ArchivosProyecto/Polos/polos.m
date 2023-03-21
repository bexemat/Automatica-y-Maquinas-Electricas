function [wm,xita] = polos(Lq,Jeq,beq,Rs,Pp,lambda_m)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
wm=((1/(Lq*Jeq))*(beq*Rs+((3/2)*(Pp^2)*(lambda_m^2))))^(0.5);
xita=(1/(Lq*wm*Jeq*2))*(Rs*Jeq+Lq*beq);

end

