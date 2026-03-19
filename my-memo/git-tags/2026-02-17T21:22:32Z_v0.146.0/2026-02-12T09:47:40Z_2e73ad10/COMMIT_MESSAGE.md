commit 2e73ad10f157bfc99eb6d85616da396251def25c
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Feb 12 04:47:40 2026 -0500

    [otelcol] Gate process signals behind build tags (#14558)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Puts all references to the `syscall` package behind build tags, which I
    believe is generally considered a best practice in Go.
    
    In particular, this makes `SIGHUP` and `SIGTERM` no-ops Wasm in JS,
    which [stubs out
    `SIGTERM`](https://github.com/golang/go/blob/a59593313d75d9e7c99da0cff0e12555597621ec/src/syscall/syscall_js.go#L101)
    but not `SIGHUP`, causing build failures.
    
    Note that Windows doesn't use Posix process signals, but [Go creates
    invented
    Signals](https://github.com/golang/go/blob/d3ddc4854429185e6e06ca1f7628bb790404abb5/src/syscall/types_windows.go#L60)
    that are used to support this functionality.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Works toward #14542.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    The tests now refer to the same build tag-guarded constants, but
    otherwise don't change, as it's hard to test the absence of
    functionality.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
