commit a6c0bd4cba40eac2b276872663d3be998e4c6c9a
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Nov 13 18:37:16 2023 -0800

    [exporterhelper] Remove redundant request interfaces (#8867)
    
    Pass request+context through the senders pipeline similar to what we do
    in the collector's pipeline. Use a helper QueueRequest struct for
    passing requests through queues
    
    This changes also moves the experimental Request interface to a separate
    package.
