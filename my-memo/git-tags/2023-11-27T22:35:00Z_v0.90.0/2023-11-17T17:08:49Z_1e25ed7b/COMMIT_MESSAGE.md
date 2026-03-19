commit 1e25ed7b18674545a4a88c93dcec850e363f5d8a
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Nov 17 09:08:49 2023 -0800

    [exporterhelper] Replace experimental converter interface with function (#8764)
    
    As proposed in
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122#issuecomment-1688794509
    
    If we need backward conversion, we will use an optional argument to the
    helper function instead of an optional interface.
