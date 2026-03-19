commit 1b6e88b9995f0559b0f25b4f7c9f2e95e92965bb
Author: alrex <aboten@lightstep.com>
Date:   Wed Jun 17 14:21:30 2020 -0700

    otlpexporter: send configured headers in request (#1130)
    
    This change ensures the configured headers for the otlp exporter are sent in export requests to the backends.
