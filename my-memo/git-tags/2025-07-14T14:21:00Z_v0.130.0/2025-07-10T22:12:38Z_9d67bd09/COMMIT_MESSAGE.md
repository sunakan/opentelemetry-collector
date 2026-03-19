commit 9d67bd09d4bcd8aafd153c3332ed166218792185
Author: Damien Mathieu <42@dmathieu.com>
Date:   Fri Jul 11 00:12:38 2025 +0200

    Introduce NewProfiles and deprecate NewProfilesExporter in xexporterhelper (#13372)
    
    #### Description
    
    `NewProfilesExporter` was never renamed to `NewProfiles`, when every
    other signal removed the `Exporter` part of its new method in
    https://github.com/open-telemetry/opentelemetry-collector/pull/11370.
