commit 8bfb96dd841c827b306481a1d4eadeb10e326913
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue Jan 6 18:34:24 2026 +0100

    Remove deprecated high cardinality metrics feature gate (#14373)
    
    This feature gate has been deprecated since 0.132.0, which is way more
    than the 2 releases we require for deprecated feature flags.
    
    See #13538
