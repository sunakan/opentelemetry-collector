commit ae6050450e94f255cc72c003a3866fa642202252
Author: Dmitry Ivanov <ethercrow@gmail.com>
Date:   Fri Aug 1 22:44:53 2025 +0200

    [confighttp] Reuse zstd reader objects (#13396)
    
    #### Description
    Allocating zstd reader objects on every incoming requests leads to a lot
    of byte buffers being allocated and collected. The compression library
    recommends reusing readers to avoid these allocations.
    
    
    #### Link to tracking issue
    Fixes #11824
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
