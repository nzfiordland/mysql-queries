SELECT 
    `nzta_chapel1_site_10`.`TmStamp`,
    `nzta_chapel1_site_10`.`RecNum`,
    `nzta_chapel1_site_10`.`CR1000_Batt_Volts`,
    `nzta_chapel1_site_10`.`CR1000_PTemp_Inst`,
    `nzta_chapel1_site_10`.`Door1_Open`,
    `nzta_chapel1_site_10`.`Temp_TC1`,
    `nzta_chapel1_site_10`.`Batt_Volts_Aux1`,
    `nzta_chapel1_site_10`.`Battery24V1`,
    `nzta_chapel1_site_10`.`ACDetect1`,
    `nzta_chapel1_site_10`.`Blank4`
FROM
    `nzta_sh94_aws_data`.`nzta_chapel1_site_10`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 2;