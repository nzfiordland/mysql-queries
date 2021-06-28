select 
    date_format(b1.TmStamp, '%Y-%m-%d %H:%i'),
    format(b1.AirTemp1_Av, 1), # Use format not round so that X.0 retains the .0
    round(b3.Lysim1_30min, 2),
    round(b1.UVMWD),
    round(b1.MHWS),
    round(b1.Wind1Gust3s),
	round(b1.SolarRad_Av),
	round(b1.CR1000_Batt_Volts, 1)
from
    nzta_belle1_aws_30 b1
inner join nzta_belle3_aws_30 b3
	on b1.TmStamp = b3.TmStamp
where
    b1.TmStamp between date_sub(concat('2021-06-25', ' 07:30:00'),
        interval 1 day) and date_sub(concat('2021-06-25', ' 07:00:00'),
        interval 0 day)
union
    select '','','','','','','',''
union
	select 'MAX Air Temp' as TmStamp, round(max(AirTemp1_Av), 1) AirTemp1_Av,'','','','','','' from nzta_belle1_aws_30 where
    TmStamp between date_sub(concat('2021-06-25', ' 07:30:00'),
        interval 1 day) and date_sub(concat('2021-06-25', ' 07:00:00'),
        interval 0 day)
union
	select 'MIN Air Temp' as TmStamp, round(min(AirTemp1_Av), 1) AirTemp1_Av,'','','','','','' from nzta_belle1_aws_30 where
    TmStamp between date_sub(concat('2021-06-25', ' 07:30:00'),
        interval 1 day) and date_sub(concat('2021-06-25', ' 07:00:00'),
        interval 0 day)
