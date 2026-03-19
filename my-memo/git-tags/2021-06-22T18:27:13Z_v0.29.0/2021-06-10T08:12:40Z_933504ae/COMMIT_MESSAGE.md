commit 933504aec92bca197ec200a24e09b9a79dac192e
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Jun 10 11:12:40 2021 +0300

    receiver/prometheus: reject datapoints with duplicate label keys (#3408)
    
    As of Prometheus 2.16.0 (released on 2020-02-13), datapoints with
    duplicate label keys MUST be rejected and the Prometheus RemoteWrite
    exporter tests were failing, but that was a red herring as the
    real issue was really in the receiver.
    
    Fixes https://github.com/open-telemetry/wg-prometheus/issues/44
    Fixes #3407
