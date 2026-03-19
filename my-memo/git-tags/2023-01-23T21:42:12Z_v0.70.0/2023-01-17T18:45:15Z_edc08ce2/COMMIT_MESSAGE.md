commit edc08ce252dca66392533244f36082fe76cdc223
Author: Eric L <100242256+splunkericl@users.noreply.github.com>
Date:   Tue Jan 17 10:45:15 2023 -0800

    Propagate shutdown error from retry sender to fix data loss problem in persistent storage (#6815)
    
    Fix a data loss bug occuring in persistent queue when otel collector restart.
    When otel collector restart, the retry_sender will mark a request as finished and cause persistent storage to remove it from currentlyDispatchedItems. This causes data loss.
    
    This change propagates an interrupted error when shutdown is called. The error propagates to the consumer callback function and each consumer can determine action against the error. The persistent storage is updated to check and ensure those requests are not marked as finished.
