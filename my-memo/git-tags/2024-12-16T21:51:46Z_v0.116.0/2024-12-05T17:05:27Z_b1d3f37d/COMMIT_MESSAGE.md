commit b1d3f37d519ee571baeab20899d6679749342da8
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Dec 5 18:05:27 2024 +0100

    Enable but skip `changelog` workflow in merge queue (#11810)
    
    #### Description
    
    In a previous PR (#11797), I removed the `merge_group` trigger from the
    `changelog` and `api-compatibility` CI checks, which don't work properly
    in merge queues. However, `changelog` is a required check for the `main`
    branch, which means Github will wait for the check status to be reported
    even though the job never started, eventually resulting in a timeout and
    rejection from the queue. ([see this note in the
    docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/troubleshooting-required-status-checks#status-checks-with-github-actions-and-a-merge-queue))
    
    This PR adds the `merge_group` trigger back in `changelog`, but uses an
    `if` to skip it outside of pull requests (which should count as success
    for the purposes of the merge queue).
