commit 69732f8566292a9b01fb7253f7587f6abd5c9651
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Jul 3 12:21:37 2019 -0400

    Add workaround for data race in TestApplication_StartUnified (#96)
    
    Added a Sleep to work around a data race bug in Jaeger
    (https://github.com/jaegertracing/jaeger/pull/1625) caused
    by stopping immediately after starting.
    
    Without this Sleep we were observing this bug on our side:
    https://github.com/open-telemetry/opentelemetry-service/issues/43
    The Sleep ensures that Jaeger Start() is fully completed before
    we call Jaeger Stop().
    
    TODO: Jaeger bug is already fixed, remove this once we update Jaeger
    to latest version.
    
    Testing done: make test
