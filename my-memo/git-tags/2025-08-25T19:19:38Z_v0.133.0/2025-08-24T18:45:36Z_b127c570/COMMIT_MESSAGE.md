commit b127c57053f7fc578eddc476cbbee66763311997
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Aug 24 11:45:36 2025 -0700

    Fix UB in batch processor when trying to read bytes size after adding request to pipeline (#13698)
    
    Fix race condition between potential writes (e.g. if downstream exporter
    has sending queue enabled and mutates the data after) and reading the
    bytes size in batch processor.
    
    See also documentation on the consumer
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/consumer/metrics.go#L17
    where it says clearly that payload should no longer be accessed after
    calls to `Consume*`.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
