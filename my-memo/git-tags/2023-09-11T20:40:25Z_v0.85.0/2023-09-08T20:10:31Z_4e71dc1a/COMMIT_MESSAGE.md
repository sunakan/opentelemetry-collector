commit 4e71dc1a3c932527e976e80d2336628a1a6c2038
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Sep 8 13:10:31 2023 -0700

    [exporterhelper] Refactor options and baseExporter (#8369)
    
    Separate all the parts of the baseExporter into an explicit chain of
    request senders. It makes it easier to follow the data flow and add
    additional senders.
    
    This change also removes the baseSettings, because keeping the settings
    is not needed anymore. All the options update the internal senders in
    place.
    
    This change also removes confusing error messages like "Exporting
    failed. Dropping data. Try enabling sending_queue to survive temporary
    failures" when the Queue is not even available in the exporter
    (WithQueue option is not applied) which means users don't
    `sending_queue` config option. Now, such messages are only shown when
    the sending_queue (or retry_on_failure) is available, but not enabled by
    the user.
