function varargout = cfg_disp_error(l)

% function varargout = cfg_disp_error(errstruct)
%
% Display a condensed version of a MATLAB error without rethrowing it.
%
% This code is part of a batch job configuration system for MATLAB. See 
%      help matlabbatch
% for a general overview.
%_______________________________________________________________________
% Copyright (C) 2007 Freiburg Brain Imaging

% Volkmar Glauche
% $Id$

rev = '$Rev$'; %#ok

if isfield(l,'stack'), % Does not always exist
    estr = cell(numel(l.stack)+1,1);
    for m = 1:numel(l.stack),
        try
            fp  = fopen(l.stack(m).file,'r');
            str = fread(fp,Inf,'*uchar');
            fclose(fp);
            str = char(str(:)');
            re  = regexp(str,'\$Id: \w+\.\w+ ([0-9]+) [0-9][0-9][0-9][0-9].*\$','tokens');
            if numel(re)>0 && numel(re{1})>0,
                id = [' (v', re{1}{1}, ')'];
            else
                id = ' (???)';
            end
        catch
            id = '';
        end
        estr{m+1} = sprintf('In file "%s"%s, function "%s" at line %d.', ...
                           l.stack(m).file, id, l.stack(m).name, l.stack(m).line);
    end
end
estr{1} = l.message;
if nargout == 0
    fprintf('%s\n', estr{:});
else
    varargout{1} = estr;
end