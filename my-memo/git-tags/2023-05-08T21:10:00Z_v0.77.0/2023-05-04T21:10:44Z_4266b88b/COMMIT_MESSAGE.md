commit 4266b88b88aa5740605ec801cf89bf4c2541e133
Author: Mikołaj Świątek <mswiatek@sumologic.com>
Date:   Thu May 4 23:10:44 2023 +0200

    [exporterhelper]: reduce default queue size to 1000 (#7592)
    
    Reduce the default queue size to 1000. Combined with the defaults on batchprocessor, the current default of 5000 is too much and will lead to an OOMKill in most environments if actually filled.
    
    1000 is probably too high still, but we don't want to make too drastic of a change here at once. See linked issue for specifics.
