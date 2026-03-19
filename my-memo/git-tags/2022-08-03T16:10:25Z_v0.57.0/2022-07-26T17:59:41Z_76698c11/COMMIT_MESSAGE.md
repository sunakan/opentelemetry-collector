commit 76698c110e50d784287e48f48a1e3313fcc12fc7
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Tue Jul 26 11:59:41 2022 -0600

    [cmd/builder] Update builder flags precedence (#5726)
    
    This PR updates the builder's config initialization so that flags always take precedence over configuration files or default values.
    
    I opted not to use the collector's resolvers/converter approach as it felt overkill for this command. This approach takes advantage of the command's existing use of global vars, which isn't the best, but is at least consistent.
