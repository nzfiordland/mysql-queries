SELECT 
    `nzta_tunnelwest1_tunnelstation`.`TmStamp`,
    `nzta_tunnelwest1_tunnelstation`.`RecNum`,
    `nzta_tunnelwest1_tunnelstation`.`BattVolts`,
    `nzta_tunnelwest1_tunnelstation`.`Logger_PanelTemp`,
    `nzta_tunnelwest1_tunnelstation`.`Door1_Open`,
    `nzta_tunnelwest1_tunnelstation`.`BattVolts_Aux1`,
    `nzta_tunnelwest1_tunnelstation`.`BattVolts_24V1`,
    `nzta_tunnelwest1_tunnelstation`.`ACDetect1`
FROM
    `nzta_sh94_aws_data`.`nzta_tunnelwest1_tunnelstation`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 1;