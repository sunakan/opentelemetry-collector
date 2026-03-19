commit 44075291dc9d1a6665fb795aca6520506d2d4c69
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Feb 12 09:55:22 2024 -0500

    [confmap] Split converters and providers into their own modules (#9461)
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/9460
    
    Required for
    https://github.com/open-telemetry/opentelemetry-collector/issues/4759
    
    I made this a single PR to reduce the review load, but I can break the
    changes into multiple PRs if we would like.
