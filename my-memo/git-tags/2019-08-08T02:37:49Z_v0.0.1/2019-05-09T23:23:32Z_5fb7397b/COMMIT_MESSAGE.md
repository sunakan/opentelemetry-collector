commit 5fb7397be108abd9badad96d47f9676b9f33b516
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu May 9 16:23:32 2019 -0700

    Add span attribute key mapping support (#9) (#536)
    
    * Add span attribute key mapping support (#9)
    
    Many libraries and services didn't implement consistent naming for their span attribute keys, this feature provides the capability of making the attribute keys consistent for different libraries and services without the need to change their code.
    
    * PR Feedback
    
    * PR feedback
    
    * type on test
    
    Fix nil return and avoid lookup if overwritting
    
    Better syntax to avoid lookup when overwritting
    
    Support same replacement for multiple keys
    
    * Simplify handling of attribute related config
