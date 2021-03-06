% this script tests PL_GetTS (get timestamps) function

% before using any of the PL_XXX functions
% you need to call PL_InitClient ONCE
% and use the value returned by PL_InitClient
% in all PL_XXX calls
s = PL_InitClient(0);
if s == 0
   return
end

pars = PL_GetPars(s);
x = 1:pars(1); % pars(1) = number of DSP channels


% call PL_GetTS 10 times and show timestamp counts for all
% the DSP channels
for i=1:10
   [num, ts] = PL_GetTS(s);
   hist(ts(:,2), x); % how many timestamps for each channel
   pause(0.5);
end

% you need to call PL_Close(s) to close the connection
% with the Plexon server
PL_Close(s);
s = 0;

