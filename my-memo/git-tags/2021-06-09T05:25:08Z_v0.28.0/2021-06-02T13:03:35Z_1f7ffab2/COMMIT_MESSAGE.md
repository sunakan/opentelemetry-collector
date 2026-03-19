commit 1f7ffab2cad1272735d4f32b24024cc1a373f5f9
Author: Patryk Matyjasek <72449525+pmatyjasek-sumo@users.noreply.github.com>
Date:   Wed Jun 2 15:03:35 2021 +0200

    Replace ExporterCreateParams with ExporterCreateSettings. (#3164)
    
    Replace all dependencies in Exporters.
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    # Conflicts:
    #       exporter/prometheusremotewriteexporter/factory.go
    
    # Conflicts:
    #       exporter/fileexporter/factory.go
    #       exporter/opencensusexporter/factory_test.go
    #       exporter/otlpexporter/factory_test.go
    #       exporter/prometheusremotewriteexporter/factory_test.go
    
    # Conflicts:
    #       CHANGELOG.md
    #       exporter/kafkaexporter/factory.go
    #       exporter/opencensusexporter/factory.go
    #       exporter/otlpexporter/factory.go
    #       exporter/otlphttpexporter/factory.go
    #       exporter/zipkinexporter/factory.go
    
    # Conflicts:
    #       CHANGELOG.md
    #       component/exporter.go
    #       exporter/opencensusexporter/factory_test.go
