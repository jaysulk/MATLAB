function date = Irig2Datetime(year, day, hours, mins, secs, msecs)        
    
    dayfrac = hours/24 + mins/1440 + secs/3600;
    date = datetime(year,1,0) + day + dayfrac;
    daten = addtodate(datenum(date), msecs, 'millisecond');
    date = datestr(daten ,'mmmm dd, yyyy HH:MM:SS.FFF AM');
    
end
