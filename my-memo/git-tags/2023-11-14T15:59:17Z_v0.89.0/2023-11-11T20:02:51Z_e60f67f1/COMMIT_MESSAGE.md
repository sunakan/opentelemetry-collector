commit e60f67f102d812e002eeb23ea64104d1826f92af
Author: Andrzej Stencel <astencel@sumologic.com>
Date:   Sat Nov 11 14:02:51 2023 -0600

    [chore][exporter/debug] add description of verbosity levels (#8841)
    
    This improves the documentation of the `debug` exporter by adding
    descriptions of the available verbosity levels of the component.
    
    Hopefully this update also brings to light the fact that the verbosity
    levels need some work. For starters, it makes sense for the `normal`
    verbosity to have different output from the `basic` verbosity.
