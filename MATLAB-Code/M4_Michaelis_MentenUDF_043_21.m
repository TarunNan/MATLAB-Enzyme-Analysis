function[] = M4_Michaelis_MentenUDF_043_21(Vmax_lin, Km_lin, S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function plots the Michaelis-Menten equation of each enzyme 
% given the enzymes calculated v0i values and substrate concentrations
%
% Function Call
% Michaelis_Menten(v0i, S)
%
% Input Arguments
% v0i1 - the calculated initial velocities of enzyme A
% v0i2 - the calculated initial velocities of enzyme B
% v0i3 - the calculated initial velocities of enzyme C
% v0i4 - the calculated initial velocities of enzyme D
% v0i5 - the calculated initial velocities of enzyme E
%
% S - the substrate concentration from the data
%
% Output Arguments
% N/A
%
% Assignment Information
%   Assignment:     M2, Problem 1
%   Team member:    Gavin Wilson, wils1369@purdue.edu 
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION


%% ____________________
%% CALCULATIONS
v0i1 = (Vmax_lin(1) .* S) ./ (Km_lin(1) + S);
v0i2 = (Vmax_lin(2) .* S) ./ (Km_lin(2) + S);
v0i3 = (Vmax_lin(3) .* S) ./ (Km_lin(3) + S);
v0i4 = (Vmax_lin(4) .* S) ./ (Km_lin(4) + S);
v0i5 = (Vmax_lin(5) .* S) ./ (Km_lin(5) + S);

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS
% plot for the Michaelis-Menten equation for enzyme A
figure(1)
plot(S, v0i1, "r");
title("Micahelis-Menten Kinetics for Enzyme A");
xlabel("Substrate Concentration [S]");
ylabel("Velocity [v]");
grid on

% plot for the Michaelis-Menten equation for enzyme B
figure(2)
plot(S, v0i2, "r");
title("Micahelis-Menten Kinetics for Enzyme B");
xlabel("Substrate Concentration [S]");
ylabel("Velocity [v]");
grid on

% plot for the Michaelis-Menten equation for enzyme C
figure(3)
plot(S, v0i3, "r");
title("Micahelis-Menten Kinetics for Enzyme C");
xlabel("Substrate Concentration [S]");
ylabel("Velocity (v)");
grid on

% plot for the Michaelis-Menten equation for enzyme D
figure(4)
plot(S, v0i4, "r");
title("Micahelis-Menten Kinetics for Enzyme D");
xlabel("Substrate Concentration [S]");
ylabel("Velocity (v)");
grid on

% plot for the Michaelis-Menten equation for enzyme E
figure(5)
plot(S, v0i5, "r");
title("Micahelis-Menten Kinetics for Enzyme E");
xlabel("Substrate Concentration [S]");
ylabel("Velocity (v)");
grid on



%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



