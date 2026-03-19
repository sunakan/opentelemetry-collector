commit 74d11dbe0c2f489d1f71150f82ac673cf5e42287
Author: kilingzhang <17439300+kilingzhang@users.noreply.github.com>
Date:   Wed Jan 26 07:08:08 2022 +0800

    expandStringValues function support to map[string]interface{} (#4748)
    
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
