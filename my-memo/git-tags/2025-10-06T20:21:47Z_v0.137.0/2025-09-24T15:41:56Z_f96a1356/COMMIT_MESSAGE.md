commit f96a1356abc7a4d71ff8495d3c299e94e24f1f50
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Sep 24 17:41:56 2025 +0200

    Revert "feat: migrate to tools directive" (#13899)
    
    Reverts open-telemetry/opentelemetry-collector#13844 since it caused
    #13897
    
    cc @dnaeon (no worries, we can accept your PR again once we are sure it
    won't cause further breakage)
