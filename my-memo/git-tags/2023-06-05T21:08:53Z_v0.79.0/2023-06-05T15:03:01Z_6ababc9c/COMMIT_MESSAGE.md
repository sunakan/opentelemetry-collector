commit 6ababc9c71489f1b13fdb264657c0bdd187a856f
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon Jun 5 09:03:01 2023 -0600

    Incorporate next consumer's capabilities into connector capabilities (#7779)
    
    Resolves #7776
    
    The collector copies data whenever handing it to components that may mutate it. The point at which a copy must be made is within a fanout consumer. There are two points at which a fanout consumer may be placed:
    1. Immediately after a receiver shared by multiple pipelines
    2. Immediately before multiple exporters of a single pipeline
    
    When data is fanned out _to_ a connector (acting as an exporter), we must ensure that the fanout consumer before exporters (point 2 above) is able to take into account whether or not the connector will be handing the data off to a pipeline that will mutate the data.
