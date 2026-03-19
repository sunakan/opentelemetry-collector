commit 026061c9ed7603138a97833733159c87b88dda3c
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jun 24 21:06:34 2019 -0400

    Remove docker-collector makefile target (#50)
    
    We only need the unified docker-otelsvc. Having docker-collector in
    the makefile is misleading and unnecessary.
    
    Issue: https://github.com/open-telemetry/opentelemetry-service/issues/48
