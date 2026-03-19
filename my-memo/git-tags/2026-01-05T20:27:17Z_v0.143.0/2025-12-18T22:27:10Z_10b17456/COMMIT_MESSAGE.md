commit 10b17456edc46d07c58cc97c744592bbcead8be0
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Dec 18 23:27:10 2025 +0100

    Don't duplicate stack in profiles testdata (#14310)
    
    When generating profiles testdata, we currently create a new stack for
    each profile.
    For each profile type, all stacks are the same though.
    
    The dictionary expects unique entries though. And having duplicates
    causes issues when manipulating data (such as when we want to merge).
