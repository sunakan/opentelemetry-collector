commit 445960b82fb4f4a979bfa5e6ce88aa754d22b92d
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Nov 22 18:28:16 2023 +0100

    Clarify our stance re: release candidates (#8975)
    
    Clarifies our stance regarding RC releases, inspired by
    https://github.com/open-telemetry/opentelemetry-collector/pull/8935#discussion_r1397887303.
    In a nutshell:
    
    - Stabilization criteria have to be met for at least two minor version
    releases before moving to the stable module.
    - We treat these two (or more) minor releases as release candidates and
    do not release under the `-rc` release family.
    - After these releases, we move directly to the `1.x` release family.
    
    **Link to tracking Issue:** Fixes #8063 (together with the upcoming 1.0
    release for pdata and featuregate)
    
    cc @braydonk
    
    ---------
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
