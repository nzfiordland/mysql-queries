select 
	date_format(c1.TmStamp, '%Y-%m-%d %H:%i'),
    format(c1.AirTemp1_Av, 1), # Use format not round so that X.0 retains the .0
    round(c2.SnowDepth2_SHM31_Avg, 2),
    round(c1.UVMWD),
    round(c1.MHWS),
    round(c1.Wind1Gust3s),
	round(c1.SolarRad_Av),
	round(c1.CR1000_Batt_Volts, 1)
from
    nzta_cleddau1_aws_30 c1
inner join nzta_cleddau1_snowd2_shm31 c2
	on c1.TmStamp = c2.TmStamp
where
    c1.TmStamp between date_sub(concat('2021-06-25', ' 07:30:00'),
        interval 1 day) and date_sub(concat('2021-06-25', ' 07:00:00'),
        interval 0 day)
union
    select '','','','','','','',''
union
	select 'MAX Air Temp' as TmStamp, round(max(AirTemp1_Av), 1) AirTemp1_Av,'','','','','','' from nzta_cleddau1_aws_30 where
    TmStamp between date_sub(concat('2021-06-25', ' 07:30:00'),
        interval 1 day) and date_sub(concat('2021-06-25', ' 07:00:00'),
        interval 0 day)
union
	select 'MIN Air Temp' as TmStamp, round(min(AirTemp1_Av), 1) AirTemp1_Av,'','','','','','' from nzta_cleddau1_aws_30 where
    TmStamp between date_sub(concat('2021-06-25', ' 07:30:00'),
        interval 1 day) and date_sub(concat('2021-06-25', ' 07:00:00'),
        interval 0 day)
