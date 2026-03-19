commit 8bea0d372c9965a99dd88d1f5c4c4b7acee9db40
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Nov 7 13:28:59 2023 +0100

    [featuregate] Validate arguments to `Register` (#8766)
    
    **Description:**
    - Validate Gate IDs: ids must be alphanumeric with dots. At a minimum we
    have to disallow `,` to avoid ambiguity in the CLI, but I am being
    intentionally more restrictive here
    - Validate URLs: we check that a valid URL can be built from it using
    the `net/url` stdlib package
    - Validate versions: we check that a valid version is passed to the
    `To/FromVersion` options using hashicorp's libraries and also that the
    implicit version range, when defined, is not empty.
    
    This does not change the public API types, it only adds validation.
    
    Relates to #8220
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Alex Boten <aboten@lightstep.com>
