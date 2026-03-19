commit c24f9dc580faa366efed12807ab74896c566dbc8
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jan 23 09:45:43 2025 -0800

    [chore] Always initialize cachedItemsCount, it is used in observability sender (#12169)
    
    During
    https://github.com/open-telemetry/opentelemetry-collector/pull/12136
    discussion, it was noted that the count may not always be called, but
    that is not true since we always call it in the observability sender.
    This PR only simplifies the logic and ensure we always have the right
    number.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
