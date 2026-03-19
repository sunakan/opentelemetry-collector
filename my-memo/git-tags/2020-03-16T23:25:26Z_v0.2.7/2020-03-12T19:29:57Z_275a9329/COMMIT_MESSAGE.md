commit 275a932999584cce7b99e924833c5218358aa772
Author: Annie Fu <16651409+anniefu@users.noreply.github.com>
Date:   Thu Mar 12 12:29:57 2020 -0700

    Add filterset package that can be used to filter by string properties (#597)
    
    Add filterset helper package to internal/processor that can be used by processors to
    filter metrics and spans by string properties.
    
      import "github.com/open-telemetry/opentelemetry-collector/internal/processor/filterset"
    
    This adds two types of filtersets
    
    - regexp: filter strings using https://golang.org/pkg/regexp/ patterns
    - strict: filter strings using exact string matches
    
    Link to tracking Issue: First part of Filter Processor Proposal #560, though the package
    can be used by other processors too
    
    This can be used for the MatchSpan implementation and the upcoming MatchMetric function.
    
    Testing: Unit tests
    
    Documentation: None, no public surface changes yet
