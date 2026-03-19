commit a0d9d438b380cde86e28695f1d3a37dec07375d8
Author: Eric Hsueh <39718333+erichsueh3@users.noreply.github.com>
Date:   Thu Nov 11 08:53:24 2021 -0800

    Add `collector-builder` to `internal/tools`, add collector manifest, add Make rule (#4199)
    
    * added collector builder to internal/tools package, added collector manifest, added Make rule
    
    * added go sum entry
    
    * added go mod and go sum entries
    
    * updated versions to 0.37.0
    
    * changed replace directive to use local path
    
    * Changed manifest version, add suffix for clarity
    
    * ensured that ./bin directories exist before building collector
    
    * removed builder from internal/tools
    
    * Modified Make rule for using collector builder, modified builder manifest to have correct replaces
    
    * fixed accidental change of internal/tools dependency
    
    * removed install-tools Make rule dependency
