commit 53528d4bfc7c716855f19a5c24deb0eb27ae128e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 5 11:58:04 2025 -0700

    [chore] Move CopyOrig funcs all to internal (#13570)
    
    Main idea is to have all funcs that work on "origin" in internal, so
    that we simplify access to them (see field access to this). Also will
    remove duplicate generated code like copying the slice of KeyValue
    (followup PR).
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
