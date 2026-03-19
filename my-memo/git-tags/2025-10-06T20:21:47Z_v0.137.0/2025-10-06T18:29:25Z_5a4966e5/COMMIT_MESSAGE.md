commit 5a4966e5e334dba03b6fc63df382739671248653
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Mon Oct 6 11:29:25 2025 -0700

    [chore] Fix check-merge-freeze check (#13934)
    
    To unblock
    https://github.com/open-telemetry/opentelemetry-collector/pull/13933
    
    The logic seems incorrect. The check should run when
    
    ```
    (!startsWith(title, '[chore] Prepare release')) || (user != 'otelbot[bot]')
    
    or
    
    !(startsWith(title, '[chore] Prepare release')) && (user == 'otelbot[bot]'))
    ```
    
    instead of
    ```
    (!startsWith(title, '[chore] Prepare release')) || (user == 'otelbot[bot]')
    ```
