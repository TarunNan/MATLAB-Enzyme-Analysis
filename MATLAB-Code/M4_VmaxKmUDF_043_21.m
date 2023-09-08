function [Vmax_lin, Km_lin] = M4_VmaxKmUDF_043_21(v0i1,v0i2,v0i3,v0i4,v0i5, S)
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
coeffs_en1=polyfit(-1./(S./v0i1), v0i1,1); % slope and intercept for linearized model
coeffs_en2=polyfit(-1./(S./v0i2), v0i2,1);
coeffs_en3=polyfit(-1./(S./v0i3), v0i3,1);
coeffs_en4=polyfit(-1./(S./v0i4), v0i4,1);
coeffs_en5=polyfit(-1./(S./v0i5), v0i5,1);



Vmax_lin_1=coeffs_en1(2); % Vmax from linearized model
Vmax_lin_2=coeffs_en2(2);
Vmax_lin_3=coeffs_en3(2);
Vmax_lin_4=coeffs_en4(2);
Vmax_lin_5=coeffs_en5(2);

Km_lin_1=coeffs_en1(1); % Km from linearized model
Km_lin_2=coeffs_en2(1);
Km_lin_3=coeffs_en3(1);
Km_lin_4=coeffs_en4(1);
Km_lin_5=coeffs_en5(1);


Vmax_lin = [Vmax_lin_1, Vmax_lin_2, Vmax_lin_3, Vmax_lin_4, Vmax_lin_5];
Km_lin = [Km_lin_1, Km_lin_2, Km_lin_3, Km_lin_4, Km_lin_5];


%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

% Prints the V_max value
fprintf('V_max enzyme A is %f.\n', Vmax_lin(1));
fprintf('V_max enzyme B is %f.\n', Vmax_lin(2));
fprintf('V_max enzyme C is %f.\n', Vmax_lin(3));
fprintf('V_max enzyme D is %f.\n', Vmax_lin(4));
fprintf('V_max enzyme E is %f.\n', Vmax_lin(5));

% Prints the Km value
fprintf('Km for enzyme A is %f.\n', Km_lin(1));
fprintf('Km for enzyme B is %f.\n', Km_lin(2));
fprintf('Km for enzyme C is %f.\n', Km_lin(3));
fprintf('Km for enzyme D is %f.\n', Km_lin(4));
fprintf('Km for enzyme E is %f.\n', Km_lin(5));

%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



