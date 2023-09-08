function [enzyme1final] = M4_PGO_PreprocesssingUDF_043_21(datavec)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description
%
% the main script  will call on this subfunction in order to mainly
% preprocess the data. It will do so by taking the entire data from the csv
% file and then creating vectors that represent the data for each test and
% its replicate for an enzyme. From there, it will calculate averages and 
% smooth data toget the final data set necessary for each of the enzymes
% and send that data to the main script.
%
% UDF for M2 
%
% Assignment Information
%   Assignment:     M2
%   Author:         Tarun, tnandamu@purdue.edu
%   Team ID:        043-21
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INITIALIZATION
% Gets the vectors for each test and the replicate test values for each of
% the 5 enzyme leading to ten vectors
% takes all the rows from fifth one to the end (including empty data)


% Creates the final vector and assigns them with the proper dimensions for
% the vector (since all the nan vectors already have the dimensions in them
% since they worked on the testval/testrval vectors that were created from
% the readmatrix data
enzyme1val = datavec(9:58,2:11);
enzyme1final =enzyme1val;


end
