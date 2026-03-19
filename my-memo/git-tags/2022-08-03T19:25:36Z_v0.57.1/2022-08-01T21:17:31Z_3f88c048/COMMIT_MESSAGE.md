commit 3f88c04831b1a095fc783b92ec1aad315b0257ba
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Aug 1 15:17:31 2022 -0600

    Update flags API (#5602)
    
    * Update flags API
    
    * Added bool to SetNoRecordedValue
    
    * Deprecate NewMetricDataPointFlags and HasFlag
    
    * Updated MetricDataPointFlags to be a struct
    
    * Updated changelog
    
    * Fixed lint issues
    
    * Added more tests
    
    * remove None and Reset
    
    * Deprecate MetricDataPointFlags in favor of EmptyMetricDataPointFlags
    
    * Update changelog
    
    * Rename EmptyMetricDataPointFlags to MetricDataPointFlagsStruct
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
