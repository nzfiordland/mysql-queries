SELECT 
    nzta_belle1_aws_10.TmStamp,
    nzta_belle1_aws_10.IR_SnowSurfTemp AS 'Belle snow surface temp',
    nzta_cleddau1_aws_10.IR_SnowSurfTemp AS 'Cleddau snow surface temp'
FROM
    nzta_belle1_aws_10,
    nzta_cleddau1_aws_10
WHERE 
    nzta_belle1_aws_10.TmStamp >= '2021-03-02 00:00:00'