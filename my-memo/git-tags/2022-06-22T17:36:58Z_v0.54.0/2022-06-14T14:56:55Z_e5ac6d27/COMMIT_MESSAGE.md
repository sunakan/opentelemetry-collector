commit e5ac6d27cda9e67276f6d5b3d5d87fa266c83357
Author: Marc Pichler <marcpi@edu.aau.at>
Date:   Tue Jun 14 16:56:55 2022 +0200

    [exporter/logging] log min and max for histograms (#5520)
    
    * fix(exporter/logging): log min and max for histograms.
    
    * fix(changelog): update changelog.
    
    * fix(otlptext): check if sum/min/max are present before adding them to the buffer.
    
    * fix(otlptext): make test data include a variation of histogram min/max presence.
    
    * fix(otlptext): check if sum exists on exponential histogram before adding it to the buffer.
    
    * fix(otlptext): use min=0 for ExponentialHistogram test data as zero_count=1.
