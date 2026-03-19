commit 1391fab8dc5c225c6cb94f829d1e6c7ff3636e1c
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Sep 20 01:02:41 2024 +0200

    [chore][exporter/otlphttpexporter] Generalize `composeSignalURL` (#11206)
    
    #### Description
    
    Split off from #11131. Prepares OTLP HTTP exporter for supporting
    profiles (which uses `/v1development`)
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
