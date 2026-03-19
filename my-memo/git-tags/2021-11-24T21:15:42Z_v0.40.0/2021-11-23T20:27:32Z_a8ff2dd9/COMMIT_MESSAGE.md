commit a8ff2dd98c254538b97348a10c7f270e94991caf
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Nov 23 21:27:32 2021 +0100

    Enable `errcheck` linter (#4462)
    
    * Check or explicitly ignore all errors
    
    * Enable errcheck
    
    * Use `t.Cleanup` instead of `defer`
    
    * Point to issue on `Set` ignored error
