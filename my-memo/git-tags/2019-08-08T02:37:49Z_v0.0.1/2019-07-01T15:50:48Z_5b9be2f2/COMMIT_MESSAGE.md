commit 5b9be2f28878f01b32f5b2b50a5d8abfe9d3e3c0
Author: Dino Oliva <dinooliva@users.noreply.github.com>
Date:   Mon Jul 1 08:50:49 2019 -0700

    Updates receiver creators to take a zap.Logger parameter. (#74)
    
    * Updates receiver creators to take a zap.Logger paramater.
    
    * Updates prometheusreceviver CreateMetricReceiver to return nil error explicitly.
    
    * Updates factory tests to use zap.NewNop() rather than nil.
