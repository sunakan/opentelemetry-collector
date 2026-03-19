commit 58fa059da5862ea85e419dd36118a8e2a78c4506
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Aug 24 16:32:05 2022 -0700

    Change pdata generated types to use type definition instead of aliases (#5936)
    
    Change the way how objects are generated in `pdata`. Previously the pdata objects were generated in the `internal` package and aliases were created in the public packageas.
    
    This PR changes this, by creating only "wrappers" object inside the internal package, and the public type is a type def of the internal type:
    
    ```golang
    package internal
    
    type LogRecord struct {
            orig *otlplogs.LogRecord
    }
    
    func GetOrigLogRecord(ms LogRecord) *otlplogs.LogRecord {
            return ms.orig
    }
    
    func NewLogRecord(orig *otlplogs.LogRecord) LogRecord {
            return LogRecord{orig: orig}
    }
    ```
    
    ```golang
    package plog
    
    type LogRecord internal.LogRecord
    ```
    
    With this approach, we still do not allow users access to the internal origin, which allows us flexibility to change to other representation (something like lazy proto, etc), but improves documentation of the pdata packages, see [current documentation](https://pkg.go.dev/go.opentelemetry.io/collector/pdata@v0.58.0/plog).
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
