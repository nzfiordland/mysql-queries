-- Dylan O'Neill
SELECT 
    nzta_belle1_aws_10.TmStamp,
    nzta_belle1_aws_10.AirTemp1_Av AS 'Belle temp 10min avg',
    nzta_cleddau1_aws_10.AirTemp1_Av AS 'Cleddau temp 10min avg'
FROM
    nzta_belle1_aws_10,
    nzta_cleddau1_aws_10
WHERE
    nzta_belle1_aws_10.TmStamp >= '2022-10-27 00:00:00'
        AND nzta_belle1_aws_10.TmStamp <= '2022-10-27 00:00:00'