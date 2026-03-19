commit 55f569d83ec6cb97628bc0e2aba82040cccd2edc
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Tue Apr 15 03:40:55 2025 -0700

    [chore] Create service/internal/obsconsumer package (#12817)
    
    Subset of #12812
    
    This internal package defines wrappers around consumers. These are
    useful for instrumenting the component graph, so that we can generate
    telemetry describing data as it is passed in between components.
    
    Currently, this supports only a single counter metric, but in the near
    future it can be enhanced to automatically capture multiple metrics
    (e.g. item count & size), and potentially spans and/or logs as well.
