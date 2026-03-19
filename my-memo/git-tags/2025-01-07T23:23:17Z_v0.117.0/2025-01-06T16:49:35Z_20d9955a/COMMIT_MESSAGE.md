commit 20d9955af18c801819f9cebd5cf89ada84ef0c49
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jan 6 08:49:35 2025 -0800

    [chore] Use generics for exporterhelper Sender (#12011)
    
    In the followup PR will convert batcher to be generic, then we can have
    the whole baseexporter generic and remove conversions to/from
    internal.Request to implementation.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
