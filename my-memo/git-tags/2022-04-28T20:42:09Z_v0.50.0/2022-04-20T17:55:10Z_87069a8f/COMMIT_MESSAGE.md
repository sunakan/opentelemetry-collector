commit 87069a8fb3ccdeda77e527fe8e4400f8abf3a032
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Apr 20 10:55:10 2022 -0700

    [pdata] Replace `Request.Set<Signals>` with NewRequestFrom<Signals> (#5234)
    
    * [pdata] Replace `Request.Set<Signals>` with NewRequestFrom<Signals>
    
    - `plogotlp.Request.SetLogs` func is deprecated in favor of `plogotlp.NewRequestFromLogs`
    - `pmetricotlp.Request.SetMetrics` func is deprecated in favor of `pmetricotlp.NewRequestFromMetrics`
    - `ptraceotlp.Request.SetTraces` func is deprecated in favor of `ptraceotlp.NewRequestFromTraces`
    
    * Update pdata/ptrace/ptraceotlp/traces.go
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * Update pdata/plog/plogotlp/logs.go
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * Update pdata/pmetric/pmetricotlp/metrics.go
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
