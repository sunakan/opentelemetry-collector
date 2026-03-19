commit 8acfa141bbf41d47df4b11e80fbc97279ee869a6
Author: Damien Mathieu <42@dmathieu.com>
Date:   Fri Jul 18 16:57:42 2025 +0200

    Introduce SetString on profiles (#13225)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This is part of
    https://github.com/open-telemetry/opentelemetry-collector/issues/13106
    It introduces a new `SetString` method, which allows setting string
    values into the string table, or retrieving their existing index.
    
    This doesn't work like the other methods, as string indices aren't
    always stored on the same attribute. So we can't assign the ID directly.
