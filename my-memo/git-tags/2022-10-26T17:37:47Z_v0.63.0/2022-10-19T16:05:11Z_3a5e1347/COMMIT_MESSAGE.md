commit 3a5e13472213bc11b8252484cc306f7ede57f343
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Oct 19 09:05:11 2022 -0700

    [chore] Split the single file in p[trace|metric|log]otlp package into one per struct (#6349)
    
    This allow to identify a new problem, NewClient -> NewGRPCClient
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
