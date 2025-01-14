% Freeman Hill SSFP steady state formula
%
% This function is copied from the ihMT_steadystate package published by 
% Shaihan Malik (King's College London), available here:
% https://github.com/mriphysics/ihMT_steadystate

function Mss = freeman_hill(flipangle,TR,R1,R2)

E1 = exp(-R1*TR);
E2 = exp(-R2*TR);

Mss = sind(flipangle) .* sqrt(E2) .* (1-E1) ./ (1 - E1*E2 - (E1-E2)*cosd(flipangle));

end