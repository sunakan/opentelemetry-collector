commit 81bc641f26c0a528f6367b9dd09aeb69a58c8578
Author: dsevr <41191801+dsevr@users.noreply.github.com>
Date:   Thu Feb 5 20:52:16 2026 +0200

    mdatagen: avoid panic when run without arguments (#14506)
    
    Running mdatagen without arguments panics due to missing arg validation.
    
    #### Expected behavior
    Error: accepts 1 arg(s), received 0
    
    #### Actual behavior
    panic: runtime error: index out of range [0] with length 0
    
    #### Steps to reproduce
    1. cd cmd/mdatagen
    2. Run ./mdatagen with no arguments.
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
