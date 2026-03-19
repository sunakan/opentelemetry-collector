commit d2c3b2ad2aa736e1d44c6fe31715ddc8cc91bedc
Author: Bremer Jonathan <bjonathan@splunk.com>
Date:   Fri Apr 30 12:08:18 2021 -0400

    Add Unwrap methods to consumer errors (#3069)
    
    **Description:** Fixing a bug - Add Unwrap method to consumer errors permanent, Traces, Logs and Metrics. Functions Is and As in standard package errors use Unwrap to retrieve wrapped errors.
    
    **Testing:** Created error type testErrorType. Wrapped testErrorType values with the consumer errors. Used function errors.As to retrieve wrapped testErrorType values. Added tests:
    - TestPermanent_Unwrap
    - TestTraces_Unwrap
    - TestLogs_Unwrap
    - TestMetrics_Unwrap
