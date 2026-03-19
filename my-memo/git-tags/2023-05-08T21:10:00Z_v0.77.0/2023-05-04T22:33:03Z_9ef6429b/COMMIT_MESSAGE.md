commit 9ef6429bd0fa1eb101deed570d5177c0ecd31030
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Thu May 4 16:33:03 2023 -0600

    [featuregate] Finalizing purpose of ToVersion. (#7626)
    
    Finalizes the purpose of `toVersion`.  `toVersion` will represent the version where the feature gate is completely removed.  Setting a `stable` gate to `true` will result in a warning log.  Setting a `stable` gate to `false` will result in an error.
    
    Closes https://github.com/open-telemetry/opentelemetry-collector/issues/7621
