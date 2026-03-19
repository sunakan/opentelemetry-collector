commit 814f4f3d958e85c67511b01e58e01d83cc74fd9a
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Aug 3 12:26:49 2021 -0700

    receiver/prometheus: add ToMetricPdata method (#3695)
    
    This change wires together the logic to convert
    the pdata converters into a method ToMetricPdata
    that appends converted metrics. The next change or two,
    will then hook everything up directly and will allow us
    to delete all the prior code!!
    
    Updates #3137
    Updates PR #3674
    Requires PR #3694
    Updates #3691
