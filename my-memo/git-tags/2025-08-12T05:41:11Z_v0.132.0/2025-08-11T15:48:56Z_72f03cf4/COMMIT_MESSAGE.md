commit 72f03cf4c0194701371ba988136848e7309d8098
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Aug 11 08:48:56 2025 -0700

    Generate Logs/Traces/Metrics and ExportResponse (#13597)
    
    This removes lots of hand written JSON encoding code, and will help when
    start using generated proto size/marshal/unmarshal.
    
    This also adds tests for all previously hand written funcs.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
