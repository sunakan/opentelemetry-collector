commit 22b9a57b1670f77c3d149085396ef6b9dc5b2704
Author: Dino Oliva <dinooliva@users.noreply.github.com>
Date:   Wed Aug 7 07:05:07 2019 -0700

    Migrate updates to Prometheus receiver from opencensus-service (#208)
    
    * Migrate updates to Prometheus receiver from opencensus-service
    
    * Remove unnecessary configuration for adjusting metrics
    
    * Update exporters README (#210)
    
    Remove stale content, put in place a simple skeleton, and put information for the Zipkin exporter.
    
    * Added Jaeger gRPC receiver (#197)
    
    * Added Jaeger gRPC receiver
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Addressed first review round
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Changes based on the feedback from the second review
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Fixed import order, check for same ip:port on endpoints
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Reverted the port-check
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    * Fix README - remove broken links and commands (#211)
    
    Signed-off-by: Hui Kang <kangh@us.ibm.com>
    
    * Refactor opencensus exporter to make it easily extensible (#212)
    
    Refactored oc exporter code to make it easier to import in derived
    builds without copying all the code.
    
    Example derived exporter: https://github.com/owais/example-derived-oc-exporter
    
    - Moved internal/compression to root
    - Split opencensusexporter factory's `CreateTraceExporter` method into
      - `OCAgentOptions` and `CreateOCAgent`
    
    * Use sha256 instead of md5 in node batcher processor (#202)
    
    MD5 is insecure cryptographic hash functions, and are therefore unsuitable for security applications.
    
    * Add goimports check and fix import order for all files (#209)
    
    * Add goimports check and fix import order for all files
    
    Updates #155.
    
    * Try specifying a version for goimports
    
    * Show the diff instead of files and fix import
    
    * Fix default in Makefile
    
    * Add factory and update config for tail sampling processor (#200)
    
    * Add factory and update config for tail sampling processor
    
    Updates #146
    
    * Move to package processor
    
    * Remove an unnecessary check
    
    * Move CreateDefaultConfig to factory and add unit tests
    
    * Fix test failure
    
    * Remove commented code
    
    * Add misspell check and fix all typos (#214)
    
    * Add misspell check and fix all typos
    
    Updates #155.
    
    * Format
    
    * Include yaml files
    
    * Move tail sampling config to its own package and remove stale configs (#217)
    
    Follow up of #200. Second step of #146.
    
    * Add Observability Vision document (#188)
    
    * Add Observability Vision document
    
    This is a guidance document that developers can consult with when
    working on improving own observability of OpenTelemetry Service.
    
    * PR fixes
    
    * Add Zipkin exporter factory (#207)
    
    * Add Zipkin exporter factory
    
    Add the Zipkin exporter configuration factory using the new configuration format. This does not bring many of the settings from the old configuration since they won't be used. In a sub-sequent PR the code of the exporter itself will be changed.
    
    * PR Feedback: add 1 test plus some comments
    
    * Rename endpoint to http-url and related field
    
    * Fix goimports issue
    
    * Remove TODO commented code
    
    Replaced the TODO commented code with an issue.
    
    * Rename the field used to specify destination
    
    * Update README to address reviewer comments.
    
    * Update module dependencies and import order for metricfamily
    
    * Improve OC Receiver Documentation (#203)
    
    * First round of receiver and opencensus receiver documentation.
    
    * Undo go mod/sum changes
    
    * Address initial set of comments.
    
    * Address next set of comments.
    
    * Address next set of comments.
    
    * Fix use of server instead of receiver in comment and explain settings can be mix and matched.
    
    * Merged master and fixed mispell error caugh with new tools
    
    * Add static check and fix all errors (#218)
    
    * Add static check
    
    Fixes #155.
    
    * Fix most staticcheck errors
    
    * More fixes
    
    * Fix id_batcher
    
    * Rename exporterhelp parameter (#220)
    
    The paramater was named exportFormat but it actually used as the exporter name.
    
    * Fix build: lower casing error message (#224)
    
    * Add jaeger grpc exporter (#219)
    
    * Add Jaeger gRPC exporter
    
    Adds a Jaeger gRPC exporter.
    
    * Update exporters/README.md
    
    * Fixes on the exporter/README.md
    
    * Add doc.go with package description.
    
    * Fix import order on config_test.go
    
    * Migrate updates to Prometheus receiver from opencensus-service
    
    * Remove unnecessary configuration for adjusting metrics
    
    * Update README to address reviewer comments.
    
    * Update module dependencies and import order for metricfamily
    
    * Fix goimports
    
    * Fix staticcheck issues
