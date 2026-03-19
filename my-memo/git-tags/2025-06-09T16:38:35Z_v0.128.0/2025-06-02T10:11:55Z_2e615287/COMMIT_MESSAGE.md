commit 2e615287a4e1ed3cf92fe1b54707426d3dc3f8a5
Author: Christos Markou <chrismarkou92@gmail.com>
Date:   Mon Jun 2 13:11:55 2025 +0300

    [chore] Update contributing docs with SemConv compatibility guideline (#13101)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds a guideline about how metrics'/attributes' addition should
    take place in (some) coordination with the Semantic Conventions project.
    This addition does not introduce a hard requirement for now but rather
    suggests how such coordination with Semantic Conventions can be
    achieved.
    
    If this gets merged I plan to extend Contrib's guidelines as well (i.e.
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/84f1030339f705e3bd2b59c11a2dccb7fc29141e/CONTRIBUTING.md#adding-metrics-to-existing-receivers)
    to link back to this guideline.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/13076
    
    /cc @open-telemetry/collector-contrib-approvers
    @open-telemetry/collector-approvers
    
    Note: It's still to be defined how Semantic Conventions will affect
    components' stability as described at
    https://github.com/open-telemetry/opentelemetry-collector/issues/11878,
    however prior to the stability concern this PR suggests to update our
    contribution guidelines to cover for this treating it as a "soft"
    requirement already.
    
    ---------
    
    Signed-off-by: ChrsMark <chrismarkou92@gmail.com>
