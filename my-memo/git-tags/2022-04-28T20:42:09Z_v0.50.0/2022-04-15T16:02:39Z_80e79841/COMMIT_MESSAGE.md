commit 80e798415e6c1797d42b47d9285a610a2e7b9cae
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Apr 15 09:02:39 2022 -0700

    Deprecate configunmarshaler package, move it to internal (#5151)
    
    Folllowup:
    
    * When the deprecated funcs/types are removed the internal package can be moved to service/internal.
    * Part of https://github.com/open-telemetry/opentelemetry-collector/pull/4936 do not offer ability to configure ConfigUnmarshaler.
    
    Motivation:
    
    * This package is removed because with the latest addition of the `service.ConfigProvider` the usecase to change the unmarshaled config.Config can be achieved by wrapping/implementing that interface, so no clear use-case for this. In the future we can expose it again if we have good reasons.
    * During the review of another PR, this was mentioned as something some approvers/maintainers were concerned about what to do with this package. See https://github.com/open-telemetry/opentelemetry-collector/pull/4608#pullrequestreview-890442136
    Updates https://github.com/open-telemetry/opentelemetry-collector/issues/4605
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
