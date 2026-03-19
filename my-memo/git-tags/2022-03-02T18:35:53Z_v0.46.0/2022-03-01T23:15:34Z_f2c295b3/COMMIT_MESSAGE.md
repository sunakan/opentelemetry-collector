commit f2c295b3443eae59c1a78971281acb2438239304
Author: Eric L <100242256+splunkericl@users.noreply.github.com>
Date:   Tue Mar 1 15:15:34 2022 -0800

    Add feature flag to allow enabling otel for internal metrics (#4912)
    
    * Add feature flag to allow enabling otel for internal metrics
    
    * Add changelog; mark existing constant deprecated; keep feature flag private
    
    * Register feature flag in telemetry instead
    
    * apply the feature flag back to original value in test
    
    * change comment
    
    * Update service/telemetry.go
    
    update description with suggested change
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    
    * Remove use of deprecated variable to address lint issue
    
    * re-arrange import
    
    * Fix unit test
    
    * Re-enable the default value to be configtelemetry.UseOpenTelemetryForInternalMetrics
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
