commit 7c58e71515d583020b8409f9fa504306d949d7a7
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Sat Dec 9 09:44:55 2023 -0800

    Fix bug where MutatesData would not correctly propogate through connectors (#9053)
    
    This fixes two closely related problems.
    1. While fanoutconsumers do not themselves mutate data, they should
    expose whether or not they are handing data off to consumers which may
    do so. Otherwise, the service cannot correctly determine how to fan out
    after a receiver. e.g. a receiver shared between two pipelines, one of
    which contains an exporter or connector which mutates data.
    2. Connectors can themselves mutate data but we were not taking this
    into account when building the graph.
