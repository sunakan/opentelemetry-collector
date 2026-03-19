commit 87abc21d822adcb11982fefa990436477bfd2b67
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu May 26 15:41:11 2022 -0400

    Allow specifying Collector's own Resource in the config (#5402)
    
    Resolves https://github.com/open-telemetry/opentelemetry-collector/issues/5398
    
    This adds a sub-section in the `service.telemetry` config section where any
    Resource attributes can be specified.
    
    For example we can have the following in the config:
    
    service:
      telemetry:
        resource:
          service.instance.id: 01G3EN4NW306AFVGQT5ZYC0GEK
          service.namespace: onlineshop
          deployment.environment: production
