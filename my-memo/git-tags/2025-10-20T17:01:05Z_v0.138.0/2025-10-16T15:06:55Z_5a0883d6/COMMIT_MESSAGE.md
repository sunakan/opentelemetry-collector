commit 5a0883d630e079fd4e115c48c7bc5d12bb4463c1
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Oct 16 08:06:55 2025 -0700

    Add pcommon.Map helper to add a key to the map if does not exists (#14023)
    
    This new API is intended to be similar with "LoadOrStore" from the
    `sync.Map` and a helper to avoid iterating over the map (lookup) twice
    for when we need to only insert a key if it does not exists.
    
    Example
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/internal/coreinternal/attraction/attraction.go#L307:
    ```
    if _, found = attrs.Get(action.Key); found {
            continue
    }
    av.CopyTo(attrs.PutEmpty(action.Key))
    ```
    
    We lookup key in `Get` as well as `PutEmpty`, and this can be re-written
    as:
    
    ```
    if val, found = attrs.GetOrPutEmpty(action.Key); !found {
            av.CopyTo(val)
    }
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
