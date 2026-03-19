commit 0bf2da63f11716ac89055e321066f6c72d26e240
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue May 20 17:18:48 2025 +0200

    [receiver/otlpreceiver] Use wrapper type for URL paths (#13046)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Simplifies unmarshaling code by using a type wrapper for the URL paths.
    
    This is technically a breaking change (since you now have to cast from
    the type to string), but I would argue it is a minor one
