SELECT 
    `nzta_teanaubase1_site_10`.`TmStamp`,
    `nzta_teanaubase1_site_10`.`RecNum`,
    `nzta_teanaubase1_site_10`.`BattVolts`,
    `nzta_teanaubase1_site_10`.`PTemp_Ins`,
    `nzta_teanaubase1_site_10`.`Door1_Open`
FROM
    `nzta_sh94_aws_data`.`nzta_teanaubase1_site_10`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 2;

