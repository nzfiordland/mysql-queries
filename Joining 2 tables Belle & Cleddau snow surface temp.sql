SELECT 
    nzta_belle1_hour.TmStamp,
    nzta_belle1_aws_10.IR_SnowSurfTemp AS 'Belle snow surface temp',
    nzta_cleddau1_aws_10.IR_SnowSurfTemp AS 'Cleddau snow surface temp'
FROM
    nzta_belle1_aws_10,
    nzta_cleddau1_aws_10
WHERE 
    nzta_belle1_aws_10.TmStamp >= '2020-11-20 00:00:00'