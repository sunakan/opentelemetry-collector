commit 686dcf346e6b0f8029c5daa76a5e752c0965e389
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu May 23 16:24:54 2019 -0400

    Add global factory registry for receivers, exporters and processors (#556)
    
    The registry allows to register and retrieve factories for receivers, exporters and
    processors by type. The factories will be used during configuration loading and during
    pipeline building (only configuration related code is currently present, the rest
    will be added gradually).
    
    Testing done: automated tests.
