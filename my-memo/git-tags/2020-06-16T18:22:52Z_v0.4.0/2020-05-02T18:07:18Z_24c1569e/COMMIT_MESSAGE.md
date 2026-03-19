commit 24c1569e972d5b33e9375ff570173f7392103a88
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sat May 2 11:07:18 2020 -0700

    Improve performance of internal traces to jaeger proto translation (#906)
    
    This PR also fixes an attribute mutation bug when "service.name" got removed from resource data structure
