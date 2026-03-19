commit e2ff1ad644f1ed3832f19d4c1985a6469069a897
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Mar 4 17:31:10 2026 -0800

    [chore] Fix lychee config keys (#14706)
    
    Fixes the CI job
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/22696233513/job/65804104304
    
    The changelog link checker CI started failing after #14676 bumped
    `lycheeverse/lychee-action` from v2.7.0 to v2.8.0, which bundles lychee
    v0.23.0.
    
    lycheeverse/lychee#1906 made unknown TOML keys a hard error instead of
    silently ignoring them. The two keys in `.github/lychee.toml` used
    hyphens (`include-fragments`, `max-retries`), but the actual struct
    field names use underscores (`include_fragments`, `max_retries`).
    
    I'm disabling the options for now to keep the behavior as is. Will try
    to actually introduce the fragments check after that. I assume they
    might fail
