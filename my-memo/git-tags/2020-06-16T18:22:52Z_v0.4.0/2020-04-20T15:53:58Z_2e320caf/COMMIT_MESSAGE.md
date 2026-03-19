commit 2e320caf62a3bc64257b34dc54be72858fa9ef39
Author: Tom Elliott <tom.w.elliott@gmail.com>
Date:   Mon Apr 20 11:53:58 2020 -0400

    k8s example: Correct keepalive parameter naming (#845)
    
    Instructions at https://opentelemetry.io/docs/collector/about/ were causing an error starting otel-collector related to naming.
    
    Verified that this change resulted in a successful deployment with `kubectl apply`.
