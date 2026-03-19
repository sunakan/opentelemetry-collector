commit c8f9563f1b12470cb74f2f98c226faaffbcb38ac
Author: Ankit Patel <8731662+ankitpatel96@users.noreply.github.com>
Date:   Thu May 9 16:38:16 2024 -0400

    MemoryLimiterProcessor - switch to  MustNewID instead of zero value ID (#10128)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    In an upcoming PR, I change Type to be an interface. This means the zero
    value of Type will be nil - which will cause this test to fail.
    Initializing ID instead of relying on the zero value fixes this
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9429
    
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    In preparation for
    https://github.com/open-telemetry/opentelemetry-collector/pull/10069
