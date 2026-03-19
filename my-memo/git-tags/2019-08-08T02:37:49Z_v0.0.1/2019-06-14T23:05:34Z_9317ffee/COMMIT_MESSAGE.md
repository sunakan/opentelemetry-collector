commit 9317ffee74b061982a648a2cb220f6844edcb99e
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Jun 14 19:05:34 2019 -0400

    Build pipeline processors based on new configuration (#576)
    
    - Build pipeline processors and plug them into exporters.
    - Added tests to verify that single exporter and multiple exporter pipelines
      (fan out) work correctly.
    - Minor cleanup in exporters_builder.go
    - Fixed opencensus receiver TestCreateReceiver to find available port for
      testing (instead of fixed port which would fail if already listened).
