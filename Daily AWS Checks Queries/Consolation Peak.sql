SELECT 
    `nzta_peak1_aws_10`.`TmStamp`,
    `nzta_peak1_aws_10`.`RecNum`,
    `nzta_peak1_aws_10`.`CR1000_Batt_Volts`,
    `nzta_peak1_aws_10`.`CR1000_PTemp_Inst`,
    `nzta_peak1_aws_10`.`Batt_Volts_Aux1`,
    `nzta_peak1_aws_10`.`MHWS`,
    `nzta_peak1_aws_10`.`UVMWD`,
    `nzta_peak1_aws_10`.`SDWD_Yam`,
    `nzta_peak1_aws_10`.`Wind1GustDir3s`,
    `nzta_peak1_aws_10`.`Wind1Gust1s`,
    `nzta_peak1_aws_10`.`Wind1GustDir1s`,
    `nzta_peak1_aws_10`.`Wind1Gust3s`,
    `nzta_peak1_aws_10`.`Wind1GustDay1s`,
    `nzta_peak1_aws_10`.`Wind1GustDay3s`,
    `nzta_peak1_aws_10`.`Wind1Lull3s`,
    `nzta_peak1_aws_10`.`Wind1LullDir3s`,
    `nzta_peak1_aws_10`.`AirTemp1_Av`,
    `nzta_peak1_aws_10`.`AirTemp1_Inst`,
    `nzta_peak1_aws_10`.`AirTemp2_Av`,
    `nzta_peak1_aws_10`.`AirTemp2_Inst`,
    `nzta_peak1_aws_10`.`AirTemp1_2DeltaT`,
    `nzta_peak1_aws_10`.`Wind1WindChill_10MinAvg`,
    `nzta_peak1_aws_10`.`Pump1TankLevel`,
    `nzta_peak1_aws_10`.`Pump1Counter`,
    `nzta_peak1_aws_10`.`Pump2Counter`,
    `nzta_peak1_aws_10`.`IPA1_TankLevel`,
    `nzta_peak1_aws_10`.`IPA2_TankLevel`,
    `nzta_peak1_aws_10`.`SnowDepth1BestMQN`,
    `nzta_peak1_aws_10`.`SnowDepth1`,
    `nzta_peak1_aws_10`.`IR_SnowSurfTemp`,
    `nzta_peak1_aws_10`.`Lysim1_10min`,
    `nzta_peak1_aws_10`.`Lysim1_Day`,
    `nzta_peak1_aws_10`.`Blank1`,
    `nzta_peak1_aws_10`.`RH%_Av`,
    `nzta_peak1_aws_10`.`VaisalaTemp1_Avg`,
    `nzta_peak1_aws_10`.`DewPoint_Av`,
    `nzta_peak1_aws_10`.`Blank2`,
    `nzta_peak1_aws_10`.`SolarRad_Av`,
    `nzta_peak1_aws_10`.`SolarRd1_Inst`,
    `nzta_peak1_aws_10`.`Blank3`,
    `nzta_peak1_aws_10`.`Precip1_10min`,
    `nzta_peak1_aws_10`.`Precip1_Day`,
    `nzta_peak1_aws_10`.`Blank4`,
    `nzta_peak1_aws_10`.`AP1_CPressure`,
    `nzta_peak1_aws_10`.`SnowWeight`,
    `nzta_peak1_aws_10`.`Wind1GustDayDir1s`,
    `nzta_peak1_aws_10`.`Wind1GustDayDir3s`,
    `nzta_peak1_aws_10`.`AirTemp1_MinObs`,
    `nzta_peak1_aws_10`.`AirTemp1_MaxObs`,
    `nzta_peak1_aws_10`.`SnowDepth1_Delta24hr`,
    `nzta_peak1_aws_10`.`Lysim1_Run12hr`,
    `nzta_peak1_aws_10`.`Lysim1_Run24hr`,
    `nzta_peak1_aws_10`.`Precip1_Run1hr`,
    `nzta_peak1_aws_10`.`Precip1_Run12hr`,
    `nzta_peak1_aws_10`.`Precip1_Run24hr`,
    `nzta_peak1_aws_10`.`Precip1_SinceLastStorm`,
    `nzta_peak1_aws_10`.`SnowDepth2BestMQN`,
    `nzta_peak1_aws_10`.`SnowDepth2`,
    `nzta_peak1_aws_10`.`Precip1_EventTotal`
FROM
    `nzta_sh94_aws_data`.`nzta_peak1_aws_10`
WHERE
    TmStamp LIKE '%07:00:00%'
ORDER BY TmStamp DESC
LIMIT 1;