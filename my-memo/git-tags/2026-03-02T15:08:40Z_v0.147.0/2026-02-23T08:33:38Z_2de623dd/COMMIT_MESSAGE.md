commit 2de623dd6f8daa979915424b4b2720f3b7f1bbed
Author: dsevr <41191801+dsevr@users.noreply.github.com>
Date:   Mon Feb 23 10:33:38 2026 +0200

    otelcol: reject extra positional args for featuregate (#14554)
    
    Passing multiple positional arguments to the featuregate command is
    silently accepted and extra arguments are ignored.
    
    **Actual behavior**
    Command succeeds and ignores additional positional arguments.
    
    **Expected behavior**
    Error: accepts at most 1 arg(s), received 2
    
    **Steps to reproduce (from repo root, using the otelcorecol binary as an
    example):**
     - cd cmd/otelcorecol
     - go build -o otelcorecol .
     - ./otelcorecol featuregate gate1 gate2
    
    This change enforces the documented featuregate [feature-id] contract by
    rejecting extra positional arguments at the Cobra validation layer,
    consistent with other otelcol subcommands.
