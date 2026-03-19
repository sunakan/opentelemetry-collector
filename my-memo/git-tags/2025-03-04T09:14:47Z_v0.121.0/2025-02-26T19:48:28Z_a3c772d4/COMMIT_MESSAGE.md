commit a3c772d49f8c407ead3c712deff95d8694de0021
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Feb 26 11:48:28 2025 -0800

    [chore] [exporterhelper/batcher] Ignore deprecated fields if new set (#12502)
    
    In the batcher config, ignore deprecated `min_size_items` and
    `max_size_items` fields if new `min_size` and `max_size` are set.
    
    A follow-up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/12486.
