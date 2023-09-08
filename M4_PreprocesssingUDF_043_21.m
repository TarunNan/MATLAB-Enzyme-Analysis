function [enzyme1final,enzyme2final,enzyme3final,enzyme4final,enzyme5final] = M4_PreprocesssingUDF_043_21(datavec)
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
enzyme1val = datavec(5:29,2:11);
enzyme1rval = datavec(5:29,12:21);
enzyme2val = datavec(5:29,22:31);
enzyme2rval = datavec(5:29,32:41);
enzyme3val = datavec(5:29,42:51);
enzyme3rval = datavec(5:29,52:61);
enzyme4val = datavec(5:29,62:71);
enzyme4rval = datavec(5:29,72:81);
enzyme5val = datavec(5:29,82:91);
enzyme5rval = datavec(5:29,92:101);

% Creates the final vector and assigns them with the proper dimensions for
% the vector (since all the nan vectors already have the dimensions in them
% since they worked on the testval/testrval vectors that were created from
% the readmatrix data


%% CALCULATION
% We can use this information in order to
% compare the replicate and original test data, and in this case that one
% vector has a value while the other doesn't it will place the value that
% is there in the final ector of test 1
for i = 1:1:10
    for j = 1:1:25
        if max(enzyme1rval(j,i), enzyme1val(j,i)) > (5 * min(enzyme1rval(j,i), enzyme1val(j,i)))
            enzyme1final(j,i) = min(enzyme1rval(j,i), enzyme1val(j,i));
        else
            enzyme1final(j,i) = (enzyme1rval(j,i) + enzyme1val(j,i))/2;
        end 

        if max(enzyme1rval(j,i), enzyme2val(j,i)) > (5 * min(enzyme2rval(j,i), enzyme2val(j,i)))
            enzyme2final(j,i) = min(enzyme2rval(j,i), enzyme2val(j,i));
        else
            enzyme2final(j,i) = (enzyme2rval(j,i) + enzyme2val(j,i))/2;
        end

        if max(enzyme3rval(j,i), enzyme3val(j,i)) > (15 * min(enzyme3rval(j,i), enzyme3val(j,i)))
            enzyme3final(j,i) = min(enzyme3rval(j,i), enzyme3val(j,i));
        else
            enzyme3final(j,i) = (enzyme3rval(j,i) + enzyme3val(j,i))/2;
        end

        if max(enzyme4rval(j,i), enzyme4val(j,i)) > (5 * min(enzyme4rval(j,i), enzyme4val(j,i)))
            enzyme4final(j,i) = min(enzyme4rval(j,i), enzyme4val(j,i));
        else
            enzyme4final(j,i) = (enzyme4rval(j,i) + enzyme4val(j,i))/2;
        end
        if max(enzyme5rval(j,i), enzyme5val(j,i)) > (5 * min(enzyme5rval(j,i), enzyme5val(j,i)))
            enzyme5final(j,i) = min(enzyme5rval(j,i), enzyme5val(j,i));
        else
            enzyme5final(j,i) = (enzyme5rval(j,i) + enzyme5val(j,i))/2;
        end
    end    
end

enzyme1final = movmean(enzyme1final, 5);
enzyme2final = movmean(enzyme2final, 5);
enzyme3final = movmean(enzyme3final, 5);
enzyme4final = movmean(enzyme4final, 5);
enzyme5final = movmean(enzyme5final, 5);


end