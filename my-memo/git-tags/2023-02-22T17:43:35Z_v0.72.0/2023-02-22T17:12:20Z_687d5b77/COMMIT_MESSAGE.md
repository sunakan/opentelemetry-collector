commit 687d5b77926f55d2f8e20eddd3f184f5434dc5c3
Author: OpenTelemetry Bot <107717825+opentelemetrybot@users.noreply.github.com>
Date:   Wed Feb 22 09:12:20 2023 -0800

    [chore] Prepare release 0.72.0/1.0.0-rc6 (#7228)
    
    The following commands were run to prepare this release:
    
        make chlog-update VERSION=v0.72.0/v1.0.0-rc6
        make prepare-release GH=none PREVIOUS_VERSION=1.0.0-rc5 RELEASE_CANDIDATE=1.0.0-rc6 MODSET=stable
        make prepare-release GH=none PREVIOUS_VERSION=0.71.0 RELEASE_CANDIDATE=0.72.0 MODSET=beta
    
    Fixes #7229 #7230
