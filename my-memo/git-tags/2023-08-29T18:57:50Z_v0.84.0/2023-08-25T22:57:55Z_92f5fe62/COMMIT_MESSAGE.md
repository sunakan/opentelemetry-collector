commit 92f5fe622046ff59df8b7cb8d1ab499752dffd6d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Aug 25 15:57:55 2023 -0700

    [chore] [exporterhelper] Remove redundant Marshal methods from test structs (#8286)
    
    The method was removed from the Request interface in
    https://github.com/open-telemetry/opentelemetry-collector/pull/8178, so
    the implementation on the test structs is not required anymore
