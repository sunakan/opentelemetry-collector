commit daf2fc71ac6559b46e860e3459b204f9bfefd788
Author: Christoph Neuroth <christoph.neuroth@gmail.com>
Date:   Fri May 22 15:02:56 2020 +0200

    Add missing checkInterval to k8s deployment config (#1000)
    
    As is, the example k8s agent fails to deploy, going into a CrashLoopBackoff:
    
    ```
    {"level":"info","ts":1589972770.1904275,"caller":"builder/exporters_builder.go:95","msg":"Exporter started.","component_kind":"exporter","component_type":"otlp","component_name":"otlp"}
    Error: cannot setup pipelines: cannot build pipelines: error creating processor "memory_limiter" in pipeline "traces": checkInterval must be greater than zero
    2020/05/20 11:06:10 Application run finished with error: cannot setup pipelines: cannot build pipelines: error creating processor "memory_limiter" in pipeline "traces": checkInterval must be greater than zero
    ```
    
    Testing:
    I created a completely empty minikube and tried to apply k8s.yml from master. With this change, the agent becomes ready.
    
    Documentation
    None - caveat: as I couldn't find existing documentation for checkInterval and am just playing around right now, I don' really know if 5s is a sensible value for this.
