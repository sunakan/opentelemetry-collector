commit 80269724f45ae2b17bca7bb533d05c577b33aa8d
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Dec 10 08:51:30 2025 -0800

    [xpdata/entity] Rename methods to use updated entity terminology (#14275)
    
    Rename Entity API methods to align with OpenTelemetry specification
    terminology for attributes in entity context:
      - IDAttributes() → IdentifyingAttributes()
      - DescriptionAttributes() → DescriptiveAttributes()
    
    This change applies the "Identifying" and "Descriptive" terms
    specifically to Attributes (not Entity or Entity Keys), as clarified in
    https://github.com/open-telemetry/opentelemetry-specification/issues/4700
