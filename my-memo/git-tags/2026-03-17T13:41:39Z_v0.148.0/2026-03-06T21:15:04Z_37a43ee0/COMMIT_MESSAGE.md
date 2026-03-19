commit 37a43ee07ed744e09fc9368a3d792b809ef191c7
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Mar 6 13:15:04 2026 -0800

    [chore] Move chloggen config staleness check out of changelog job (#14726)
    
    The `generate-chloggen-components` check was living in the `changelog`
    job, which is skipped for PRs with the `Skip Changelog` label or
    `[chore]` prefix. This meant auto-generated PRs could merge with a stale
    `.chloggen/config.yaml`, causing the next unrelated PR to fail the
    check.
    
    Move the check to the `checks` job in `build-and-test.yml`, which runs
    unconditionally on all PRs and merge queue entries.
