commit dacfe9449a3dad23ac96452229691058b688021b
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Wed Mar 11 12:31:24 2020 -0700

    Migrate Prometheus receiver metrics to obsreport package (#617)
    
    * Migrate Prometheus receiver metrics to obsreport
    
    This is the minimal change to migrate the Prometheus metrics to the obsreport package (capable of generating both new and legacy metrics).
    
    * Removing TODO
    
    * go mod tidy on testbed
    
    * PR Feedback
