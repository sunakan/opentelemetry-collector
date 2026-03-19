commit 2493960db92be2304e1bd8e5d7234bd2cde8d18a
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue Jan 6 18:19:52 2026 +0100

    Remove deprecated noopTracerProvider feature gate (#14374)
    
    This feature gate has been deprecated since 0.132.0, which is way more
    than the 2 releases we require for deprecated feature flags.
    
    See #13521
