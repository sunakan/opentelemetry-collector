commit b288271b77c1dff413ede045e3366acb69d63369
Author: Roger Coll <rogercoll@protonmail.com>
Date:   Thu Aug 7 11:02:36 2025 +0200

    [componentstatus] Add attributes map to Event (#13348)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Adds a `pcommon.Map` to the Event struct to represent additional
    metadata from the producer. These attributes can be interpreted by
    consumers, such as `Watcher` implementations like the healthcheckv2
    extension.
    
    Since the long-term goal is to replace Event with a pdata.Log
    (OpenTelemetry Event), introducing attributes serves as an intermediary
    step. This allows for experimentation with subcomponents and more
    fine-grained events without immediately committing to a full migration.
    
    It extends the `NewEvent` constructor in a backward compatible approach
    with a new optional `...EventBuilderOption` parameter. The
    EventBuilderOption is a sealed interface which is implemented with new
    methods like `WithAttributes`.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    https://github.com/open-telemetry/opentelemetry-collector/issues/13210
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Constructor unit tests, calls to generate Events from the internal graph
    have not been modified.
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
