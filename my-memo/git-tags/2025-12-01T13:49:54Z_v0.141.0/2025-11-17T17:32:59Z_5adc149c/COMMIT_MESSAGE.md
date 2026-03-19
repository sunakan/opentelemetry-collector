commit 5adc149caf6786c808e3a6e0835e74200c880af4
Author: Mike Terhar <miketerhar@honeycomb.io>
Date:   Mon Nov 17 12:32:59 2025 -0500

    Allow Content-Encoding to be unset when `CompressionAlgorithms: []string{}` (#14132)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    When a receiver uses the empty array for CompessionAlgorithm, it tells
    the middleware to pass any compressed body through to the receiver. This
    works fine for any body that has a `Conent-Encoding` header set, but
    when that header is missing, an empty string, or `Identity`, it will
    return a 400 response to the client without passing it along to the
    receiver.
    
    This change bypasses the error when Content-Encoding is unset, empty, or
    Identity.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #14131 and
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/44010
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Added some test cases to ensure the missing content-encoding doesn't
    error out. The test fails with the original code and passes with the
    minimal change in the `compression.go` file.
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Andrew Wilkins <axwalk@gmail.com>
