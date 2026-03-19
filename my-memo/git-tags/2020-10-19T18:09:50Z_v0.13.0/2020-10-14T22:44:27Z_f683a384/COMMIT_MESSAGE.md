commit f683a384c41120d52ea93783b7f5d40da2d06476
Author: Ben Keith <benkeith@splunk.com>
Date:   Wed Oct 14 18:44:27 2020 -0400

    Metadata Generator Enhancements (#1912)
    
    This changes the Metrics fields to a struct that implements an interface
    with the `New` and `Name` methods to create a new metric and get the
    metric name, respectively.
    
    It also adds some methods to Metrics:
    
    - `Names()` that returns a slice of all the names of metrics
    - `ByName(name string)` that looks up a metric by its name
    - `FactoriesByName()` that returns a map of factories (`New` methods)
    keyed by metric name.
    
    This makes it possible to refer to metrics by name in an easily
    comparable manner and between components without them having to
    explicitly know about these metadata types.
    
    It also removes the validation on the Unit field of metrics since there
    are many metrics that have no standard units (e.g. connections).
    
    It also adds an alias `M` that corresponds to `Metrics`, and `L` for
    `Labels` to shorten things where appropiriate.
