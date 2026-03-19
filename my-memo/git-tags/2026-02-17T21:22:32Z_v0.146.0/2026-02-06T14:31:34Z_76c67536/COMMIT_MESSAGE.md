commit 76c6753612fdcff50aae8d059b4734a27e1ba2f3
Author: Israel Blancas <iblancasa@gmail.com>
Date:   Fri Feb 6 15:31:34 2026 +0100

    Add detailed failure attributes to exporter send_failed metrics (#14247)
    
    #### Description
    - Added `error.type` and `error.permanent` attributes in detailed mode
    to `otelcol_exporter_send_failed_<signal>` metrics
    
    Suggested here
    https://github.com/open-telemetry/opentelemetry-collector/pull/13957#issuecomment-3598050342
    
    #### Link to tracking issue
    Fixes #13956
    
    ---------
    
    Signed-off-by: Israel Blancas <iblancasa@gmail.com>
