commit a896ee84d91c41b55e2a224922e35b8e3c672a31
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon Jun 26 14:49:05 2023 -0400

    Revert "[scraper helper] Include support for timeout" (#7953)
    
    Reverts open-telemetry/opentelemetry-collector#7703
    
    Based on discussion in today's SIG meeting, I believe this change should
    be reverted.
    
    My takeaway from the discussion is that the following changes would be
    well received:
    1. Produce a signal describing the duration of the scrape.
    2. Provide an optional timeout setting, which is not constrained by the
    collection interval.
