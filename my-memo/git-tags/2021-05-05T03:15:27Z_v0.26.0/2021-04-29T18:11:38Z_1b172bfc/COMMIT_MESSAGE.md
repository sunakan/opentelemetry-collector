commit 1b172bfc58f50a46b4d96971c997204ad8fd28be
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Thu Apr 29 20:11:38 2021 +0200

    Custom authenticator logic (#2767)
    
    This PR changes the configauth to accept a `component.Host`, from which it will extract the authenticator to use based on a new authenticator `name` property.
    
    This is only a draft at the moment, making sure that the general approach is acceptable.
    
    Pending:
    - [x] More unit tests
    - [x] Review README files
    - [x] Comprehensive examples
    
    **Link to tracking Issue:**
    Closes #2101
    Contributes to #2603
    
    **Testing:**
    A couple of unit tests were added for the first phase. More comprehensive testing will be done once the main idea is validated.
    
    **Documentation:**
    None so far, README changes are planned
