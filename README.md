Ruby version 2.6
Rails version 5.2.1

Route is localhost:3000localhost:3000/graffiti/report

Parameters
alderman #string: last name or unique last partial
month    #string: month as one or two digits
year     #string: 4 digit year

Returns  #alderman's full name, ward, month, year and number of matching records.

Testing was done on models. I ran into a problem when I queried the graffiti reports. It throws a warning with every record.

, [2018-10-10T22:03:16.551867 #16148]  WARN -- : You are setting a key that conflicts with a built-in method Hashie::Ma$

I put a  lot of effort into finding what causes that, I had no luck.
