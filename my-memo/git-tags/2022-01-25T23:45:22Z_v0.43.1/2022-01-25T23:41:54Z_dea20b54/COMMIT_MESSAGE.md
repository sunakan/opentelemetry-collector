commit dea20b54f9c79d944321659fe9df04a2458b43bc
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Jan 25 15:41:54 2022 -0800

    patch release 0.43.1 (#4754)
    
    * formatting fixes (#4751)
    
    Cleaning up the changelog with formatting fixes.
    
    * expandStringValues function support to map[string]interface{} (#4748)
    
    * expandStringValues function support to map[string]interface{}
    
    eg.
    processors:
      attributes/example:
        actions:
          - key: "${DB_KEY}"
            action: "${OPERATION}"
    
    * add some test to prove that this is needed .
    
    * update changelog
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
    
    * prepare v0.43.1 release (#4753)
    
    This release includes a regression in the 0.43.0 release.
    
    Co-authored-by: kilingzhang <17439300+kilingzhang@users.noreply.github.com>
