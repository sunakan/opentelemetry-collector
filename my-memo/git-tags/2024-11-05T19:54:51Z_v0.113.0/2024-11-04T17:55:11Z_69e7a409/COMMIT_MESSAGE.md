commit 69e7a409e35715b866bb5ed3079faf665712a6ed
Author: William Dumont <william.dumont@grafana.com>
Date:   Mon Nov 4 18:55:11 2024 +0100

    (batchprocessor): Move single shard batcher creation to the constructor (#11594)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    The single-shard batcher is currently created and started in the start
    function. If the consume function is called before the start function,
    sb.single will be nil and it will panic. I'm not sure if that can happen
    in the Otel collector but it might happen in distributions that have a
    different runtime (such as Alloy - Grafana's distribution).
    
    I think that conceptually, it's better to create the shard in the
    constructor and start it in the start function.
    
    PS: I did not create an entry in the changelog because the initial
    [PR](https://github.com/open-telemetry/opentelemetry-collector/pull/11314)
    for this change didn't but let me know if I should add one.
    
    Credits also to @thampiotr for this fix
