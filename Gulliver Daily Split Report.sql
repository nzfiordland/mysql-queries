-- Dylan O'Neill
select 
    TmStamp as 'Date/Time',
    round(AirTemp1_Av, 1) as 'Air Temp C',
    round(SnowDepth1BestMQN, 2) as 'Snow Depth m',
    round(UVMWD) as 'Wind Direction Deg',
    round(MHWS) as 'Wind Speed Km/h',
    round(Wind1Gust3s) as 'Wind Gust Km/h',
	round(SolarRad_Av) as 'Solar Rad W/m2',
	round(CR1000_Batt_Volts, 1) as 'Logger Volts'
from
    nzta_gulliver1_aws_30
where
    TmStamp between date_sub(concat(curdate(), ' 07:30:00'),
        interval 1 day) and date_sub(concat(curdate(), ' 07:30:00'),
        interval 0 day)
union
	select 'MAX Air Temp' as TmStamp, round(max(AirTemp1_Av), 1) AirTemp1_Av,'','','','','','' from nzta_gulliver1_aws_30 where
    TmStamp between date_sub(concat(curdate(), ' 07:30:00'),
        interval 1 day) and date_sub(concat(curdate(), ' 07:30:00'),
        interval 0 day)
union
	select 'MIN Air Temp' as TmStamp, round(min(AirTemp1_Av), 1) AirTemp1_Av,'','','','','','' from nzta_gulliver1_aws_30 where
    TmStamp between date_sub(concat(curdate(), ' 07:30:00'),
        interval 1 day) and date_sub(concat(curdate(), ' 07:30:00'),
        interval 0 day)