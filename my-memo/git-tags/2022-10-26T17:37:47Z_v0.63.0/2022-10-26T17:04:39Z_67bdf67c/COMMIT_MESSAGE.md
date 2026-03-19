commit 67bdf67c0121b25d5270cec1b4b4d47ba5cf6796
Author: Corbin Phelps <cphelps8907@gmail.com>
Date:   Wed Oct 26 13:04:39 2022 -0400

    Added cleanup if service errors on Start (#6351)
    
    * Added cleanup if service errors on Start
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Added issue to changelog
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Added a test to verify the reusablility of telemetryInitializer in services
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Moved telemetryInitializer shutdown out of service shutdown
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Fixed comment
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Bundled service shutdown and telemetry into a helper function in the collector
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * PR Fixups
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Update service/collector.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
