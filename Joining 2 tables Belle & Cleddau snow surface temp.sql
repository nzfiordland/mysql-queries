SELECT 
    b.TmStamp,
    b.IR_SnowSurfTemp AS 'Belle snow surface temp',
    c.IR_SnowSurfTemp AS 'Cleddau snow surface temp'
FROM
    nzta_belle1_aws_10 b
INNER JOIN nzta_cleddau1_aws_10 c
	ON b.TmStamp = c.TmStamp

WHERE 
    b.TmStamp >= '2021-03-02 00:00:00'