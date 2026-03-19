commit b698a53dcfaa364cb073ca36423d0be983980bdd
Author: huikang <kangh@us.ibm.com>
Date:   Tue Aug 20 16:53:20 2019 -0400

    Add configuration of log level for logging exporter (#257)
    
    - Problem to solve: Logging exporter outputs received
          traces/metrics to the stdout. The existing implementation
          uses the same log level as the otel process. So if the otel
          process uses info log level, the user can not  see more verbose
          logging message via the logging exporter on the console.
    - Solution: use sperate zap loggers for exporters used in different
          pipelines.
    - Use case: (1) as describe above.(2) Later more log messages
          could be added to the logging_exporter.go in different
          log levels, which could be configurable. (3) Setting
          different log levels for loggers in different pipelines.
    
      process. With this approach, users can configures the log level
      of the logging exporter. In additon, messages in the exporter
      could appear according to the level in the configuration
      file.
    
    Co-Authored-By: Yang Song <songy23@users.noreply.github.com>
    Signed-off-by: Hui Kang <kangh@us.ibm.com>
