commit 74485a5ca9de48da62095fbceb766f4c52f3585e
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Sat Feb 3 09:33:43 2024 -0800

    [chore][receiver/otlp] ReportFatalError -> ReportStatus (#9331)
    
    **Description:**
    Remove use of the deprecated method `ReportFatalError` in favor of using
    `ReportStatus`.
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
