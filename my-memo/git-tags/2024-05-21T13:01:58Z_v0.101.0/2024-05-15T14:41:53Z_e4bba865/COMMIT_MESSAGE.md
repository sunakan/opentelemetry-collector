commit e4bba86547ae89ed7991e17c51bd52b24204d1f9
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed May 15 16:41:53 2024 +0200

    Add origin field name option to base fields (#10149)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This adds an `originFieldName` option to `sliceField`,
    `messageValueField` and `primitiveField`.
    This option already exists for `primitiveTypedField`, `oneOfField`,
    `oneOfPrimitiveValue` and `oneOfMessageValue`.
    
    #### Link to tracking issue
    
    This is needed for #10109.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    This is unit tested.
    
    cc @mx-psi
