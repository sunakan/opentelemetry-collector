commit 71202e4553e23bc38cacae2fd674b1fa3e635248
Author: Annie Fu <16651409+anniefu@users.noreply.github.com>
Date:   Tue Apr 28 15:44:56 2020 -0700

    Add internal pkg for matching metrics by metric properties (#640)
    
    Add metric helper package to internal/process that adds a MatchMetric function that can be used by processors to filter metrics by metric name. MatchMetric can be extended to match on additional metric properties down the line.
    
    `import "github.com/open-telemetry/opentelemetry-collector/internal/processor/metric"`
    
    In addition
    - Add a Factory class for creating FilterSets easily
    - Add "testutils/configtestutils" to help with testing yaml configs of subpackages
    
    **Link to tracking Issue:** Second part of Filter Processor Proposal #560, though the package can be used by other processors too
    
    **Testing:** Unit tests
