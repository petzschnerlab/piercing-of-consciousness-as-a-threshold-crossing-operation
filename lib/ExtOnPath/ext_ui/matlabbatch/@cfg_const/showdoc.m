function str = showdoc(item, indent)

% function str = showdoc(item, indent)
% Display help text for a cfg_const item.
%
% This code is part of a batch job configuration system for MATLAB. See 
%      help matlabbatch
% for a general overview.
%_______________________________________________________________________
% Copyright (C) 2007 Freiburg Brain Imaging

% Volkmar Glauche
% $Id$

rev = '$Rev$'; %#ok

str = showdoc(item.cfg_item, indent);
str{end+1} = ['This item has a constant value which can not be modified ' ...
              'using the GUI.'];
