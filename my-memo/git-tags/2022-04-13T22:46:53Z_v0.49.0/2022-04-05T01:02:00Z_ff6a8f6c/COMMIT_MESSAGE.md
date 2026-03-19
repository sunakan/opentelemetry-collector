commit ff6a8f6cb91c45203aecf3ffc97c2e2e0e1b8267
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Apr 4 18:02:00 2022 -0700

    [model/semconv] Add `generated_` prefix to generated files (#5148)
    
    For consistency with other generated names in across the collector repos. This also helps to distinguish files that has to be manually created for each semconv version.
