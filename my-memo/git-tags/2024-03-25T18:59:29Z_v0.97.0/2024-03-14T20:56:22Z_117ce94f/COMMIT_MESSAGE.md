commit 117ce94f96e4a9d15a72110cf9b3f2c1a3420917
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Thu Mar 14 13:56:22 2024 -0700

    [chore] change the way we unmarshal the config in tests (#9765)
    
    This change is required in preparation of #9750
    
    This removes the call to `component.UnmarshalConfig` in preparation of
    its deprecation, and instead has the `Conf` object unmarshal itself into
    the `Config` struct.
