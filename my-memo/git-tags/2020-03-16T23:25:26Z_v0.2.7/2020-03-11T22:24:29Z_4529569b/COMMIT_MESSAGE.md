commit 4529569b83807083bccb22e9d8a6d3679f8b135b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Mar 11 15:24:29 2020 -0700

    Add translator from internal data structure to Opencensus format (#614)
    
    This implements translation from internal data representation to OpenCensus format.
    
    Needed as a temporary solution that allows new-styles receivers to send data to old-style processors.
