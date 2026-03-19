commit c43ecad7e48522ec1bf4716a975bc240b2e433ce
Author: Andrew Toscano <97750217+noctchillin@users.noreply.github.com>
Date:   Tue Apr 8 06:03:07 2025 -0500

    confighttp: Ensure that auth errors use provided error handler (#12714)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    OTLP/HTTP receiver does not encode authentication errors into a `Status`
    object, and as such not expose a developer facing error message in the
    `Status.mesage` field. -
    https://opentelemetry.io/docs/specs/otlp/#failures-1
    
    Resolves this issue by handling authentication errors with the same
    error handler provided to the Server.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12666
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Unit tests for handling errors with and without a server error handler
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
