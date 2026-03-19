commit 83ef02719ed3dffd7a37021094f9769e50e704a0
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 30 13:23:19 2020 -0700

    Fix race in TestExportProtocolViolations_nodelessFirstMessage (#747)
    
    Fix race in TestExportProtocolViolations_nodelessFirstMessage. The race is on the t *testing.T having one of its fields being read and write concurrently. I didn't investigate why this test needs this special timeout handling, just took the obvious fix to protect against the data race - will look at this again later.
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/41
