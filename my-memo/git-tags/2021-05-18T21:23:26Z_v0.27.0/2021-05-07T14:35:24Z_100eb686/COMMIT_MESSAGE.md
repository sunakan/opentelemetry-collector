commit 100eb6860c21ddea12e9da391b4c4deac11c4208
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Fri May 7 07:35:24 2021 -0700

    Avoid concurrent package tests (#3073)
    
    See https://github.com/open-telemetry/opentelemetry-collector/issues/3064#issuecomment-830351620 for the reasons for this change. This enforces that package tests don't run concurrently: when they run concurrently it is possible to clash on machine-wide resources like ports.
    
    I tried a few variants to see the effects on CI: CircleCI did get noticeable slow GH Actions too but not as much. While it feels "wasteful" the added time for tests that do not use machine-wide resources, avoiding concurrent run of package tests is a more reliable way to run the tests and avoid test bugs like #3064.
    
    The current choice was the fastest on my machine on runs with a clean test cache.
    
    Fixes #3064
