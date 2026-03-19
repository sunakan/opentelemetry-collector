commit a70c017046a80725c659d053322923d5bd5d27dc
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Mar 13 07:51:37 2023 -0700

    Replace existing featuregate.FlagValue with a direct apply version (#7356)
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/7042
    
    Uses direct values to/from a given registry. Simplifies usage, defers the "set" logic to the Registry.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
