commit 11bbcfa79a27dcb51088ba2009b0c88107235168
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Mar 11 14:20:59 2020 -0400

    OpenCensus to internal data structure translation (#596)
    
    This implements translation from OpenCensus to internal representation.
    This will be needed by OpenCensus receiver and can be also used
    by compatibility shims.
    
    Moved oc_const.go to conventions/opencensus.go and made the constants
    exported so that we can reuse in the codebase.
