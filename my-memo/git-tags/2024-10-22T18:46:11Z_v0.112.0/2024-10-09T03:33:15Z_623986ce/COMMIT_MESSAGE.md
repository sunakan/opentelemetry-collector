commit 623986cee74ee75ce04a63464bfd966c73fc797a
Author: Dov Murik <dov.murik@gmail.com>
Date:   Wed Oct 9 06:33:15 2024 +0300

    docs: Fix metadata/headers example on confighttp README [chore] (#11317)
    
    #### Description
    
    Documentation fix: The example for using attributesprocessor to add the
    value of an incoming HTTP header missed the `metadata.` prefix and the
    lowercasing of the header name.
    
    Fix the example in config/confighttp/README.md.
