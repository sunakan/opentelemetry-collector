commit 1f0365cbdd2f4be0bcb3f8ca2e0e61fb07540f8f
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Feb 5 20:13:45 2025 +0100

    [extension] Remove Settings.ModuleInfo and move to service.Host hidden method (#12296)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Moves `extension.Settings.ModuleInfo` to a `service.Host.GetModuleInfo`
    method.
    
    This field probably fits better on `extension.Settings` or even in
    `component.BuildInfo`, but since its contents are a bit in flux per
    discussions like #12283, I would like to move it here to not stabilize
    it alongside the rest of `extension`.
    
    The field is not used in any public code on Github, so I think it won't
    have a huge impact to remove it in one go, happy to do this in two steps
    if preferred.
    
    One relevant difference is that this information is no longer available
    at extension build time, but rather after the `Start` method is called.
    Another relevant difference is that this is now available for all
    component kinds, not just extensions. This could be worked around (we
    could pass a different host depending on the component kind) but I don't
    see the use right now.
    
    #### Link to tracking issue
    Updates #12283
