commit 2efdb289156de63bfab239a05fd17dd8740fe349
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Oct 5 12:19:56 2020 -0400

    Revert "Support set flag for component configs (#1640)" (#1905)
    
    This reverts commit 450fd93a6e597d6bf1c0abc871a027d6f26b117b to ensure
    empty objects as component config work.
    
    Temporarily fixes https://github.com/open-telemetry/opentelemetry-collector/issues/1897
