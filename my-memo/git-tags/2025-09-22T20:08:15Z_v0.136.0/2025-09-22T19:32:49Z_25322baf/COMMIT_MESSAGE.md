commit 25322baf28c45a75aa6331b34b2e34b29286f588
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Sep 22 21:32:49 2025 +0200

    [chore] Fix merge freeze CI, attempt 3 (#13880)
    
    #### Description
    
    Based on [this debug
    log](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/17922024987/job/50959147505),
    we can now tell that the payload passed to the merge freeze job in the
    merge queue CI for otelbot PRs has `author.name = "otelbot[bot]"` and
    `author.email = "197425009+otelbot[bot]@users.noreply.github.com"`.
    
    That email is extremely surprising considering [the patch output for
    otelbot's
    commits](https://github.com/open-telemetry/opentelemetry-collector/commit/8e24523e66c3acfeb18dd3086f7f198f3953bae5.patch)
    has almost the same email, but without the `[bot]` suffix...
    
    This PR reverts back to a name-based check for simplicity, and removes
    the debug log. The result is very similar to #13516, but checking
    against the correct name.
    
    #### Link to tracking issue
    Fixes #13789
