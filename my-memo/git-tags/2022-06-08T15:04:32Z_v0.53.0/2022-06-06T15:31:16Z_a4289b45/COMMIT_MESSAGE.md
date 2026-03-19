commit a4289b45ff420757199d61e96d7e9a6e332e061f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jun 6 08:31:16 2022 -0700

    [builder]: Use testing.TB.TempDir instead of manually create and cleanup (#5469)
    
    * Fix TestGenerateAndCompileDefault on windows
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/5403
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update main_test.go
