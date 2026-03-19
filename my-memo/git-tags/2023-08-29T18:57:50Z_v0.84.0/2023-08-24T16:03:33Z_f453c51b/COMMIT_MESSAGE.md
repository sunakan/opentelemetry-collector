commit f453c51b2328344f262146d86154ccf150484ae1
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Aug 24 09:03:33 2023 -0700

    add OTLP export support for internal traces  (#8119)
    
    This PR adds support for exporting internal collector traces via the
    OTel Go OTLP exporters.
    
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8106
    
    ~Follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/8117~
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
