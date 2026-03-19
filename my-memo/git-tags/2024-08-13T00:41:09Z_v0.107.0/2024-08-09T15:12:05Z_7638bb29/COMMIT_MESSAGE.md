commit 7638bb298172330241375ed5dc3c50637caa645f
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Aug 9 08:12:05 2024 -0700

    [mdatagen] export ScopeName in internal/metadata package (#10845)
    
    This can be used by components that need to set their scope name
    manually. Will save component owners from having to store a variable,
    which may diverge from the scope name used by the component for emitting
    its own telemetry. There are about a dozen components in contrib that
    could use this today.
    
    Alternatively, I could just update the scope name strings in the
    components manually.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
