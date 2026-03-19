commit 2a40f544e62bf7484bf7799ffa88ae43cbcc94df
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Jun 19 09:24:52 2019 -0700

    Add trace head-sampling (#583) (#23)
    
    Cherry-picking https://github.com/census-instrumentation/opencensus-service/pull/583 from OC.
    
    * Add trace head-sampling
    
    This is to complete the sampling feature since OC Service already offers tail-sampling. This is implemented using an extra hashing as an attempt to avoid bias from trace ID generation and also to correctly spread traces for backends that also do hashing.
    
    Tests to enforce hash of different lengths.
    
    Make hashing seed configurable
    
    * Direct recommendation about hash seeding setting
    
    * More precise wording for hash-seed comment
