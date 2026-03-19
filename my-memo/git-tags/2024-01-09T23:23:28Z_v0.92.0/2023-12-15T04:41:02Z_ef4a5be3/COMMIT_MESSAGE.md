commit ef4a5be399b10bfc70749a3616c20751897db76a
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Dec 14 20:41:02 2023 -0800

    [exporterhelper] Do not re-enqueue failed requests (#9090)
    
    The current re-enqueuing behavior is not obvious and cannot be
    configured. It takes place only for persistent queue and only if
    `retry_on_failure::enabled=true` even if `retry_on_failure` is a setting
    for a different backoff retry strategy.
    
    This change removes the re-enqueuing behavior in favor of the
    `retry_on_failure` option. Consider increasing
    `retry_on_failure::max_elapsed_time` to reduce chances of data loss.
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/8382
