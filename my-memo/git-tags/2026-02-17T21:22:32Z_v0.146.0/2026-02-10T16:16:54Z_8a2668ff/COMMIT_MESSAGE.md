commit 8a2668ff34c7497435e4517cc8d61e182dc9b8fc
Author: Alexandre Lamarre <alexandre.lamarre@suse.com>
Date:   Tue Feb 10 11:16:54 2026 -0500

    fix(cli): components subcommand should return providers and converters in sorted order (#14477)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    `otel components` does not print provider schemes and converter modules
    in a stable order in it's output
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #14476
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Running the subcommand from the built distribution.
    
    ~I opted not to add additional tests to command_components_test.go,
    since stability order for other components was not being unit-tested
    either. Open to adding tests for these cases, let me know!~
    
    added unit tests for the new providers / converters stable output &
    added tests for the existing behaviour for components
    (receivers,processors,exporters,connectors,extensions) that are already
    output in stable order
    <!--Describe the documentation added.-->
    #### Documentation
    
    N/A
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
