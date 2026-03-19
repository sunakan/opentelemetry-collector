commit bfaf8da9b893a407a679dad878f1f60a8c65eaff
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Thu Mar 13 06:10:55 2025 -0700

    [mdatagen] delete generated_status.go in case it is not required (#12348)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Delete generated_status.go if the component type doesn't require it.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #12346
