commit 8990be35990b9833ad98d9bc254667560b7a9951
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Fri Mar 15 10:05:12 2024 -0700

    Respect telemetry configuration when running as a Windows service (#9726)
    
    **Description:**
    Fixes #5300
    
    With this change the service telemetry section is respected by the
    collector when running as a Windows service. Log lever can be used to
    control the verbosity of the events logged and the logger can be
    redirected to a file by specifying an output path on the service
    telemetry config. By default `stdout` and `stderr` are redirected to the
    event log when running as a Windows service to keep the current
    behavior.
    
    The code change itself was made with a focus of not breaking the public
    APIs and not reading the config more than once. That said it is probably
    something to be refactored when the public APIs can be touched again.
    
    **Link to tracking Issue:**
    #5300
    
    **Testing:**
    The test is an integration test that depends on the actual executable.
    It checks for event publication and file output.
