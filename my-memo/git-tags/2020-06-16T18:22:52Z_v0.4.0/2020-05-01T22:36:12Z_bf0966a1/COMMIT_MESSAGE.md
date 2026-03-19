commit bf0966a1b19a906579bddecad4eeb29eb334ef50
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri May 1 15:36:12 2020 -0700

    Fix resource attribute mutation bug (#907)
    
    This commit fixes a bug when "service.name" attribute is removed from resource structure during translation to jaeger proto format
