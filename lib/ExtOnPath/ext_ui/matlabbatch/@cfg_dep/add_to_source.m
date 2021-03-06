function cj = add_to_source(tdeps, cj)

% function cj = add_to_source(tdeps, cj)
% add foreign target dependencies to own source dependencies
%
% This code is part of a batch job configuration system for MATLAB. See 
%      help matlabbatch
% for a general overview.
%_______________________________________________________________________
% Copyright (C) 2007 Freiburg Brain Imaging

% Volkmar Glauche
% $Id$

rev = '$Rev$'; %#ok

for k = 1:numel(tdeps)
    sitem = subsref(cj, tdeps(k).src_exbranch); % Source item to deal with
    if isempty(sitem.sdeps)
        sitem.sdeps = tdeps(k);
    else
        sitem.sdeps = [sitem.sdeps(:) tdeps(k)];
    end;
    cj = subsasgn(cj, tdeps(k).src_exbranch,sitem);
end;
