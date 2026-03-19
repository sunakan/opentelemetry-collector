commit 794a2b689bd9f2f095a08639033abb45a61eafa9
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Mar 23 11:19:27 2020 -0400

    Add OTLP exporter (#657)
    
    - Implemented exporter using some code borrowed from OpenTelemetry Go SDK
    - Added minimal unit tests. More tests are needed. Will add E2E tests when
      OTLP receiver is ready.
    
    TODO: implement metric exporting. This can be done after OC to OTLP translation
    for metrics is implemented.
    
    Contributes to issue: https://github.com/open-telemetry/opentelemetry-collector/issues/479
