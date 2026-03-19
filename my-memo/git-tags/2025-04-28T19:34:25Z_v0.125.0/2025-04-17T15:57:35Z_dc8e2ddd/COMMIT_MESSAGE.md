commit dc8e2ddd9c7230063aba113073699198cca42dfc
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Thu Apr 17 08:57:35 2025 -0700

    Permanently enable 'telemetry.newPipelineTelemetry' feature gate (#12856)
    
    Discussed offline in relation to #12812
    
    Introduction of this gate had some unintended side effects, such as
    removing attributes from loggers.
    
    ---------
    
    Co-authored-by: Jade Guiton <jade.guiton@datadoghq.com>
