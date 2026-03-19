commit 759118be9a80a400d5a0b725df962858e7c804a5
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Sat Jan 3 11:53:46 2026 -0800

    [chore] Enable Renovate updates for indirect Go dependencies (#14345)
    
    The `tidy-dependencies.yml` workflow currently runs `go mod tidy` after
    Renovate PRs to update indirect dependencies that Renovate doesn't
    handle. This change tests if Renovate can manage indirect dependencies,
    potentially eliminating the need for the workflow.
    
    ###  Next Steps
      - Monitor Renovate PRs over the next few weeks
    - If the tidy-dependencies workflow stops making commits, we'll disable
    it
