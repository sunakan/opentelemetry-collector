commit 8e96749a34bbcd930944b6297afa7a520ed96984
Author: xu0o0 <hq.xu0o0@gmail.com>
Date:   Thu Nov 9 03:48:56 2023 +0800

    [chore] [forwardconnector] use defined struct for config (#8814)
    
    **Description:**
    `cmd/configschema` currently doesn't work with anonymous config struct.
    (see
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/26990#issuecomment-1797797681)
    
    This PR refactors `forwardconnector` to use a defined struct for config.
