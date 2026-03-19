commit b8cd0ed6926e3a76b77700ff4a4fb5fe36c7614d
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Nov 10 14:36:24 2020 -0500

    Use "console" encoding for own logs (#2109)
    
    Resolves https://github.com/open-telemetry/opentelemetry-collector/issues/2106
    
    Make logs more human-readable locally: switch from "json" to "console" encoding
    even when "prod" logging configuration is selected (but keep Production zap
    Logger configuration for "prod" mode). This is still fairly well-defined
    format that can be unambiguously parse on the backend if needed.
