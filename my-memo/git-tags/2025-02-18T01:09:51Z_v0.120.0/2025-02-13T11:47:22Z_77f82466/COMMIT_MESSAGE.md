commit 77f824660ef651b49227732ab36e206b19e0d2a2
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Feb 13 12:47:22 2025 +0100

    Make MakeFactoryMap generic and move to otelcol (#12220)
    
    #### Description
    
    At the moment, `receiver`, `scraper`, `processor`, `exporter`, and
    `extension` each have their own version of the `MakeFactoryMap`
    function, which takes a list of Factories and returns it as a map, with
    the component name as the key (and an error if there is overlap).
    Because all versions are near-identical except for the Factory type
    used, and this function is only used in tests and in the code generated
    by OCB (`components.go`), it was suggested to make it generic and move
    it to the `otelcol` package.
    
    This PR does exactly that. The old `MakeFactoryMap` functions are
    deprecated (and may be removed alongside their tests in a future
    release). I also had to make a few other odd changes to fit the new
    dependency graph.
    
    #### Link to tracking issue
    Resolves #12222
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
