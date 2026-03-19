commit 58370e5b6c87fb737c7fdcd48d9df1580918cdeb
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Mar 24 13:51:26 2025 -0700

    Avoid using go embedded messages in Config (#12718)
    
    This PR:
    * Helps with
    https://github.com/open-telemetry/opentelemetry-collector/issues/12709,
    to avoid the situation where we need to add Unmarshal for a struct and
    if used as embedded will not work.
    * Helps with avoiding name conflicts between variables. Will allow for
    example to have a "Timeout" member in both QueueConfig and ClientConfig,
    even though that was a valid YAML config since `QueueConfig` is under
    "seding_queue".
    * This is a breaking change only if devs are created manually the OTLP
    configs which should be very rare, and unfortunately this is hard to do
    using deprecation steps.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
