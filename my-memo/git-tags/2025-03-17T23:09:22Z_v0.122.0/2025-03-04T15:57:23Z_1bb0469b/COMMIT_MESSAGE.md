commit 1bb0469b1691ee5af2e6f330efe5f1ba56ebd931
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Mar 4 16:57:23 2025 +0100

    [service] Move batchprocessor metrics to normal level and update level guidelines (#12525)
    
    #### Description
    
    This PR:
    - requires "level: normal" before outputting batch processor metrics (in
    addition to one specific metric which was already restricted to "level:
    detailed")
    - clarifies wording in the telemetry level guidelines and documentation,
    and adds said guidelines to the requirements for stable components.
    
    Some rationale for these changes can be found in the tracking issue and
    [this
    comment](https://github.com/open-telemetry/opentelemetry-collector/issues/7890#issuecomment-2684652956).
    
    #### Link to tracking issue
    Resolves #7890
    
    #### To be discussed
    
    Should we add a feature gate for this, in case a user relies on "level:
    basic" outputting batch processor metrics? This feels like a niche use
    case, so considering the "alpha" stability level of these metrics, I
    don't think it's really necessary.
    
    Considering batch processor metrics had already been switched to
    "normal" once (#9767), but were turned back to basic at some later point
    (not sure when), we might also want to add tests to avoid further
    regressions (especially as the handling of telemetry levels is bound to
    change further with #11754).
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
