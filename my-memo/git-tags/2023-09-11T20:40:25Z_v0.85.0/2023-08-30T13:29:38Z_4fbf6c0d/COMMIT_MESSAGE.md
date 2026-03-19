commit 4fbf6c0d9f88d7fa928e063cf4f8e87a2248b15f
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Aug 30 06:29:38 2023 -0700

    [chore] Update the release doc (#8306)
    
    The following changes are applied:
    1. Move the contrib draft PR creation to the first step. This is
    required to be done before the core release, because some changes may be
    needed in the core codebase to resolve possible core/contrib integration
    issues which was the case with the 0.84.0 release.
    2. Add a missing `v` prefix for OTEL_RC_VERSION env var in step 8.
    3. Rotate the schedule
    4. Update 0.55.0 version in the examples to 0.85.0. It was inconsistent
    with using the latest version for the stable module set
    5. Mention CHANGELOG-API in step 7
