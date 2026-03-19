commit c746d8bf8c0d194373ae8832faa88dc9d7efc24e
Author: Curtis Robert <crobert@splunk.com>
Date:   Sat Feb 3 09:35:54 2024 -0800

    [chore][config/configgrpc] Enable goleak check (#9217)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    Enables goleak to run on the configgrpc package. Requires ignoring the
    opencensus-go leak.
    
    A few tests required an additional client connection close command to
    exit the client go routine. Additional information can be found
    [here](https://pkg.go.dev/google.golang.org/grpc#DialContext) in the
    explanation for the method grpc.DialContext, specifically this comment:
    ```
    Users should call ClientConn.Close to terminate all the pending operations after this function returns.
    ```
    configgrpc's method
    [`ToClientConn`](https://github.com/open-telemetry/opentelemetry-collector/blob/36730599ae4fb2ffc05d8e6e8a42e0bb0880703f/config/configgrpc/configgrpc.go#L178)
    is directly calling the `grpc.DialContext` method referenced.
    
    **Link to tracking Issue:** <Issue number if applicable>
    #9165
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    Added goleak check is passing
