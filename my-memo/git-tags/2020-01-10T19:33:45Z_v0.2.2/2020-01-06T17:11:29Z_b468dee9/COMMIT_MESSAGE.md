commit b468dee9e0a514db4dab82f6cf7554be539533c9
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jan 6 12:11:29 2020 -0500

    Add CPU profile saving to E2E tests (#489)
    
    Collector was already able to collect own CPU profiles.
    This change enables saving CPU profile to a file after each E2E test.
    This helps to analyze performance of the Collector in E2E tests.
    
    Resolves https://github.com/open-telemetry/opentelemetry-collector/issues/481
