commit c95a4205d4ca1ee33716a01c3ca153dbed87ef34
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Oct 13 14:44:18 2020 -0400

    Begin implementation of OTLP/HTTP exporter (#1928)
    
    This adds the initial config and factory boilerplate and corresponding tests.
    
    Contributes to: https://github.com/open-telemetry/opentelemetry-collector/issues/882
    
    Testing: config and factory tests unit tests added.
    
    Documentation: Added README.
    
    The next PR will add the exporting logic.
