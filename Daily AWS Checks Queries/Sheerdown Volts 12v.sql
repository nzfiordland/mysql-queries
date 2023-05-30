SELECT 
    `nzta_sheerdownrepeater1_site_10`.`TmStamp`,
    `nzta_sheerdownrepeater1_site_10`.`RecNum`,
    `nzta_sheerdownrepeater1_site_10`.`Batt_Volts_Avg`,
    `nzta_sheerdownrepeater1_site_10`.`PTemp_Inst`,
    `nzta_sheerdownrepeater1_site_10`.`IPA1_TankLevel`,
    `nzta_sheerdownrepeater1_site_10`.`Diesel1_TankLevel`,
    `nzta_sheerdownrepeater1_site_10`.`Batt_Volts`,
    `nzta_sheerdownrepeater1_site_10`.`ACDetect1`,
    `nzta_sheerdownrepeater1_site_10`.`Batt_Volts_Aux1`,
    `nzta_sheerdownrepeater1_site_10`.`ACDetect2`
FROM
    `nzta_sh94_aws_data`.`nzta_sheerdownrepeater1_site_10`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 2;