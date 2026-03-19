commit 5852d09fb7b519e18610b99fc5a9da8cddbbf790
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Jun 27 00:58:57 2023 -0400

    Handle partial success responses in the OTLP HTTP exporter (#6970)
    
    Handle partial success messages returned from OTLP HTTP backends.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/6686
    
    ---------
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
