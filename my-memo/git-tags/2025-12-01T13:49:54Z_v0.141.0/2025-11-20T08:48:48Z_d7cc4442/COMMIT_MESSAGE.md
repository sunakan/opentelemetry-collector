commit d7cc44420eb120800cb3f3302592ec0419a4b97b
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Nov 20 00:48:48 2025 -0800

    Revert "[chore] remove unnecessary imports" (#14191)
    
    Reverts open-telemetry/opentelemetry-collector#14185
    
    Still causes issues in contrib:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/actions/runs/19513634485/job/55859558441#step:6:1342
