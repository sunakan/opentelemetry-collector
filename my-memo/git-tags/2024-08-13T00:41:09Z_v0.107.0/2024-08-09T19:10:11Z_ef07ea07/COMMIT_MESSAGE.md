commit ef07ea073562c4eb4d63a9032e84a802d8424fe2
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Aug 9 12:10:11 2024 -0700

    [mdatagen] move ScopeName to generated_status (#10848)
    
    This will make it available to most components, as the
    generated_telemetry is only generated for components that have internal
    telemetry configured. Arguably the scope name should be moved to its own
    file, but i'd rather not add yet another file if possible.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
