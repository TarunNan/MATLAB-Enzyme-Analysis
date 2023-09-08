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
datavec=readmatrix("Data_PGOX50_enzyme.csv"); % all data of new enzyme
datasize=size(datavec); % matrix dimensions of all data
S=datavec(5,2:datasize(2)); % substrate concentration (uM)

%% CALCULATIONS
[enzyme1final]=M4_PGO_PreprocesssingUDF_043_21(datavec); % Process data using UDF
v0i = M4_PGO_v0iUDF_043_21(enzyme1final)
[Vmax_lin, Km_lin] = M4_PGO_VmaxKmUDF_043_21(v0i, S);

%% PRINT STATEMENTS

%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.