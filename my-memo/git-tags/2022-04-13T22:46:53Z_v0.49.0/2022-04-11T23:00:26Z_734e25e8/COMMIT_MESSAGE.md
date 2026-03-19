commit 734e25e8dec549c4a408f66b9ebd445e52f539fb
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Apr 11 16:00:26 2022 -0700

    Split `model` by signal type and move it to the new `pdata` module (#5168)
    
    Split all `pdata` related code by type and move it from `model` to the new module `pdata`.
    
    - `model/pdata` and `model/otlp` are moved to `pdata/plog`, `pdata/pmetric` and `pdata/ptrace`.
    - `model/otlpgrpc` is moved to `pdata/plogotlp`, `pdata/pmetricotlp` and `pdata/ptraceotlp`.
    
    Now all the API in `model` except for `model/semconv` is deprecated.
