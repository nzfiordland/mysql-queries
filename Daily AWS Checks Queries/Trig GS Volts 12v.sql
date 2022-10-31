SELECT 
    `nzta_triggs_datarpt_site_10`.`TmStamp`,
    `nzta_triggs_datarpt_site_10`.`RecNum`,
    `nzta_triggs_datarpt_site_10`.`BattVolts`,
    `nzta_triggs_datarpt_site_10`.`PTemp_Ins`,
    `nzta_triggs_datarpt_site_10`.`Door1_Open`,
    `nzta_triggs_datarpt_site_10`.`BattV_Aux1`
FROM
    `nzta_sh94_aws_data`.`nzta_triggs_datarpt_site_10`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 1;