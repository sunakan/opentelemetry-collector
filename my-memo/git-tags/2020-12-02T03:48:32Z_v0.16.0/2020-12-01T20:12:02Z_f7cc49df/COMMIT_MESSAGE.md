commit f7cc49df056f99e3c6cc1f598dbd4fa9fc440a10
Author: Trask Stalnaker <trask.stalnaker@gmail.com>
Date:   Tue Dec 1 12:12:02 2020 -0800

    Remove outdated restriction from docs (#2233)
    
    Documentation for processors states:
    
    > Only match_type=strict is allowed if "attributes" are specified.
    
    but this restriction was removed in https://github.com/open-telemetry/opentelemetry-collector/pull/928/files#diff-4548db28578c2ac90e2b277f24654cfa24fd0f99d854e0fcc4b50871c0b529caL166-R198, and so this doc appears to be outdated.
    
    **Testing:**
    
    I did not test this, but others (including @tigrannajaryan) have: https://github.com/open-telemetry/opentelemetry-collector/issues/1935#issuecomment-717259673
    
    [btw, in case you're curious my interest in this, we are implementing a subset of this behavior at the java agent layer, as we aren't using otel collector. So far only in our vendor distro, though happy to move it to otel javaagent if/when others are interested.]
