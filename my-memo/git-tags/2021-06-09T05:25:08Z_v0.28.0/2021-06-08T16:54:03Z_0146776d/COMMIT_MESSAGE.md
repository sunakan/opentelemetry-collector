commit 0146776dd0d535e3541f914cc7113dda5cc828d3
Author: Eunice Kim <eunice98k@gmail.com>
Date:   Tue Jun 8 09:54:03 2021 -0700

    Change grpc to GRPC (#3285)
    
    This PR is one of the 3 PRs working to address the issue: Reviewing and Improving config package.
    Main changes that were made in this PR was to ensure types and function names with `grpc` is consistent throughout. For exported functions and types, changes were made such that `GRPC` is used. As for unexported functions and types, `gRPC` is now used.
    
    Addresses part of #3051
