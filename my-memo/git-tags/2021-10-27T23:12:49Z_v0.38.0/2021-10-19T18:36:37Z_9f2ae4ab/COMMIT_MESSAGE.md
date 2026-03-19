commit 9f2ae4ab8187d81475bcbbaa4d175c27d9bce9cd
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Oct 19 11:36:37 2021 -0700

    Change pdata to use the newly added [Traces|Metrics|Logs]Data. (#4214)
    
    The OTLP marshaler/unmarshalers will use the newly added Data messages.
    
    Updates: https://github.com/open-telemetry/opentelemetry-collector/issues/4207
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
