classdef phycon
    %PHYCON Useful constants for spectral and atmospheric physics.
    %
    %     Where avaliable, current NIST values are used. SI units.
    % 
    %     (c) 2014 The University of Wyoming, Department of Atmospheric Science
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
    %     along with this program.  If not, see <https://www.gnu.org/licenses/>.
    % 
    %         Author: Jason A. Sulskis
    %         Project: COPE-MED 2013
    %         Managers: Jeff French & David Leon
    % 
    %         Revision History:
    %             2014-08-25  Initial version.
    
    properties (Constant)
        
        Tko = 273.15;                                   % K
        Po = 1.0e5;                                     % Pa
        Rstar = 8.3144621;                              % J mol^-1 K^-1
        Rd = 287.05;                                    % J K^-1 kg^-1
        Rv = 461.51;                                    % J K^-1 kg^-1
        epsilon = phycon.Rd/phycon.Rv;                  % unitless
        Cpd = 1005.2;                                   % J K^-1 kg^-1
        Cvd = 719.0;                                    % J K^-1 kg^-1
        Cpv = 1870.4;                                   % J K^-1 kg^-1
        Cvv = 1410.0;                                   % J K^-1 kg^-1
        Cl = 4218.0;                                    % J K^-1 kg^-1
        Ci = 2106.0;                                    % J K^-1 kg^-1
        Lvo = 2.5008e6;                                 % J kg^-1
        Lso = 2.8345e6;                                 % J kg^-1
        rhol = 1000.0;                                  % kg m^-3
        rhoi = 917.0;                                   % kg m^-3
        eso = 610.7;                                    % J kg^-1
        g = 9.81;                                       % m s^-2
        G = 6.67e-11;                                   % N m^2 kg^-2
        c = 2.99792458e8                                % m s^-1
        h = 6.626068963e-34                             % W s^2
        kB = 1.3806504e-23                              % W s K^-1
        c1 = 2.0*pi*phycon.h*phycon.c^2.0;              % W m^2 sr^-1
        c2 = phycon.h*phycon.c/phycon.kB;                % m K
        Gammad = phycon.g/phycon.Cpd;                   % K m^-1
        Kappa = 2.40e-1;                                % J m^-1 s^-1 K^-1
        sigma_T = 5.670367e-8;                          % W m^-2 K^-4
        a = 6.378137e6;                                 % m
        b = 6.3567523142e6;                             % m
        f = 1/298.257223563;                            % unitless
        nAir = 1.000293;                                % unitless
        cAir = phycon.c/phycon.nAir;                    % m s^-1
        machSpeed = 20.05*sqrt(phycon.Tko)              % m s^-1
        
    end % properties
   
end % phycon

