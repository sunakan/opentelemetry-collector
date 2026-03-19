commit 7e7a966e8cc0117194449e79343d9729e24a4d41
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Tue Mar 3 12:36:56 2026 -0800

    [chore] Add Windows arm64 to support tier 3 (#14627)
    
    Windows core and contrib are being built and tested on Windows ARM since
    September 2025, it should have at least the same level of support as
    Windows 386. The executables are being added to the releases via
    https://github.com/open-telemetry/opentelemetry-collector-releases/pull/1383
