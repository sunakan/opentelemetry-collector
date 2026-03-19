commit 1ebb9b20cfa54b65ed2de8b2d9643d488c7e9c87
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Thu Jul 10 10:26:26 2025 -0700

    [chore] [exporterhelper] Revert moving StorageID to configpoptional (#13376)
    
    Partially reverts
    https://github.com/open-telemetry/opentelemetry-collector/pull/13345
    
    `configoptional` cannot unmarshal a scalar preset value yet. See
    https://github.com/open-telemetry/opentelemetry-collector-contrib/actions/runs/16199280314/job/45733970146?pr=41234
