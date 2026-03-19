commit 8825f4331bfccca835f6364ee1c1416458e4ec98
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Nov 17 10:05:21 2025 +0100

    [chore] Use pseudo-versions for internal/testutil (#14167)
    
    #### Description
    New module `internal/testutil` (introduced in #14076) is currently
    imported with version `v0.0.0-00010101000000-000000000000`. This PR
    replaces those imports by a real pseudo-version to unblock update-otel.
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/44276
