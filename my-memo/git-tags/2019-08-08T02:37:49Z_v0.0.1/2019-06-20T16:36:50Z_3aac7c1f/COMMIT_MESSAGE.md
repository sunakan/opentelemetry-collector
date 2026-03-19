commit 3aac7c1fe2bf55a8d518ff342e10055adecc4f37
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jun 20 12:36:50 2019 -0400

    Build receivers based on new configuration (#25)
    
    - Build receivers and plug them into pipelines.
    
    - Added tests to verify that single pipeline and multiple pipeline (fan out)
      per receiver work correctly.
    
    - Disable -v flag in go test to reduce unnecessary noise in output, we have
      too many tests to use -v flag. Errors are still properly printed. This makes
      finding the cause of test failures easier.
    
    - Add logging to various application startup steps.
    
    - Changed logging from %q to %s in multiple places to make it more human readable
      when output in json format.
    
    Testing done:
    
    1. make && all unit tests pass.
    
    2. make otelsvc and produce otelsvc_linux executable.
    
    3. Manually verify that otelsvc_linux runs and correctly forwards trace data
       received via jaeger receiver and exported via opencensus exporter.
    
       This is the first successful run of unified OpenTelemetry Service.
