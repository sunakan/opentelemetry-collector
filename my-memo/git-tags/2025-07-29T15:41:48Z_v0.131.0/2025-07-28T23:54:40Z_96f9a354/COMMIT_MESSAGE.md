commit 96f9a354d232cbf5f5f8837ca8e1f4a19606d82a
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jul 28 16:54:40 2025 -0700

    [chore] Prepare release v1.37.0/v0.131.0 (#13510)
    
    The following commands were run to prepare this release:
    
    make chlog-update VERSION=v1.37.0/v0.131.0
    make prepare-release PREVIOUS_VERSION=1[.]36[.]1
    RELEASE_CANDIDATE=1.37.0 MODSET=stable
    make prepare-release PREVIOUS_VERSION=0[.]130[.]1
    RELEASE_CANDIDATE=0.131.0 MODSET=beta
    
    ---------
    
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
