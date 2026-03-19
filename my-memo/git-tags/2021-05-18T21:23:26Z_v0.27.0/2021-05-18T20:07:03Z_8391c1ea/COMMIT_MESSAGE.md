commit 8391c1ea14672ad296ad7e646980b2a9e0af0c66
Author: Jaana Dogan <jbd@amazon.com>
Date:   Tue May 18 13:07:03 2021 -0700

    Remove QueueSettings (#3210)
    
    The Promeheus Remote Write exporter is not using the retried queue. Error if the user confiugration has QueueSettings.
    
    Note: This is a breaking change and we might want to keep it not to break the existing collector configs.
