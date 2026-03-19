commit 42dd4c997cdda5a2abad2f9d790f0da2bb8a14a4
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Aug 27 22:21:11 2020 -0700

    Re-add the data.MetricData that uses the new generated structs (#1659)
    
    Add custom methods to deal with the oneof part of the Metric. This needs probably a bit of more thoughts but good enough for the moment.
    
    Currently the OTLP receiver/exporter still uses the old protos,
    because the generated proto file was manually changed to import the v1old generated protos (in the previous PR, and not changed now).
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
