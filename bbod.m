function SpectralIrradiance = bbod(l1,l2, Temp)
%----------------------------------------------------------------------% 
%
% BBOD Calculates the spectral irradiance for a black body
% based on Max Planck's law in pW/cm^2 for an inputted bandpass
%    
%     [] = BBOD(L1, L2, TEMP) computes the spectral irradiance 
%     based on Planck's law based for a given temperature 
%     (TEMP, in Kelvin) and wavelength band (L1,2 in micro meter [10^-6 m]) 
%  
%     The function does not exist for L1,2 == 0 or for T <= 0.  
%  
%     Values of constants are taken from current NIST values.
% 
% (c) 2016 Jason A. Sulskis
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
%-----------------------------------------------------------------------%
    global T c h k c1 c2

    T = Temp;

    % Speed of light in a vacuum (NIST)
    c = 2.99792458e+8; % m/s 

    % Planck's constant (NIST)
    h = 6.626068963e-34; % W·s^2 

    % Boltzman constant (NIST)
    k = 1.3806504e-23; % W·s/K

    % First Radiation constant for spectral radiance:
    c1 = 2*pi*h*c^2; 

    % Second Radiation constant:
    c2 = h*c/k; 

    if(T < 0),
        error('Input Temperature Less Than Zero!');
    end
    
    if (T > 0),
        
        % spectral bandpass
        l=(l1:l2).*1e-6;

        % Spectral Irradiance
        SpecIrrad = quadgk(@SpectralRadiance,min(l),max(l));
        SpecIrrad = SpecIrrad.*0.0001;
        SpecIrrad = SpecIrrad./1e-12;
       
        
    end

    SpectralIrradiance = sprintf('%d pW/cm^2 for %f um to %f um @ %f degrees K',SpecIrrad,l1,l2,T);
    
return;

function SpecRad = SpectralRadiance(lambda)
    
    global T c1 c2

    SpecRad = c1.*lambda.^(-5)./( exp((c2./T)./lambda) - 1 ); % W·m^-2 um

return;

        
        
