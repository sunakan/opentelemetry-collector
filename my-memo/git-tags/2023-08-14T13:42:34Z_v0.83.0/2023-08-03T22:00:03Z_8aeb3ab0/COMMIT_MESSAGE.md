commit 8aeb3ab04e695b626ae642c8c06f1d909fc33624
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Aug 3 15:00:03 2023 -0700

    [chore] Upgrade go version in CI (#8172)
    
    To resolve the govulncheck reports:
    ```
    Vulnerability #1: GO-2023-1987
        Large RSA keys can cause high CPU usage in crypto/tls
      More info: https://pkg.go.dev/vuln/GO-2023-1987
      Standard library
        Found in: crypto/tls@go1.19.11
        Fixed in: crypto/tls@go1.21rc4
        Example traces found:
    Error:       #1: service/internal/proctelemetry/config.go:299:27: proctelemetry.initOTLPgRPCExporter calls otlpmetricgrpc.New, which eventually calls tls.Conn.Handshake
    Error:       #2: service/internal/proctelemetry/config.go:156:39: proctelemetry.InitPrometheusServer calls http.Server.ListenAndServe, which eventually calls tls.Conn.HandshakeContext
    Error:       #3: service/service.go:251:36: service.buildResource calls uuid.NewRandom, which eventually calls tls.Conn.Read
    Error:       #4: service/config.go:35:13: service.Config.Validate calls fmt.Printf, which eventually calls tls.Conn.Write
    Error:       #5: service/telemetry/telemetry.go:32:28: telemetry.Telemetry.Shutdown calls trace.TracerProvider.Shutdown, which eventually calls tls.Dialer.DialContext
    ```
    
    
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/5753675727/job/15597394973?pr=8144
