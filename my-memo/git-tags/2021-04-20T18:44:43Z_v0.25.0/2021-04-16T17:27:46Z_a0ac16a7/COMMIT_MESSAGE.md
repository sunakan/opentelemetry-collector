commit a0ac16a774724e607cf3cf2a44f03aee569defac
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Fri Apr 16 13:27:46 2021 -0400

    Update processor recommendation for k8s_tagger (#2950)
    
    k8s_tagger relies on the context.Context object to find the pod IP of the incoming telemetry. This context gets lost when batch processor is hit. Adding recommendation here even though k8s_tagger is a contrib to because this is where ordering recommendations are made and it's a common processor.
