% this script tests PL_VTInterpret and PlexDO functions

% before using any of the PL_XXX functions
% you need to call PL_InitClient ONCE
% and use the value returned by PL_InitClient
% in all PL_XXX calls
s = PL_InitClient(0);
if s == 0
   return
end
[numDOCards, deviceNumbers, numBits, numLines] = PL_DOGetDigitalOutputInfo;
result = PL_DOInitDevice(deviceNumbers(1), 1); 

% Set all output bits to 0.
result = PL_DOClearAllBits(deviceNumbers(1));

lastInOrOut = -1;
for k = 1:1000
    [num, ts] = PL_GetTS(s);
    [nCoords, nDim, nVTMode, c] = PL_VTInterpret(ts);
    if (nCoords > 0)
        
        for iCoord = 1:nCoords
            t = c(iCoord,1);
            x = c(iCoord,2);
            y = c(iCoord,3);
            
            % ignore (0,0), means tracker couldn't get coords
            if ( x == 0 && y == 0 ) 
                continue;
            end
   
            % plot the position on top plot
 %           subplot(2,1,1)
 %           xlim('manual') 
 %           ylim('manual') 
 %           xlim([0 1024]);
 %           ylim([0 768]);
 %           hold on
 %           plot(x,y);
        
            % put arbitrarily complex region or other logic here
            % we just look for coordinates in upper half
            if (y > 384)
                inOrOut = 1;
            else
                inOrOut = 0;
            end

            % plot whether we are in or out as a function of timestamp
%            subplot(2,1,2);
%            ylim('manual')  
%            ylim([-0.5 1.5]);
%            hold on
%            plot( t, inOrOut );
            
            % if we transitioned, inject an event
            if ( lastInOrOut == 0 && inOrOut == 1 )
                % entered
                ok = PL_SendUserEvent(s, 11);
                result = PL_DOSetBit(deviceNumbers(1), 0); 
            elseif ( lastInOrOut == 1 && inOrOut == 0 )
                % left
                ok = PL_SendUserEvent(s, 12);
                result = PL_DOClearBit(deviceNumbers(1), 0);
           end
            
            lastInOrOut = inOrOut;
        end
    end
    pause(0.05);
%    if ( mod(k,50) == 0 )
%       subplot(2,1,1);
%       hold off
%       plot(0,0);
%       subplot(2,1,2);
%       hold off
%       plot(t,inOrOut);
%    end
end
%hold off
% you need to call PL_Close(s) to close the connection
% with the Plexon server
PL_Close(s);
s = 0;

