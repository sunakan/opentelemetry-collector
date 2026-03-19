commit 9a21643a5499dbe97615de37c2333173ed9dfc6c
Author: Antoine Toulme <antoine@toulme.name>
Date:   Wed May 29 02:07:52 2024 -0700

    [config] Deprecate component.UnmarshalConfig (#9750)
    
    **Description:**
    This PR removes the top level if/else in `component.UnmarshalConfig`,
    handling recursive state in the confmap.Conf object instead.
    This PR deprecates `component.UnmarshalConfig` in favor of calling
    directly `Unmarshal` on the confmap.Conf object.
    
    **Link to tracking Issue:**
    Fixes #7102
    Fixes #7101
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
