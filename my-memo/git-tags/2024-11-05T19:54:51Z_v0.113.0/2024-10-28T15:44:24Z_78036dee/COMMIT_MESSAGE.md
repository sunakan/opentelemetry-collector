commit 78036deedea44da43d2d18f4c810d7d22d0ab0d1
Author: VihasMakwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Mon Oct 28 21:14:24 2024 +0530

    [internal/sharedcomponent] extract sharedcomponent into another package (#11542)
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/11442
    
    Also updates `genpdata` command, as the root module doesn't depend on
    `go.opentelemetry.io/collector/pdata` anymore.
