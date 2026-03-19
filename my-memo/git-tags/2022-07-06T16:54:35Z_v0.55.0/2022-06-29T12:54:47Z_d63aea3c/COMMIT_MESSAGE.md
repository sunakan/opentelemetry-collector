commit d63aea3c5ba214020b7602f4d46d168c7c0c6b92
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Jun 29 15:54:47 2022 +0300

    Fix initialization of the MetricProvider (#5571)
    
    The problem was that the MetricProvider is initialized into the "service.telemetry.MetricProvider" after components were created. This change was not a trivial change because the process telemetry initialization requires the ballast size, which is available after the extensions are initialized, because of that I split the initialization of the MetricProvider/oc.Registry from the initialization of the process telemetry.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
