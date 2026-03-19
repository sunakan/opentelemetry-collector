commit 795f727e05eb29120690d9c5bc0fc5d1c60a9252
Author: OpenTelemetry Bot <107717825+opentelemetrybot@users.noreply.github.com>
Date:   Tue Jan 7 16:54:22 2025 -0600

    [chore] Prepare release v1.23.0/v0.117.0 (#12043)
    
    The following commands were run to prepare this release:
    - make chlog-update VERSION=v1.23.0/v0.117.0
    - make prepare-release PREVIOUS_VERSION=1[.]22[.]0
    RELEASE_CANDIDATE=1.23.0 MODSET=stable
    - make prepare-release PREVIOUS_VERSION=0[.]116[.]0
    RELEASE_CANDIDATE=0.117.0 MODSET=beta
    
    This PR also includes fix
    https://github.com/open-telemetry/opentelemetry-collector/pull/12051 to
    reduce back-and-forths
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
