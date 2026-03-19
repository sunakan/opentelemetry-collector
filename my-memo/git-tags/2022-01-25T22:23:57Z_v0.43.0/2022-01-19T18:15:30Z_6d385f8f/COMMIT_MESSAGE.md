commit 6d385f8f92032c356106988c1b90fd7fb53e66f6
Author: Prakhar Suryawanshi <33250688+Sprakhar97@users.noreply.github.com>
Date:   Wed Jan 19 23:45:30 2022 +0530

    configHttp: Ability to pass telemetry settings to http instrument library that instruments the otlphttp exporter (#4699)
    
    * fix-4449 Added telemetry settings to otlphttp exporter
    
    * fix-4449 configHttp: Updated ToClient with telemetry settings and instrumented the otlphttp exporter
    Added ability to pass telemetry settings to http exporter and configure otelhttp instrumentation library.
    Wrapped the http exporter transport using otelhttp instrumentation library.
    
    * fix-4449 updated changelog
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
