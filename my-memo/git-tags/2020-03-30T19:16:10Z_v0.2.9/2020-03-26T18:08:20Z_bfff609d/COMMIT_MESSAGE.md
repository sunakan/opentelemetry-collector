commit bfff609d0a23d2e927f855841411a44c3998c9dc
Author: Liz Fong-Jones <lizf@honeycomb.io>
Date:   Thu Mar 26 14:08:20 2020 -0400

    initial switch to circleci (#702)
    
    * initial switch to circleci
    
    * update docs
    
    * test packages in batches of 10.
    
    * update golangci to have go1.14 vet support
    
    * roll back go.mod, move to separate pull.
    
    * allow running longer to avoid circleci timeout.
    
    * further increase timeout.
    
    * further increase timeout.
    
    * fix data race, adjust timeout.
    
    * 10 min timeout (will decrease with parallelism later)
    
    * batch/parallelize all test executions.
    
    * modularize circleci
    
    * add loadtest tools
    
    * optimize running time
    
    * address review feedback
