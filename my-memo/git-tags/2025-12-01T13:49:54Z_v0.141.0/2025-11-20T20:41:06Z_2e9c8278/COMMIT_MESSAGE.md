commit 2e9c82787618ea7da3fada176abb45b5a30714bf
Author: Mike Terhar <mike@terhar.com>
Date:   Thu Nov 20 15:41:06 2025 -0500

    [chore] switch tests back to Bytes sizer (#14176)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Some tests broke on Main a while ago and it looks like they changed from
    a sizer looking at `bytes` to `items`. This commit changes it back.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    The `items` sizer test fails sometimes due to a timing situation that
    doesn't happen when looking at `bytes`.
    
    <!--Describe the documentation added.-->
