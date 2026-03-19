commit cb2f08b7a76391c60d7b10b102c7434115866df1
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Jun 28 14:48:10 2019 -0400

    Enable E2E test running on Travis CI (#71)
    
    - We want Travis build to fail if E2E tests fail.
    - Added colorizing of test output for easier diagnostics.
    - Renamed "perf-test" makefile target to "e2e-test" (since these
      are not just perf tests but also other types of end-to-end tests).
    - Fix TestGeneratorAndBackend to make sure it waits properly for
      the generator to produce results.
    
    Issue: https://github.com/open-telemetry/opentelemetry-service/issues/68
