commit 2f48df36ae508d53f781d535fdec4ec7a7b7bcf4
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Oct 18 16:50:33 2018 -0700

    interceptor/opencensus: rename OCOption to Option
    
    OCOption is redundant within the package ocinterceptor,
    hence fix that with a rename to Option.
    
    Fixes #87
