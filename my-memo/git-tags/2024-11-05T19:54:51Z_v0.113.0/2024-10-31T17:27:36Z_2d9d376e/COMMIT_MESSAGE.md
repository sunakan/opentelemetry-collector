commit 2d9d376ee26920d02fdb232e184dc3b1f064fc4b
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Oct 31 10:27:36 2024 -0700

    [service] fix bug with inconsistent resources (#11578)
    
    The tracer and logger provider were instantiating different resources
    objects that didn't have a `service.instance.id` attribute. This change
    fixes that by instantiating the SDK in the service and passing it to the
    factory via the telemetry.Settings struct.
    
    This also removes the duplicate code to instantiate the SDK multiple
    times, which will be useful when we move to instantiating MeterProvider
    via the config SDK. This bug is blocking the change to bump up the
    dependency on the config package.
    
    There are a few alternatives that were considered:
    1. could set the resource's service.instance.id on the config object
    instead. this seemed messy as it would be editing the config struct and
    the instantiation of the SDK would remain duplicated.
    2. update the factory to pass in a resource object option, i didn't want
    to update the NewFactory func.
    3. update the CreateLogger, CreateTracerProvider to receive either a
    resource or sdk parameter, both of those seemed incorrect as well.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
