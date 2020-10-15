function valid = valid_date(year, month, date)
if(nargin ~= 3)
    valid = false;
elseif ((~isscalar(year)||(mod(year,1)~=0) || year<0))
    valid = false;
elseif ((~isscalar(month))||(mod(month,1)~=0) || (month<=0) || (month>12))
    valid = false;
elseif ((~isscalar(date))||(mod(date,1)~=0) || (date<=0))
    valid = false;
elseif(any(month==[1:2:7,8:2:12])&& date>31)
    valid = false;
elseif (any(month==[4,6,9,11]) && date>30)
    valid = false;
elseif month==2 && date>(28+(mod(year,400)==0 || (mod(year,100)~=0 && mod(year,4)==0)))
    valid=false;    
else
    valid = true;    
end
