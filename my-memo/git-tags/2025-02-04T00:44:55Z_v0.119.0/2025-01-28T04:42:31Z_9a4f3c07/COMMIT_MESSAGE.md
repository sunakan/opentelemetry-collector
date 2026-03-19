commit 9a4f3c07d6576b81434c39fcb9a88d07baf26985
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jan 27 20:42:31 2025 -0800

    Fix govulncheck related to crypto/x509 (#12197)
    
    Vulnerability #1: GO-2025-3373
    Usage of IPv6 zone IDs can bypass URI name constraints in
    crypto/x50[9](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/13003405341/job/36266082673?pr=12193#step:6:10)
      More info: https://pkg.go.dev/vuln/GO-2025-3373
      Standard library
    Found in:
    crypto/x509@go1.22.[10](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/13003405341/job/36266082673?pr=12193#step:6:11)
    Fixed in:
    crypto/x509@go1.22.[11](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/13003405341/job/36266082673?pr=12193#step:6:12)
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
