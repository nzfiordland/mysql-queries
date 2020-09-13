-- Dylan O'Neill
SELECT 
    nzta_belle1_aws_10.TmStamp,
    nzta_belle1_aws_10.AirTemp1_Av AS 'Belle temp 10min avg',
    nzta_cleddau1_aws_30.AirTemp1_Av AS 'Cleddau temp 30min avg'
FROM
    nzta_belle1_aws_10
        JOIN
    nzta_cleddau1_aws_30 ON nzta_belle1_aws_10.TmStamp = nzta_cleddau1_aws_30.TmStamp
