commit d9651b124dbb0099ca8cda0a650f8eeecb2c997c
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Jan 14 15:46:38 2019 -0800

    Enable receiver/exporter metrics for collector (#309)
    
    Enabling some metrics that exist for receivers/exporters but were
    missing on the collector. We should do a separate change to get
    consistency on the name of metrics and tags but let's do it in a
    separate change.
