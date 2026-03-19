commit f70a4b158d81f0737a3cf19341f4df97f9aa7d11
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Jan 22 17:22:04 2025 +0100

    [chore] Reword component stability doc (#12161)
    
    #### Description
    
    This PR slightly changes the wording of the "Stability levels and
    versioning" doc (`docs/component-stability.md`), which I found a bit
    confusing, in order to:
    - Emphasize the important fact that stability levels for a component are
    defined _per signal_. At the moment this is only alluded to at the
    beginning and assumed in the last section. Moreover, things like the
    "Unmaintained" level may give the impression that stability levels
    always apply to an entire component.
    - More cleanly separate the part about behavior changes from the part
    about API changes in the "Versioning" section.
    
    This should not change the content or interpretation of the document.
