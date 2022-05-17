SELECT 
    `nzta_belle1_aws_10`.`TmStamp`,
    `nzta_belle1_aws_10`.`RecNum`,
    `nzta_belle1_aws_10`.`CR1000_Batt_Volts`,
    `nzta_belle1_aws_10`.`CR1000_PTemp_Inst`,
    `nzta_belle1_aws_10`.`Batt_Volts_Aux1`,
    `nzta_belle1_aws_10`.`MHWS`,
    `nzta_belle1_aws_10`.`UVMWD`,
    `nzta_belle1_aws_10`.`SDWD_Yam`,
    `nzta_belle1_aws_10`.`Wind1GustDir3s`,
    `nzta_belle1_aws_10`.`Wind1Gust1s`,
    `nzta_belle1_aws_10`.`Wind1GustDir1s`,
    `nzta_belle1_aws_10`.`Wind1Gust3s`,
    `nzta_belle1_aws_10`.`Wind1GustDay1s`,
    `nzta_belle1_aws_10`.`Wind1GustDay3s`,
    `nzta_belle1_aws_10`.`Wind1Lull3s`,
    `nzta_belle1_aws_10`.`Wind1LullDir3s`,
    `nzta_belle1_aws_10`.`AirTemp1_Av`,
    `nzta_belle1_aws_10`.`AirTemp1_Inst`,
    `nzta_belle1_aws_10`.`AirTemp2_Av`,
    `nzta_belle1_aws_10`.`AirTemp2_Inst`,
    `nzta_belle1_aws_10`.`AirTemp1_2DeltaT`,
    `nzta_belle1_aws_10`.`Wind1WindChill_10MinAvg`,
    `nzta_belle1_aws_10`.`Pump1TankLevel`,
    `nzta_belle1_aws_10`.`Pump1Counter`,
    `nzta_belle1_aws_10`.`Pump2Counter`,
    `nzta_belle1_aws_10`.`IPA1_TankLevel`,
    `nzta_belle1_aws_10`.`IPA2_TankLevel`,
    `nzta_belle1_aws_10`.`SnowDepth1BestMQN`,
    `nzta_belle1_aws_10`.`SnowDepth1`,
    `nzta_belle1_aws_10`.`IR_SnowSurfTemp`,
    `nzta_belle1_aws_10`.`Lysim1_10min`,
    `nzta_belle1_aws_10`.`Lysim1_Day`,
    `nzta_belle1_aws_10`.`Blank1`,
    `nzta_belle1_aws_10`.`RH%_Av`,
    `nzta_belle1_aws_10`.`VaisalaTemp1_Avg`,
    `nzta_belle1_aws_10`.`DewPoint_Av`,
    `nzta_belle1_aws_10`.`Blank2`,
    `nzta_belle1_aws_10`.`SolarRad_Av`,
    `nzta_belle1_aws_10`.`SolarRd1_Inst`,
    `nzta_belle1_aws_10`.`Blank3`,
    `nzta_belle1_aws_10`.`Precip1_10min`,
    `nzta_belle1_aws_10`.`Precip1_Day`,
    `nzta_belle1_aws_10`.`Blank4`,
    `nzta_belle1_aws_10`.`AP1_CPressure`,
    `nzta_belle1_aws_10`.`SnowWeight`,
    `nzta_belle1_aws_10`.`Wind1GustDayDir1s`,
    `nzta_belle1_aws_10`.`Wind1GustDayDir3s`,
    `nzta_belle1_aws_10`.`AirTemp1_MinObs`,
    `nzta_belle1_aws_10`.`AirTemp1_MaxObs`,
    `nzta_belle1_aws_10`.`SnowDepth1_Delta24hr`,
    `nzta_belle1_aws_10`.`Lysim1_Run12hr`,
    `nzta_belle1_aws_10`.`Lysim1_Run24hr`,
    `nzta_belle1_aws_10`.`Precip1_Run1hr`,
    `nzta_belle1_aws_10`.`Precip1_Run12hr`,
    `nzta_belle1_aws_10`.`Precip1_Run24hr`,
    `nzta_belle1_aws_10`.`Precip1_SinceLastStorm`,
    `nzta_belle1_aws_10`.`SnowDepth2BestMQN`,
    `nzta_belle1_aws_10`.`SnowDepth2`,
    `nzta_belle1_aws_10`.`Precip1_EventTotal`
FROM
    `nzta_sh94_aws_data`.`nzta_belle1_aws_10`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 2;