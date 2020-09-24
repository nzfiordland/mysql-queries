-- Dylan O'Neill
SELECT sum(Precip1_10min) FROM nzta_east1_aws_10
WHERE TmStamp >= '2020-08-11 00:00:00'
