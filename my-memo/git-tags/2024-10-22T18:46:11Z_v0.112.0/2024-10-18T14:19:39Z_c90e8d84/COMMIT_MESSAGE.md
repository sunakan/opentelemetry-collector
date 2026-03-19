commit c90e8d8423a30f581ed5ed4fffb6e7c858fb4ded
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Oct 18 16:19:39 2024 +0200

    [chore] Remove deprecated documentation (#11483)
    
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Removes pages that were moved to opentelemetry.io. These pages now live
    at:
    
    -
    https://opentelemetry.io/docs/collector/internal-telemetry/#use-internal-telemetry-to-monitor-the-collector
    - https://opentelemetry.io/docs/collector/troubleshooting/
    
    Neither of the md docs in opentelemetry-collector are among the top 10
    most visited pages according to Github traffic stats (we don't have
    visibility into individual pages, only the top 10)
