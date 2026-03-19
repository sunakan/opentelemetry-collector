commit 3d474edc2aff31ed5e22f857d341ac6139064dbf
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Feb 19 02:31:49 2020 +0530

    Add a new `HASH` action to attribute processor (#549)
    
    The new HASH action hashes existing attribute values (using SHA-1) and
    replaces the original value with the hashed ones. This is useful when
    users want to obfuscate some sensitive values but still want to drive
    metrics in the backend based on those values.
