commit b5093abf6774f7de44b06d1dbc8934184dc209f0
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Oct 22 11:59:07 2020 -0700

    Improve Clone performance by 5-7x (#1998)
    
    * Improve Clone performance by 5-7x
    
    Before:
    ```
    BenchmarkLogsClone-16               2022            526826 ns/op
    BenchmarkMetricsClone-16              92          11530154 ns/op
    BenchmarkTracesClone-16              237           4822875 ns/op
    ```
    
    After:
    ```
    BenchmarkLogsClone-16              17643             70484 ns/op
    BenchmarkMetricsClone-16             516           2226758 ns/op
    BenchmarkTracesClone-16             1286            853794 ns/op
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix nil panic in Attributes copy
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
