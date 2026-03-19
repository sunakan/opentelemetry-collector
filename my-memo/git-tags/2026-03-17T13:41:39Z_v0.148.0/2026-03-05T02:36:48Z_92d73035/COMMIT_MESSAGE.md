commit 92d73035a4972b429a6d4ff2e7d3adb3b86a575a
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Mar 4 18:36:48 2026 -0800

    [cmd/mdatagen] Do not generate redundant reaggregation config options (#14689)
    
    Do not generate the following metrics re-aggregation config options for
    metrics that don't have any attributes that can be aggregated:
    - `attributes`
    - `aggregation_strategy`
