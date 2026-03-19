commit ce1afbd9daf73328ef4c18659c72e9eea38885be
Author: Curtis Robert <crobert@splunk.com>
Date:   Thu May 9 10:16:54 2024 -0700

    [mdatagen] Run tests when skipping goleak (#10126)
    
    #### Description
    Tests are currently not being run when `goleak` checks are skipped. This
    is because `TestMain` is called in the generated file, and needs to call
    `m.Run()` to properly run the package's tests. This call was missing.
    
    #### Link to tracking issue
    Fixes #10125
    
    #### Testing
    There aren't any `goleak` checks currently being skipped in core from
    the generated package tests, but there are quite a few in `contrib`.
    This will fix the skipped tests in `contrib`.
