commit 30708643b9ad0c30424cbf2cab806bf633065ee3
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Tue Jan 6 21:34:35 2026 -0800

    [chore] Disable noisy indirect dependency updates with Renovate (#14391)
    
    Rolling back
    https://github.com/open-telemetry/opentelemetry-collector/pull/14345
    
    Enabling indirect updates does not fully eliminate the need for the
    tidy-dependencies job, but it generates a large number of noisy PRs for
    every indirect dependency.
    
    We can wait for the resolution of
    https://github.com/renovatebot/renovate/issues/12999 and see whether it
    helps instead.
