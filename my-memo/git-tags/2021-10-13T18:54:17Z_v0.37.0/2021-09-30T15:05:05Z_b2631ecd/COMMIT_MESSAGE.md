commit b2631ecdb4945a601f7df8a559cea6f36f67daa2
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Sep 30 17:05:05 2021 +0200

    [service] Fix panic when not using `NewCommand` (#4139)
    
    * Add default value to flags
    
    * Add default for default parser provider
    
    The test does not trigger this panic since it is using a custom provider,
    but for consistency we can change it there too.
    
    * Empty commit to retrigger CI
    
    * [service] Move TestCollector_StartAsGoRoutine to top of file
    
    * Empty commit to retrigger CI
    
    * Address review comment
