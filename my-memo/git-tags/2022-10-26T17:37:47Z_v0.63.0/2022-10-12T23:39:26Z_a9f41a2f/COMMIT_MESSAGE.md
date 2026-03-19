commit a9f41a2fbcd713682bc693ce0fba4cd8c948bde7
Author: Gustavo Paiva <gustavo@lightstep.com>
Date:   Wed Oct 12 20:39:26 2022 -0300

    Instrument obsreport.receiver metrics with otel go (#6222)
    
    * Instrument obs_receiver with otel go
    
    * add changelog entry
    
    * remove views configuration
    
    * move otel-go metrics to obsreport
    
    * add UseOtelForMetrics to TelemetrySettings; extract otel sdk initialization changes to another pr; remove public InstrumentWithOtel from obsreport;
    
    * default UseOtelForMetrics to false
    
    * remove duplicate oc registry initialization
    
    * move `UseOtelForMetrics` to the internal package `obsreportconfig`
    
    * address comments
    
    * only register view if featuregate is disabled
    
    * prefix meter name with `receiver/`
    
    * change meter scope name
    
    * upgrade otel metric sdk
    
    * run make gotidy
    
    * update changelog
    
    * revert: otel go version upgrade
    
    * revert: x/sys upgrades
