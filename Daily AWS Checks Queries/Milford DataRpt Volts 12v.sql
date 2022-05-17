SELECT 
    `nzta_milford_datarpt_site_10`.`TmStamp`,
    `nzta_milford_datarpt_site_10`.`RecNum`,
    `nzta_milford_datarpt_site_10`.`BattVolts`,
    `nzta_milford_datarpt_site_10`.`PTemp`,
    `nzta_milford_datarpt_site_10`.`Door1_Open`
FROM
    `nzta_sh94_aws_data`.`nzta_milford_datarpt_site_10`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 2;