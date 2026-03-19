commit b81d4efd058a82671a9ca02c9d0d307ac5bae349
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Dec 12 10:13:56 2023 -0800

    [processor/memory_limiter] Update config validation (#9059)
    
    - Fix names of the config fields that are validated in the error
    messages
      - Move the validation from start to the initialization phrase
