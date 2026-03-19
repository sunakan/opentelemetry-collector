commit fc4c13d3c2822bec39fa9d9658836d1a020c6844
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Mar 20 15:28:45 2024 -0600

    [configgrpc] Remove deprecated func, add ToServer with context (#9787)
    
    **Description:**
    Removes deprecated `ToServer`.
    Deprecate `ToServerContext`
    Add new `ToServer` with `context.Context`.
    
    **Link to tracking Issue:** Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9490
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
