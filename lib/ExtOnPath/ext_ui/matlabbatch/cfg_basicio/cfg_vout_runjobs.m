function dep = cfg_vout_runjobs(job)

% Return dependency to jobfiles, if files are to be saved.
%
% This code is part of a batch job configuration system for MATLAB. See 
%      help matlabbatch
% for a general overview.
%_______________________________________________________________________
% Copyright (C) 2007 Freiburg Brain Imaging

% Volkmar Glauche
% $Id$

rev = '$Rev$'; %#ok

dep               = cfg_dep;
dep(1).sname      = 'Job Outputs';
dep(1).src_output = substruct('.','jout');
dep(1).tgt_spec   = cfg_findspec({{'strtype','e'}});
if isfield(job.save, 'savejobs')
    dep(2)            = cfg_dep;
    dep(2).sname      = 'Job Files';
    dep(2).src_output = substruct('.','jobfiles');
    dep(2).tgt_spec   = cfg_findspec({{'filter','batch','strtype','e'}});
    dep(3)            = cfg_dep;
    dep(3).sname      = 'Resulting Job after Computation';
    dep(3).src_output = substruct('.','jobrun');
    dep(3).tgt_spec   = cfg_findspec({{'filter','batch','strtype','e'}});
end;