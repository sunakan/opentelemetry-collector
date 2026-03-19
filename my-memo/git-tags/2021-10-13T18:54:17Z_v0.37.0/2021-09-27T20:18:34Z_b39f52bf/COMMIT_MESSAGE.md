commit b39f52bfe67b03d0ff7b3601d3b48bf1ce41c8ac
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Sep 27 13:18:34 2021 -0700

    Deprecate consumererror.Combine, use go.uber.org/multierr (#4123)
    
    The functionality was added before the support for errors.Is/As was added to golang,
    right now this is no longer needed and generic packages like go.uber.org/multierr are more user friendly.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
