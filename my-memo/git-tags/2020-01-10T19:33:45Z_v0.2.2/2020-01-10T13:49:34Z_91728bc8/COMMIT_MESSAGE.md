commit 91728bc8ce02f78886a52303de7509a71c1fee29
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Jan 10 08:49:34 2020 -0500

    Make component interfaces uniform (#488)
    
    This change fixes inconsistencies in component interfaces. Motivation:
    
    - Uniformness results in reduction of code that currently has to
      deal with differences.
    - Processor.Start is missing and is important for allowing processors
      to communicate with the Host.
    
    What's changed:
    
    - Introduced Component interface.
    - Unified Host interface.
    - Added a Start function to processors (via Component interface).
    - Start/Shutdown is now called for Processors from service start/shutdown.
    - Receivers, Exporters, Processors, Extensions now embed Component interface.
    - Replaced StartTraceReception/StartMetricsReception by single Start function for receivers.
    - Replaced StopTraceReception/StopMetricsReception by single Shutdown function for receivers.
    
    Note: before merging this we need to announce the change in Gitter since it
    breaks existing implementations in contrib (although the fix is easy).
    
    Resolves #477
    Resolves #262
