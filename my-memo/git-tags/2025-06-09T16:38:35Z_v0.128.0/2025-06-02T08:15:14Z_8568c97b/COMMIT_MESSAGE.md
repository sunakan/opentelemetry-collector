commit 8568c97b0d157a38a559561161065ae5d2779bcc
Author: Damien Mathieu <42@dmathieu.com>
Date:   Mon Jun 2 10:15:14 2025 +0200

    Upgrade proto to 1.7.0 (#13075)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This upgrades protobuf/pdata to
    [v1.7.0](https://github.com/open-telemetry/opentelemetry-proto/releases/tag/v1.7.0).
    
    Note: due to the move of the lookup tables, merging profiles required
    more non-trivial work.
    In order to facilitate this review, merging is therefore currently
    disabled for profiles. We will bring it back in a separate PR.
    
    Note: this needs its contrib counterpart before it can be moved out of
    draft.
