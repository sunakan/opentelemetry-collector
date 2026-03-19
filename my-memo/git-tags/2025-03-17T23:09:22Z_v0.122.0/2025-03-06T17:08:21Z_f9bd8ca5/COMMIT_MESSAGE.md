commit f9bd8ca5d132f19bcf6654f4328651450393e267
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Mar 6 18:08:21 2025 +0100

    [extensionauthtest] Remove extensionauthtest.MockClient (#12567)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Removes `extensionauthtest.MockClient`. Users can use either
    `extensionauth.NewClient` or use `extensionauthtest.NewErrorClient` as a
    convenience method to replicate the `MustError` field behavior.
    
    Doing a Github search, I am unable to find usages of this outside of
    contrib, which I dealt with on PR
    open-telemetry/opentelemetry-collector-contrib/pull/38401, thus I
    believe this should be fine to remove in one go.
