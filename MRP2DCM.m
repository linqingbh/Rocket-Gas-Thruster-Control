function DCM = MRP2DCM(q)

% MRP2C	
%
%	DCM = MRP2C(Q) returns the direction cosine 
%	matrix in terms of the 3x1 MRP vector Q.  
%	

q1 = q(1);
q2 = q(2);
q3 = q(3);

d1 = q'*q;
S = 1-d1;
d = (1+d1)*(1+d1);
DCM(1,1) = 4*(2*q1*q1-d1)+S*S;
DCM(1,2) = 8*q1*q2+4*q3*S;
DCM(1,3) = 8*q1*q3-4*q2*S;
DCM(2,1) = 8*q2*q1-4*q3*S;
DCM(2,2) = 4*(2*q2*q2-d1)+S*S;
DCM(2,3) = 8*q2*q3+4*q1*S;
DCM(3,1) = 8*q3*q1+4*q2*S;
DCM(3,2) = 8*q3*q2-4*q1*S;
DCM(3,3) = 4*(2*q3*q3-d1)+S*S;
DCM = DCM/d;
