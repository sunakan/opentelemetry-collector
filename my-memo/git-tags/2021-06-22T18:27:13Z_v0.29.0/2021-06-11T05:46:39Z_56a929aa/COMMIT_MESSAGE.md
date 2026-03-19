commit 56a929aad6c80fbdc32437b8c7f32991fa5c478d
Author: Jaana Dogan <jbd@amazon.com>
Date:   Thu Jun 10 22:46:39 2021 -0700

    Adjust default retry settings for the PRW Exporter (#3416)
    
    The default retry settings are far off from the Prometheus
    Server's behavior. Retry more aggressively to avoid excessive
    in-memory buffering.
    
    Also fixes open-telemetry/wg-prometheus#54 because the test
    times out before the retry is sent.
