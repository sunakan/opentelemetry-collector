commit 8c4cfe543ca1a078c9986305e4f7322e06d33c3f
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Mon Oct 7 15:48:30 2024 +0200

    [chore] docs: Revert "update cmd/builder documentation for docker image" (#11379)
    
    Reverts open-telemetry/opentelemetry-collector#11234
    
    The PR to publish container images for builder
    https://github.com/open-telemetry/opentelemetry-collector-releases/pull/671
    has not been merged yet (neither has the one adding "Update version"
    workflow
    https://github.com/open-telemetry/opentelemetry-collector-releases/pull/684).
    We should only publish these docs after the images are published.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11347
