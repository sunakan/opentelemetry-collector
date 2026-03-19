commit 90ccbfa94d5c33ed13ead47d8af04f357c81e999
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Feb 9 10:58:11 2021 -0500

    Add FileDataProvider to the testbed (#2444)
    
    FileDataProvider in an implementation of the DataProvider for use in end-to-end tests.
    The data to send is loaded from a file. The file should contain one JSON-encoded
    Export*ServiceRequest Protobuf message. The file can be recorded using the "file"
    exporter.
    
    FileDataProvider is useful for implementing end-to-end tests that use realistic data.
    As an example I also added TestMetricsFromFile which uses testdata/k8s-metrics.json
    real world data that I recorded using k8scluster receiver running on my local
    Kubernetes cluster.
