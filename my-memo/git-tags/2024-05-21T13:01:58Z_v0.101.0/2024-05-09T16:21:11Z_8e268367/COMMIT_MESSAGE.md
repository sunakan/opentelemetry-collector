commit 8e268367c9b699a09b0a9374fee529e1648ec78c
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu May 9 12:21:11 2024 -0400

    [chore][cmd/builder] Test for unreleased versions (#10030)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Add a test to help prevent our replace statements from going out of date
    and causing situations like
    https://github.com/open-telemetry/opentelemetry-collector/issues/10014.
    This is also probably just a decent test case to have since it's a
    syntactically valid but nonexistent version.
    
    ---------
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
