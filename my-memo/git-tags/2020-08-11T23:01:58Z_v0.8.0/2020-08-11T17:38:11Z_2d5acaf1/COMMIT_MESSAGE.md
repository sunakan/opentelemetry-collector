commit 2d5acaf11d4d00b604f13642d0b001718b87e438
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Aug 11 13:38:11 2020 -0400

    Fix TestProcessTelemetry on Darwin (#1527)
    
    TestProcessTelemetry/"process/cpu_seconds" was failing
    because this particular metric is not supported  on Darwin.
    
    This commit skips the test on Darwin.
