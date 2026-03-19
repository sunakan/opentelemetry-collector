commit 676261f153ee7a32cd5c2c40e381a38248a6c1d1
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Apr 29 21:43:36 2020 -0400

    Allow components to discover Exporters (#890)
    
    Host.GetExporters now allows components to discover exporters.
    This will be used by upcoming receivers that need to cooperate
    with exporters.
