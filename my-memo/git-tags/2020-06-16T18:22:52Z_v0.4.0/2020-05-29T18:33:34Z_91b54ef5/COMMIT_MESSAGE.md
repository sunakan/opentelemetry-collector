commit 91b54ef5441495d50bcb15d3d1bc3a0659b4ffe9
Author: Annie Fu <16651409+anniefu@users.noreply.github.com>
Date:   Fri May 29 11:33:34 2020 -0700

    Make MatchSpan implementation use FilterSet package (#978)
    
    The MatchSpan interface is used by the attributes/span processor,
    however this change does not change the yaml configuration or behavior,
    just implementation.
    
    FilterSet has the same filtering logic as MatchSpan previously had, but operates more
    generically on just strings instead of spans and adds some additional
    options, such as caching.
    
    **Link to tracking Issue:** Side effect of #560 to help keep metrics and trace processors using matching configs the same.
    
    **Testing:** unit tests updated, no new behavior, just implementation swapout
