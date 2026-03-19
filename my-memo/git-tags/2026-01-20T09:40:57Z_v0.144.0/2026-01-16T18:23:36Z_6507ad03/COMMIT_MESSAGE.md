commit 6507ad031dc7acaf16f58bebb692645ce622287c
Author: Damien Mathieu <42@dmathieu.com>
Date:   Fri Jan 16 19:23:36 2026 +0100

    Use component.StabilityLevel for entity stability (#14425)
    
    Right now, the entity is using `string` for its stability field, which
    prevents validating that the value is within the enum.
    This changes it to a `component.StabilityLevel`.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
