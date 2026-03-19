commit 6566e78b4bb8e0cceec21abec91731611e3ca31a
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jun 26 02:20:09 2019 +0530

    Introduce optional memory ballast (#45)
    
    This change add an optional memory ballast to help with ease GC pressure
    in high thoughput scenarios
    
    - Added new CLI flag called `--mem-ballast-size-mib` which represents
    the size of memory ballast to use in MiB. Omitting the value or setting
    it to zero does not set the ballast.
    
    - Updated process telemetry code to account for the ballast and report
    memory usage statistics after subtracting the ballast size. I'm not sure
    if this makes sense in every scenario. If not, we can add another flag
    to disable the behaviour. Another option is to add one more metric that
    just exports the memory ballast size as a static number and then let
    metric consumers to adjust the numbers.
    
    https://blog.twitch.tv/go-memory-ballast-how-i-learnt-to-stop-worrying-and-love-the-heap-26c2462549a2
    
    https://github.com/golang/go/issues/23044
