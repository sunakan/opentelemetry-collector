commit 1ad6912e6cec0c7a81edd231a2a28f11cd2e4994
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Mon Mar 31 12:44:04 2025 -0600

    [chore] Prepare release v1.29.0/v0.123.0 (#12773)
    
    The following commands were run to prepare this release:
    
    make chlog-update VERSION=v1.29.0/v0.123.0
    make prepare-release PREVIOUS_VERSION=1.28.1 RELEASE_CANDIDATE=1.29.0
    MODSET=stable
    make prepare-release PREVIOUS_VERSION=0.122.1 RELEASE_CANDIDATE=0.123.0
    MODSET=beta
