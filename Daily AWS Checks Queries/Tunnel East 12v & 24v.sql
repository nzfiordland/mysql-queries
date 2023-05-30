SELECT 
    `nzta_tunneleast1_tunnelstation`.`TmStamp`,
    `nzta_tunneleast1_tunnelstation`.`RecNum`,
    `nzta_tunneleast1_tunnelstation`.`BattVolts`,
    `nzta_tunneleast1_tunnelstation`.`Logger_PanelTemp`,
    `nzta_tunneleast1_tunnelstation`.`Door1_Open`,
    `nzta_tunneleast1_tunnelstation`.`BattVolts_Aux1`,
    `nzta_tunneleast1_tunnelstation`.`BattVolts_24V1`,
    `nzta_tunneleast1_tunnelstation`.`ACDetect1`
FROM
    `nzta_sh94_aws_data`.`nzta_tunneleast1_tunnelstation`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 2;