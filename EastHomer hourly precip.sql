select concat('$DATA'),TmStamp, ifnull(Precip1_Hr, 'NAN') from nzta_east1_hour order by RecNum desc limit 1
into outfile '/Temp/EastHomer.txt'
fields terminated by ','
lines terminated by '\n'
