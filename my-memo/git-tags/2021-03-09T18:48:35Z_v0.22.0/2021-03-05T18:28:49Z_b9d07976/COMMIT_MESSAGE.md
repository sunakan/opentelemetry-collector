commit b9d079763aafe92fa315e16d959b40d860f0e171
Author: Dominik Rosiek <58699848+sumo-drosiek@users.noreply.github.com>
Date:   Fri Mar 5 19:28:49 2021 +0100

    loggingexporter: add support for AttributeMap (#2609)
    
    Add printing map to logging exporter.
    Currently maps are printed as `<Unknown OpenTelemetry attribute value type MAP>`. An idea of the PR is to put it in more usable form. Nested maps are stringified jsons
    
    Example output:
    ```
    Some text: {
         -> foo: STRING(test)
         -> zoo: MAP({"bar":13})
    }
    ````
    
    **Testing:**
    unit tests
