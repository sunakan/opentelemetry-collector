commit bc038e955bf1d6ab06dbdfc016e70888cb9caaa7
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Jul 14 07:53:20 2020 -0700

    Wrap metrics going from resource processor to the pdata.Metrics (#1342)
    
    Resource processor misses a wrapper of the output result into pdata.Metrics structure. It causes the result of the processor work to be dropped if there is a component working with the old data model downstream in the pipeline. No tests catching this at the moment. Hopefully we will open the new data interface for metrics and remove this wrapper soon.
