commit b4bc9b035f35935e1b36388cbae86b18638223c7
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed May 5 16:51:56 2021 -0400

    Increase TestIdleMode memory limit (#3105)
    
    We are running close to the limit and sometimes fail on CI: https://github.com/open-telemetry/opentelemetry-collector/pull/3073/checks?check_run_id=2494206292
    
    This should avoid spurious failures.
