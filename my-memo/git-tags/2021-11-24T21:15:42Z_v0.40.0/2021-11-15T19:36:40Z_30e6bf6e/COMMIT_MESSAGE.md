commit 30e6bf6eeee544e869411bf50c57447323d259d9
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 15 11:36:40 2021 -0800

    Remove Set[Map|Slice]Val. They were added in a PR focused on other change (#4430)
    
    Unfortunately during the code review of the https://github.com/open-telemetry/opentelemetry-collector/pull/3980 I missed this because was kind of "hiden" in a PR that was supposed to just do a rename of NULL -> Empty.
    This is yet another example why collector maintainers MUST always ask for small focused PRs and never allow other different changes.
    
    The reason to not allow this is because user need to either "CopyTo" or "MoveTo", right now the way how Set was implemented would share the same memory and is not thread safe since changes in the copied value will be reflected in the destination.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
