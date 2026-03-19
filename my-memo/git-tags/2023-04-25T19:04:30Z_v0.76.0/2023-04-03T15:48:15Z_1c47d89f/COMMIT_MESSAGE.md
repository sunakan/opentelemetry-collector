commit 1c47d89fc38df12133adc78c4ea7bc4d3374e6b6
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Apr 3 11:48:15 2023 -0400

    Clarify non-permanent error handling in receiver/doc.go (#7476)
    
    See discussion here https://github.com/open-telemetry/opentelemetry-collector/pull/7459#discussion_r1156077884
    
    It is expected that the receivers should always retry, not just that they may retry.
