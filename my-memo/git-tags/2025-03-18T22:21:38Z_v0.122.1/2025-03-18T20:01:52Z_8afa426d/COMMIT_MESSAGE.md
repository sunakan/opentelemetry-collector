commit 8afa426d180bc376f1a3779ecf3812b0b0e424b5
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Mar 18 16:01:52 2025 -0400

    [confmap] Fix handling for slices with default values (#12662)
    
    #### Description
    
    https://github.com/open-telemetry/opentelemetry-collector/pull/11882
    introduced issues with handling slices which have default values. It's
    likely that the removal of `zeroSliceHookFunc` is causing problems with
    overriding default lists.
