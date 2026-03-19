commit 8e8c6345b3347edb618e82b85215d213d2be4fb7
Author: Steven Karis <skaris@omnition.io>
Date:   Tue Jan 15 17:20:26 2019 -0800

    Add config based attributes (#317)
    
    * Add config-based attributes to all spans passing through collector
    
    There is a usecase where all spans going through the collector should be
    tagged with some additional attribute information (e.g. env, pipeline).
    This solves for that usecase.
    
    Testing Done: unit tests
