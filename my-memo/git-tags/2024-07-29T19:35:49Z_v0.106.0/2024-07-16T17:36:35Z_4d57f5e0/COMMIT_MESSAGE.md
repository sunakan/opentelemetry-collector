commit 4d57f5e0b8342804e070114846dedb8195f032d9
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Jul 16 10:36:35 2024 -0700

    [mdatagen] Remove WithAttributes from the telemetry builder constructor (#10608)
    
    Attribute sets for async instruments now can be set as options to
    callback setters and async instruments initializers. This allows each
    async instrument to have its own attribute set.
    
    Unblocks
    https://github.com/open-telemetry/opentelemetry-collector/pull/10593
