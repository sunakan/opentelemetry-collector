commit cc0a999045e70e96483904a5014a11ae1c56141b
Author: Jaana Dogan <jbd@amazon.com>
Date:   Fri Nov 20 09:44:27 2020 -0800

    Remove the confusing package-level variable (#2152)
    
    This is unncessarily a package level variable and at the same time, the name is confusing. It should be called "empty" instead of dummy. But no need to have it as a package-level variable, hence this change removes it.
