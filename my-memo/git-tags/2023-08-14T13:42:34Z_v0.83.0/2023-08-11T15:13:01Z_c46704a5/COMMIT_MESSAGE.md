commit c46704a5923b80fcf5e94646a1bc419e56ffdbd5
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Aug 11 08:13:01 2023 -0700

    [chore] [CI] Add a unittest job without a matrix (#8218)
    
    To not update required jobs every time a new go version is released.
    
    Needed for
    https://github.com/open-telemetry/opentelemetry-collector/pull/8208
