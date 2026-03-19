commit 50cbc173ee53bf91d5daa908b42a733fd7a1b3a6
Author: Liz Fong-Jones <lizf@honeycomb.io>
Date:   Thu Mar 26 21:21:49 2020 -0400

    parallelize loadtests & cross-compiles (#716)
    
    * parallelize loadtests.
    
    * print tests to be run by each worker.
    
    * listtests -s
    
    * eliminate excess quote
    
    * build more in parallel.
    
    * parallelize lint, in-container
    
    * fix broken variables.
    
    * use more robust parallelism
