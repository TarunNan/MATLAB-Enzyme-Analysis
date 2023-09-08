function [Vmax_lin, Km_lin] = M4_PGO_VmaxKmUDF_043_21(v0i, S);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program takes the 1 of 5 enzyme data points and calculates the Vmax
% and Km for each one. We have to call this function 5 seperate times 
% because this subfunction only does one of the enzyme trials at a time 
%
% Function Call
% V_max = total_V_max(y)
% Input Arguments
% y
% Output Arguments
% V_max and Km
% Assignment Information
%   Assignment:     M2, Problem 
%   Team member:    Dominic Sopczak, dsopcza@purdue.edu 
%   Team ID:        043-21
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

%% ____________________
%% CALCULATIONS

%% LINEARIZATION
coeffs_en1=polyfit(-1./(S./v0i), v0i,1); % slope and intercept for linearized model



Vmax_lin_1=coeffs_en1(2); % Vmax from linearized model

Km_lin_1=coeffs_en1(1); % Km from linearized model


Vmax_lin = Vmax_lin_1;
Km_lin = Km_lin_1;


%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

% Prints the V_max value
fprintf('V_max enzyme A is %f.\n', Vmax_lin);

% Prints the Km value
fprintf('Km for enzyme A is %f.\n', Km_lin);

%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



