commit 2370481d4f47e04564dfea49a5128a6ccdecb3ca
Author: joseg2 <9097155+joseg2@users.noreply.github.com>
Date:   Fri Jan 19 08:01:44 2024 +1100

    Fixed indentation in YAML for deployment at otel-config.yaml (#9311)
    
    The name/value entry had an incorrect indentation that made the
    documented process fail (Document ref:
    https://opentelemetry.io/docs/collector/installation/)
