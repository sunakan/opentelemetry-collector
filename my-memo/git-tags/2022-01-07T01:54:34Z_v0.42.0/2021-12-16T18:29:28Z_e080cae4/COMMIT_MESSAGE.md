commit e080cae46f19a3b30135db1dbe1070d676b1c2ae
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Thu Dec 16 13:29:28 2021 -0500

    Enable configuring telemetry through service config file (#4069)
    
    * consolidate flags for configuring telemetry
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Enable configuring metrics via service config
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Make components take MetricsLevel from TelemetrySettings
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Fix lint errors
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Remove configuration for metrics prefix and adding instance ID
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Make entire Collector available to telemetry initialization, use it to set metrics prefix to buildInfo.Command
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * fix metrics prefix tests
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Fix lint errors
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * config/telemetry: parseLevel() no longer needs to be exported
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * config/telemetry: remove intanceID and prefix flags
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Apply PR feedback
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * address PR feedback
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Avoid linter complaining about use of deprecated functions
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Update CHANGELOG
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
