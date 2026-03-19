commit 28242fab81001f5a68e8986e4c617e319dadec86
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu May 16 13:15:27 2024 -0700

    [mdatagen] add support for async instruments (#10159)
    
    This PR adds the ability to configure asynchronous (observable)
    instruments via mdatagen. This requires providing a mechanism to set
    options to pass in the callbacks that will be called at the time of the
    observation.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
