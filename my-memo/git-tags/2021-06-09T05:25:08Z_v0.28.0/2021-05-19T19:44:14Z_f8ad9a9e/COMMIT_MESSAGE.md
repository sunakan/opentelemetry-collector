commit f8ad9a9e6cfd31386de793b510e826b6c6897068
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed May 19 12:44:14 2021 -0700

    Add initial implementation of pdatagrcp (#3231)
    
    * Add initial implementation of pdatagrcp
    
    This is needed because if we split pdata, we will nolonger be able to depend on the InternalRep or generated proto classes (raw, grpc).
    
    The pdatagrcp will eventually be public once we stabilize the API.
    
    The API in the pdatagrcp package is inspired from the grpc generated classes and redirects all calls to the generated classes. Some simple renames:
    * TraceService[Client|Server] -> Traces[Client|Server]
    * MetricsService[Client|Server] -> Metrics[Client|Server]
    * LogsService[Client|Server] -> Logs[Client|Server]
    
    Other changes:
    * Replace usages of grpc generated classes in otlpexporter to excercise this new package.
    * Left some TODOs for the moment until this package is used more to determine the right API.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add details for the TODOs left
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
