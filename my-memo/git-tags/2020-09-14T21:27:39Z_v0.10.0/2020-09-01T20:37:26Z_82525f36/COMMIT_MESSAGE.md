commit 82525f36f6b367897ff2b54f44ec4c956bb7b9f9
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Sep 1 16:37:26 2020 -0400

    Move timestamp functions to pdata package (#1709)
    
    This is necessary to prevent circular package dependency that
    can arise when we need to hide certain pdata functions in the
    internal package in a commit that is coming soon in
    https://github.com/open-telemetry/opentelemetry-collector/pull/1703
