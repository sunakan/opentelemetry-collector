commit 7b878cfe7e62816fb5bd7a85929039fd8ba7adda
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Feb 2 14:46:22 2025 -0800

    Change queue to embed the consumers (#12242)
    
    This PR will facilitate:
    1. The implementation of the disabled queue, can be a simpler call into
    the "batcher" with the done callback setup and block until that is
    called.
    2. The implementation of the disabled batcher becomes trivial, and does
    not suffer from the limitation that only one reader of the queue is
    setup. Even though the request was sent async by multiple go-routines,
    still one reader which may have been a bottleneck.
    
    In a separate PR will try to get rid of readableQueue. Initial version
    of the PR had "read" as a private func on Queue, but the "unused" linter
    complain that `boundedMemoryQueue.read` was unused.
    
    Technically this is a breaking change, but Queue is an experimental API
    that we allow changes.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
