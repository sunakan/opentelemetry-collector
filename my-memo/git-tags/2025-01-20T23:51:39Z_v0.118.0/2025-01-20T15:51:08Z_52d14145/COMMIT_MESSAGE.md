commit 52d1414547c3fb6cad40610d034ec558288fabc4
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon Jan 20 09:51:08 2025 -0600

    [chore] Add internal attribute package (#12073)
    
    This PR creates a new internal package which defines the correct set of
    attributes for each kind of component.
    
    This is a subset of #12057 which is broken off in order to reduce the
    overall size of that PR. As such, this package will not actually be used
    until #12057 is merged.
