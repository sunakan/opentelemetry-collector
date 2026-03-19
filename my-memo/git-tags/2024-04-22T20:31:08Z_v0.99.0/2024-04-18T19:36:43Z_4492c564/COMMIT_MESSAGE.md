commit 4492c564cf9db5905ff76bf590ea89663f86561e
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Apr 18 15:36:43 2024 -0400

    [chore] Double Windows unit tests timeout (#9992)
    
    Bump the timeout for the Windows unit tests from 120s to 240s. The tests
    currently are brushing up very close to this limit and are becoming
    flaky as a result.
    
    [Example
    run](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/8739137193/job/23984602883?pr=9516#step:5:19):
    
    ```
     ok     go.opentelemetry.io/collector/cmd/builder/internal/builder      116.086s
    ```
