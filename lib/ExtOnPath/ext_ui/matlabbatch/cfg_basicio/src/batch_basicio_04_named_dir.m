%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev$)
%-----------------------------------------------------------------------
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.type = 'cfg_entry';
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.name = 'Input Name';
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.tag = 'name';
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.strtype = 's';
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.extras = [];
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.num = [1 Inf];
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.check = [];
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.help = {'Enter a name for this directory selection. This name will be displayed in the ''Dependency'' listing as output name.'};
matlabbatch{1}.menu_cfg{1}.menu_entry{1}.conf_entry.def = [];
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.type = 'cfg_files';
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.name = 'Directory';
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.tag = 'dirs';
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.filter = 'dir';
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.ufilter = '.*';
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.dir = '';
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.num = [1 1];
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.check = [];
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.help = {'Select a directory.'};
matlabbatch{2}.menu_cfg{1}.menu_entry{1}.conf_files.def = [];
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.type = 'cfg_repeat';
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.name = 'Directories';
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.tag = 'dirs';
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.values{1}(1) = cfg_dep;
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.values{1}(1).tname = 'Values Item';
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.values{1}(1).tgt_spec = {};
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.values{1}(1).sname = 'Directory (cfg_files)';
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.values{1}(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.values{1}(1).src_output = substruct('()',{1});
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.num = [1 Inf];
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.forcestruct = false;
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.check = [];
matlabbatch{3}.menu_cfg{1}.menu_struct{1}.conf_repeat.help = {'Select one or more directories.'};
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.type = 'cfg_exbranch';
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.name = 'Named Directory Selector';
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.tag = 'cfg_named_dir';
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{1}(1) = cfg_dep;
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{1}(1).tname = 'Val Item';
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{1}(1).tgt_spec = {};
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{1}(1).sname = 'Input Name (cfg_entry)';
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{1}(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{1}(1).src_output = substruct('()',{1});
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{2}(1) = cfg_dep;
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{2}(1).tname = 'Val Item';
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{2}(1).tgt_spec = {};
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{2}(1).sname = 'Directories (cfg_repeat)';
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{2}(1).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.val{2}(1).src_output = substruct('()',{1});
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.prog = @cfg_run_named_dir;
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.vout = @cfg_vout_named_dir;
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.check = [];
matlabbatch{4}.menu_cfg{1}.menu_struct{1}.conf_exbranch.help = {'Named Directory Selector allows to select directories that can be referenced as common input by other modules.'};
