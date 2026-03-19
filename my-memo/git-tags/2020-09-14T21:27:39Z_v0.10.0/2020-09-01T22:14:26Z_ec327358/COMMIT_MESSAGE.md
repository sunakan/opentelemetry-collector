commit ec327358d6340342ee345869685f2bb00e8e2b91
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Sep 1 15:14:26 2020 -0700

    Move timestamp functions to pdata package (#1709) (#1706)
    
    This is necessary to prevent circular package dependency that
    can arise when we need to hide certain pdata functions in the
    internal package in a commit that is coming soon in
    https://github.com/open-telemetry/opentelemetry-collector/pull/1703
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
