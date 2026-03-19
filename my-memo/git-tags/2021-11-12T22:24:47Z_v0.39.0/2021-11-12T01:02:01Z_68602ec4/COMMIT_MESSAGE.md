commit 68602ec49d454595d51cfc7cd261e0013da627ea
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Nov 11 20:02:01 2021 -0500

    Refactor configmapprovider.Provider and Retrieved interfaces (#4403)
    
    This uses a callback instead of a blocking WaitForUpdate function
    to notify about config changes.
    
    This simplifies the usage of the Provider, especially when watching
    for changes is required.
    
    A follow up PR will add watching capabilities to existing Provider
    implementations.
