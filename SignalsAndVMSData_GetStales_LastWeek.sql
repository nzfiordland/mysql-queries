SET @START_TMSTAMP = ADDDATE(curdate(), INTERVAL -7 DAY);
SET @END_TMSTAMP   = '2014-07-03 23:59:59';

SELECT *
  FROM            nzta_tunneleast2_signalstimetillgreen AS ttg
  LEFT OUTER JOIN nzta_tunneleast2_signalsphases        AS sp     ON ttg.tmstamp    = sp.tmstamp
  LEFT OUTER JOIN nzta_tunneleast2_signalsstatus        AS ss     ON sp.tmstamp     = ss.tmstamp
  LEFT OUTER JOIN nzta_tunneleast2_signalsradarstate    AS srs    ON ss.tmstamp     = srs.tmstamp
  LEFT OUTER JOIN nzta_tunneleastvms1_vms_ttg           AS ev1ttg ON srs.tmstamp    = ev1ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms2_vms_ttg           AS wv2ttg ON ev1ttg.tmstamp = wv2ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms3_vms_ttg           AS wv3ttg ON wv2ttg.tmstamp = wv3ttg.TmStamp
 WHERE ttg.tmstamp > @START_TMSTAMP
--   AND ttg.TmStamp < @END_TMSTAMP
   AND (ev1ttg.VMS_TTGString = "STALE"
     OR wv2ttg.VMS_TTGString = "STALE"
     OR wv3ttg.VMS_TTGString = "STALE")

UNION

SELECT *
  FROM            nzta_tunneleast2_signalstimetillgreen AS ttg
 RIGHT OUTER JOIN nzta_tunneleast2_signalsphases        AS sp     ON ttg.tmstamp    = sp.tmstamp
  LEFT OUTER JOIN nzta_tunneleast2_signalsstatus        AS ss     ON sp.tmstamp     = ss.tmstamp
  LEFT OUTER JOIN nzta_tunneleast2_signalsradarstate    AS srs    ON ss.tmstamp     = srs.tmstamp
  LEFT OUTER JOIN nzta_tunneleastvms1_vms_ttg           AS ev1ttg ON srs.tmstamp    = ev1ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms2_vms_ttg           AS wv2ttg ON ev1ttg.tmstamp = wv2ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms3_vms_ttg           AS wv3ttg ON wv2ttg.tmstamp = wv3ttg.TmStamp
 WHERE sp.tmstamp > @START_TMSTAMP
--   AND sp.TmStamp < @END_TMSTAMP
   AND (ev1ttg.VMS_TTGString = "STALE"
     OR wv2ttg.VMS_TTGString = "STALE"
     OR wv3ttg.VMS_TTGString = "STALE")

UNION

SELECT *
  FROM            nzta_tunneleast2_signalstimetillgreen AS ttg
 RIGHT OUTER JOIN nzta_tunneleast2_signalsphases        AS sp     ON ttg.tmstamp    = sp.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsstatus        AS ss     ON sp.tmstamp     = ss.tmstamp
  LEFT OUTER JOIN nzta_tunneleast2_signalsradarstate    AS srs    ON ss.tmstamp     = srs.tmstamp
  LEFT OUTER JOIN nzta_tunneleastvms1_vms_ttg           AS ev1ttg ON srs.tmstamp    = ev1ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms2_vms_ttg           AS wv2ttg ON ev1ttg.tmstamp = wv2ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms3_vms_ttg           AS wv3ttg ON wv2ttg.tmstamp = wv3ttg.TmStamp
 WHERE ss.tmstamp > @START_TMSTAMP
--   AND ss.TmStamp < @END_TMSTAMP
   AND (ev1ttg.VMS_TTGString = "STALE"
     OR wv2ttg.VMS_TTGString = "STALE"
     OR wv3ttg.VMS_TTGString = "STALE")

UNION

SELECT *
  FROM            nzta_tunneleast2_signalstimetillgreen AS ttg
 RIGHT OUTER JOIN nzta_tunneleast2_signalsphases        AS sp     ON ttg.tmstamp    = sp.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsstatus        AS ss     ON sp.tmstamp     = ss.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsradarstate    AS srs    ON ss.tmstamp     = srs.tmstamp
  LEFT OUTER JOIN nzta_tunneleastvms1_vms_ttg           AS ev1ttg ON srs.tmstamp    = ev1ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms2_vms_ttg           AS wv2ttg ON ev1ttg.tmstamp = wv2ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms3_vms_ttg           AS wv3ttg ON wv2ttg.tmstamp = wv3ttg.TmStamp
 WHERE srs.tmstamp > @START_TMSTAMP
--   AND srs.TmStamp < @END_TMSTAMP
   AND (ev1ttg.VMS_TTGString = "STALE"
     OR wv2ttg.VMS_TTGString = "STALE"
     OR wv3ttg.VMS_TTGString = "STALE")


UNION

SELECT *
  FROM            nzta_tunneleast2_signalstimetillgreen AS ttg
 RIGHT OUTER JOIN nzta_tunneleast2_signalsphases        AS sp     ON ttg.tmstamp    = sp.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsstatus        AS ss     ON sp.tmstamp     = ss.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsradarstate    AS srs    ON ss.tmstamp     = srs.tmstamp
 RIGHT OUTER JOIN nzta_tunneleastvms1_vms_ttg           AS ev1ttg ON srs.tmstamp    = ev1ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms2_vms_ttg           AS wv2ttg ON ev1ttg.tmstamp = wv2ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms3_vms_ttg           AS wv3ttg ON wv2ttg.tmstamp = wv3ttg.TmStamp
 WHERE ev1ttg.tmstamp > @START_TMSTAMP
--   AND ev1ttg.TmStamp < @END_TMSTAMP
   AND ev1ttg.VMS_TTGString = "STALE"

UNION

SELECT *
  FROM            nzta_tunneleast2_signalstimetillgreen AS ttg
 RIGHT OUTER JOIN nzta_tunneleast2_signalsphases        AS sp     ON ttg.tmstamp    = sp.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsstatus        AS ss     ON sp.tmstamp     = ss.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsradarstate    AS srs    ON ss.tmstamp     = srs.tmstamp
 RIGHT OUTER JOIN nzta_tunneleastvms1_vms_ttg           AS ev1ttg ON srs.tmstamp    = ev1ttg.TmStamp
 RIGHT OUTER JOIN nzta_tunnelwestvms2_vms_ttg           AS wv2ttg ON ev1ttg.tmstamp = wv2ttg.TmStamp
  LEFT OUTER JOIN nzta_tunnelwestvms3_vms_ttg           AS wv3ttg ON wv2ttg.tmstamp = wv3ttg.TmStamp
 WHERE wv2ttg.tmstamp > @START_TMSTAMP
--   AND wv2ttg.TmStamp < @END_TMSTAMP
   AND wv2ttg.VMS_TTGString = "STALE"

UNION

SELECT *
  FROM            nzta_tunneleast2_signalstimetillgreen AS ttg
 RIGHT OUTER JOIN nzta_tunneleast2_signalsphases        AS sp     ON ttg.tmstamp    = sp.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsstatus        AS ss     ON sp.tmstamp     = ss.tmstamp
 RIGHT OUTER JOIN nzta_tunneleast2_signalsradarstate    AS srs    ON ss.tmstamp     = srs.tmstamp
 RIGHT OUTER JOIN nzta_tunneleastvms1_vms_ttg           AS ev1ttg ON srs.tmstamp    = ev1ttg.TmStamp
 RIGHT OUTER JOIN nzta_tunnelwestvms2_vms_ttg           AS wv2ttg ON ev1ttg.tmstamp = wv2ttg.TmStamp
 RIGHT OUTER JOIN nzta_tunnelwestvms3_vms_ttg           AS wv3ttg ON wv2ttg.tmstamp = wv3ttg.TmStamp
 WHERE wv3ttg.tmstamp > @START_TMSTAMP
--   AND wv3ttg.TmStamp < @END_TMSTAMP
   AND wv3ttg.VMS_TTGString = "STALE"

;