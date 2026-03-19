commit 362db71e3e250ad1d465fec262006f26f27ff132
Author: Mikkel Kamstrup Erlandsen <mikkel.kamstrup@gmail.com>
Date:   Mon Feb 24 19:37:55 2025 +0100

    Preallocate a map of the right size in pcommon Map.AsRaw() (#12406)
    
    #### Description
    We are seeing pcommon/Map.AsRaw() show up in the memory profiles.
    
    This PR ensure we pre-allocate a map[string]any of the expected size,
    instead of just an empty map.
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
