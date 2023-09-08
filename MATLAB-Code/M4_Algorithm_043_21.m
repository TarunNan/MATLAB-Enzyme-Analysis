function [] = M4_Algorithm_043_21()
% ENGR 132 
% Program Description
%
% This is the main function that will call each of the subfunctions
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
datavec=readmatrix("Data_nextGen_KEtesting_allresults (2).csv"); % Raw data
S=datavec(3,2:11); % Substrate concentration

%% CALCULATIONS
[enzyme1,enzyme2,enzyme3,enzyme4,enzyme5]=M4_PreprocesssingUDF_043_21(datavec); % Process data
enzymeval = [enzyme1,enzyme2,enzyme3,enzyme4,enzyme5];
v0i = M4_v0iUDF_043_21(enzymeval); % v0i for enzyme 1, 2, 3, 4, 5
[Vmax_lin, Km_lin] = M4_VmaxKmUDF_043_21(v0i(1,:),v0i(2,:),v0i(3,:),v0i(4,:),v0i(5,:), S);
M4_Michaelis_MentenUDF_043_21(Vmax_lin, Km_lin,S);

%% PRINT STATEMENTS
% linear model print statements
fprintf("\nThe Eadie-Hofstee model of enzyme A is: v0 = %0.2f - %0.2f*(v0/[S])" + ...
    " where S is substrate concentration (micro M)", ...
    Vmax_lin(1), Km_lin(1));
fprintf("\nThe Eadie-Hofstee model of enzyme B is: v0 = %0.2f - %0.2f*(v0/[S])" + ...
    " where S is substrate concentration (micro M)", ...
    Vmax_lin(2), Km_lin(2));
fprintf("\nThe Eadie-Hofstee model of enzyme C is: v0 = %0.2f - %0.2f*(v0/[S])" + ...
    " where S is substrate concentration (micro M)", ...
    Vmax_lin(3), Km_lin(3));
fprintf("\nThe Eadie-Hofstee model of enzyme D is: v0 = %0.2f - %0.2f*(v0/[S])" + ...
    " where S is substrate concentration (micro M)", ...
    Vmax_lin(4), Km_lin(4));
fprintf("\nThe Eadie-Hofstee model of enzyme E is: v0 = %0.2f - %0.2f*(v0/[S])" + ...
    " where S is substrate concentration (micro M)\n", ...
    Vmax_lin(5), Km_lin(5));
%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.
