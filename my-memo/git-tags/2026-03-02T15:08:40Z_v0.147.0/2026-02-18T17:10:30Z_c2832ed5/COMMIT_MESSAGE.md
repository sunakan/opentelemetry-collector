commit c2832ed52abd2eaf9e083a72e635c6ec43b3aae4
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Feb 18 18:10:30 2026 +0100

    chore: fix running mdatagen for xpdata (#14578)
    
    The xpdata metadata.yaml is currently invalid, and can't be used to
    generate other code (such as feature flags).
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
