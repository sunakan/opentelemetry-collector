commit 38e1bad609bfd733ed119a55a9fefa003bd8f70d
Author: Ankit Patel <8731662+ankitpatel96@users.noreply.github.com>
Date:   Fri May 24 02:13:56 2024 -0700

    Restrict characters in environment variable names (#10183)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Restricts Environment Variable names according to the
    [restrictions](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/configuration/file-configuration.md#environment-variable-substitution)
    published by the OpenTelemetry Configuration Working Group. Changes both
    the expand converter and the env provider. Defines one regex to be used
    for both of these.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9531
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Unit tests
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
