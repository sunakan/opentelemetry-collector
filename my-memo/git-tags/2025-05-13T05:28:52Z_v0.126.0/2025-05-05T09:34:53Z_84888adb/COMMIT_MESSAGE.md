commit 84888adb37867bf55afa70e6578bbe64606e6686
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Mon May 5 15:04:53 2025 +0530

    [confmap] - add a more targeted version of append-merging strategy (#12926)
    
    Follow-up of
    https://github.com/open-telemetry/opentelemetry-collector/pull/12097/
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    ### Description
    
    Ideally, users want to merge lists in pipelines only. In this PR, I'm
    adding support for merging following components:
    1. extensions
    2. receivers
    3. exporters
    
    We make use of glob-like pattern to match the path because there can be
    multiple pipelines configured. Inspired by @evan-bradley's
    [idea](https://github.com/open-telemetry/opentelemetry-collector/pull/12097/#discussion_r1918620008).
    
    I'm leaving `processors` out of this list because we make an ordering
    guarantee.
    
    #### _**Future plan:**_
    Once this PR gets merged, it would make it easier for us to decide upon
    the command line flags to make this option configurable over the RFC.
    Right now, `patterns` is hardcoded to include above mentioned
    components, but we can easily make it configurable after making some
    tweaks.
    
    <!-- Issue number if applicable -->
    ### Link to tracking issue
    Relates
    https://github.com/open-telemetry/opentelemetry-collector/issues/8754
    
    <!--Describe what testing was performed and which tests were added.-->
    ### Testing
    
    Expanded the existing test cases
    
    <!--Describe the documentation added.-->
    #### Documentation
