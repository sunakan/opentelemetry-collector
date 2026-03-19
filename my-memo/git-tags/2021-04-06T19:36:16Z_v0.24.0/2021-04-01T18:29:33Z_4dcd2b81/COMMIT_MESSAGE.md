commit 4dcd2b81057f5cdb6283e904b619776bd750e504
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Apr 1 11:29:33 2021 -0700

    Add an option to pass command arguments with `make run` (#2877)
    
    `make run` is useful target but there is no way to pass extra command arguments. This commit adds a way to do that with RUN_ARGS env variable
