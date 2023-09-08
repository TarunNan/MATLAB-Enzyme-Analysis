function [v0i] = M4_PGO_v0iUDF_043_21(enzymeval)
% ENGR 132 
% Program Description
%
% This subfunction will generate the v0i values for each concentration for
% the enzyme data input. The subfunction will output an array with 10
% elements, each corresponding to a concentration.
%
% UDF for M2
%
% Assignment Information
%   Assignment:     M2
%   Author:         Aaron Lin, lin1501
%   Team ID:        043-21
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% INITIALIZATION
data_approx_points=50; % Number of points taken to perform linear regression
index=1;
v0i=zeros(1,10); % prealocate vector for v0i

%% CALCULATIONS
row = 1;
for col=1:10
    coeffs=polyfit(1:1:data_approx_points,enzymeval(1:data_approx_points, ...
        col),1);
    v=coeffs(1);
    v0i(row, index)=v;
    index=index+1;    
end
index = 1;
row = row + 1;
