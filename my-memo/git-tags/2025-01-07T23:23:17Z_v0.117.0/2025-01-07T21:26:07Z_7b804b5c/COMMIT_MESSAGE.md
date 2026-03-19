commit 7b804b5ce7331a0af33e40147fe2dc9dd6465007
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Jan 7 13:26:07 2025 -0800

    [chore] Fix check merge freeze job (#12045)
    
    To unblock
    https://github.com/open-telemetry/opentelemetry-collector/pull/12043,
    which is always rejected on the queue.
    
    Apparently, `github.event.merge_group.head_commit.author.name` is
    `OpenTelemetry Bot` not `opentelemetrybot`. See
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/12658978490/job/35277057933.
    
    Since `github.event.merge_group.head_commit.author` doesn't have `login`
    field, I've switched the condition to use the `name` field on both
    `github.event.pull_request.user` and
    `github.event.merge_group.head_commit.author`
