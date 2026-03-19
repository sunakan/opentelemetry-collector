commit cef6ce5cb0785e9dfd2e36d93bb423518f4263b9
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sun Dec 15 17:45:13 2024 -0800

    [chore] Update versions of the new experimental modules (#11897)
    
    This needs to be done again because the previously updated versions
    point to a commit with an invalid module version, which makes `make
    update-otel` fail on the contrib side:
    
    ```
    go: downloading go.opentelemetry.io/collector/consumer/xconsumer v0.0.0-20241214150434-e9bc4bde924e
    go: go.opentelemetry.io/collector/consumer/xconsumer@v0.115.1-0.20241213185000-4593ba7de234: unrecognized import path "go.opentelemetry.io/collector/consumer/xconsumer": empty VCS list in GOVCS: "*:"
    make[3]: *** [tidy] Error 1
    make[2]: *** [receiver/activedirectorydsreceiver] Error 2
    make[1]: *** [gotidy] Error 2
    make: *** [update-otel] Error 2
    ```
    
    cc @songy23
