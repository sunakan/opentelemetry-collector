commit 8a2a1a58d13b5f492ebab2f40c51fdcb6fc452ce
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu May 23 01:53:34 2024 -0700

    [chore] replace deprecated calls (#10211)
    
    Updating grpc.Dial -> grpc.NewClient, removing grpc.WithBlock as it's
    not recommended
    https://github.com/grpc/grpc-go/blob/master/Documentation/anti-patterns.md#the-wrong-way-grpcdial.
    We may need to add code in the future to wait for state to be connected,
    but in my local tests, there was no flakiness introduced with this
    change.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10194
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
