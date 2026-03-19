commit 18ec3b3d32a0ff326105b7f6c862e61c308fef9d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Apr 6 12:08:37 2020 -0700

    Remove default processors from e2e tests (#793)
    
    Right before switching OTLP exporter to internal data we want to capture the current OTLP pipeline performance with translation to OC. Once OTLP exporter switched to internal data we can measure improvement of using OTLP internally through the whole pipeline against the OC based pipeline.
