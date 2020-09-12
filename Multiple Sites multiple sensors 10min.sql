SELECT 
    east_aws.TmStamp as tmstamp,
    # East
    east_aws.AirTemp1_Av as east_temp, 
    east_aws.Precip1_10min as east_precip,
    east_aws.SnowDepth1 as east_sd,
   # Belle
    belle_aws.AirTemp1_Av as belle_temp, 
    belle_aws.Lysim1_10min as belle_precip,
    belle_aws.SnowDepth1 as belle_sd,
    belle_aws.SnowWeight as belle_sw,
    belle_aws.IR_SnowSurfTemp as belle_irtemp, 
    # Belle2
    belle2_aws.AirTemp1_Av as belle2_temp, 
    belle2_aws.IR_SnowSurfTemp as belle2_irtemp, 
    belle2_aws.SnowWeight as belle2_sw,
    # Cleddau
    cleddau_aws.AirTemp1_Av as cleddau_temp,
    cleddau_aws.Lysim1_Day as cleddau_precip,
    cleddau_aws.SnowDepth1 as cleddau_sd,
    # Gulliver
    gulliver_aws.AirTemp1_Av as gulliver_temp, 
    gulliver_aws.SnowDepth1 as gulliver_sd,
    gulliver_aws.IR_SnowSurfTemp as gulliver_irtemp,
    # Wind
    belle_aws.MHWS as belle_ws,
    belle_aws.UVMWD as belle_wd,
    cleddau_aws.MHWS as cleddau_ws,
    cleddau_aws.UVMWD as cleddau_wd,
    gulliver_aws.MHWS as gulliver_ws,
    gulliver_aws.UVMWD as gulliver_wd
FROM
    nzta_sh94_aws_data.nzta_east1_aws_10 as east_aws
LEFT JOIN
    nzta_sh94_aws_data.nzta_belle1_aws_10 as belle_aws
    ON east_aws.TmStamp = belle_aws.TmStamp
LEFT JOIN
    nzta_sh94_aws_data.nzta_belle2_aws_10 as belle2_aws
    ON east_aws.TmStamp = belle2_aws.TmStamp and
       belle_aws.TmStamp = belle2_aws.TmStamp
LEFT JOIN
    nzta_sh94_aws_data.nzta_cleddau1_aws_10 as cleddau_aws
    ON east_aws.TmStamp = cleddau_aws.TmStamp and
       belle_aws.TmStamp = cleddau_aws.TmStamp and
       belle2_aws.TmStamp = cleddau_aws.TmStamp
LEFT JOIN
    nzta_sh94_aws_data.nzta_gulliver1_aws_10 as gulliver_aws
    ON east_aws.TmStamp = gulliver_aws.TmStamp and
       belle_aws.TmStamp = gulliver_aws.TmStamp and
       belle2_aws.TmStamp = gulliver_aws.TmStamp and
       cleddau_aws.TmStamp = gulliver_aws.TmStamp
WHERE
    (east_aws.TmStamp > "2015-09-05 00:00:00" AND east_aws.TmStamp < "2015-09-08 00:00:00") AND 
    (belle_aws.TmStamp > "2015-09-05 00:00:00" AND belle_aws.TmStamp < "2015-09-08 00:00:00") AND
    (cleddau_aws.TmStamp > "2015-09-05 00:00:00" AND cleddau_aws.TmStamp < "2015-09-08 00:00:00") AND
    (belle2_aws.TmStamp > "2015-09-05 00:00:00" AND belle2_aws.TmStamp < "2015-09-08 00:00:00") AND
    (gulliver_aws.TmStamp > "2015-09-05 00:00:00" AND gulliver_aws.TmStamp < "2015-09-08 00:00:00");
