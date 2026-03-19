commit 86d40883b48ce44186725ff3b86ebdf0014e4c32
Author: Patryk Matyjasek <72449525+pmatyjasek-sumo@users.noreply.github.com>
Date:   Wed Jun 2 15:48:49 2021 +0200

    Standarize Settings, Params and Parameters in Receiver (#3167)
    
    * Replace ReceiverCreateParams with ReceiverCreateSettings.
    Replace all dependencies in Receivers.
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    # Conflicts:
    #       component/receiver.go
    
    # Conflicts:
    #       exporter/opencensusexporter/opencensus_test.go
    #       exporter/prometheusexporter/end_to_end_test.go
    
    * Update changelog
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    # Conflicts:
    #       CHANGELOG.md
    
    # Conflicts:
    #       CHANGELOG.md
    
    # Conflicts:
    #       CHANGELOG.md
    
    * Add missing file
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
