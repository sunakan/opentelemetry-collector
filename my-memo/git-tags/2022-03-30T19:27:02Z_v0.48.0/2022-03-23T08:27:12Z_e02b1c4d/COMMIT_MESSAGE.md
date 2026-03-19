commit e02b1c4de8aecfbce706fb2665e8bb32b0b03246
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Mar 23 10:27:12 2022 +0200

    Move MapProvider to config, split providers in separate packages (#5030)
    
    This PR:
    1. moves the `configmapprovider.Provider` to `config.MapProvider` and related structs.
    2. every provider (env, file, yaml) are split in their own packages to help https://github.com/open-telemetry/opentelemetry-collector/issues/4759.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
