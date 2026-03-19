commit 1c96225b6445082d106e622bae928e21971a444c
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Jul 24 14:18:54 2024 -0700

    [confmap] Fix expansion of escaped environment variables (#10716)
    
    This change fixes the issue where environment variables escaped with $$
    are expanded. The collector now converts `$${ENV_VAR}` to `${ENV_VAR}`
    and `$$ENV_VAR` to `$ENV_VAR` without further expansion (or the
    expansion failure in case of `$ENV_VAR`).
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10713
