commit 9731ea3281de3c14141c8ccd7fab0d14ee9aac73
Author: Andrzej Stencel <astencel@sumologic.com>
Date:   Tue Apr 16 12:30:15 2024 +0200

    [chore][exporter/debug] refactor code to make independent from Logging exporter (#9922)
    
    This PR is the first part of this draft PR:
    https://github.com/open-telemetry/opentelemetry-collector/pull/9298.
    
    This refactoring is needed to implement [[exporter/debug] change
    behavior of "normal" verbosity to be different from "basic"
    #7806](https://github.com/open-telemetry/opentelemetry-collector/issues/7806).
    I want to change the behavior of the Debug exporter, but leave the
    behavior of the Logging exporter unchanged.
    
    **Link to tracking Issue:**
    
    - https://github.com/open-telemetry/opentelemetry-collector/issues/7806
