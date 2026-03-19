commit 127daef347e33e31ae0a660c77b49e824b770f36
Author: Bjoern Walk <95341282+bwalk-at-ibm@users.noreply.github.com>
Date:   Tue Sep 12 23:49:24 2023 +0200

    Add support for linux/s390x architecture (#8214)
    
    The `s390x` CPU architecture is the base for IBM zSeries (aka mainframe)
    systems. It is beneficial for users of this platform to have a supported
    way to install pre-compiled binaries for the OpenTelemetry collector in
    a Linux environment. This issue and associated pull requests will enable
    the building of all relevant binary artifacts for `linux/s390x` as part
    of the regular CI pipeline.
    
    IBM has performed tests internally to ensure successful build (via
    cross-compilation) and runtime (on native platform) integrity of the
    OpenTelemetry collector (core and contrib) via the unit test suites and
    specific use-cases.
    
    For more information and discussion please refer to the initial feature
    request issue (open-telemetry/opentelemetry-collector-releases#378).
    
    Resolves: #8213
    
    Signed-off-by: Bjoern Walk <bwalk@linux.ibm.com>
