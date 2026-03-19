commit 45c4476273a4c89f074c0b92cd212360d1823d5d
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Jan 2 19:52:36 2026 -0600

    [chore] Add repository check to tidy-dependencies workflow (#14344)
    
    Adds a repository origin check to the `tidy-dependencies.yml` workflow
    condition to ensure it only runs on PRs from the main repository.
