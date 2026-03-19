commit 2ad88673f045e6080e511eb665a4cf8b651f73ba
Author: JBD <jbd@golang.org>
Date:   Fri Jun 29 09:50:47 2018 -0700

    Add experimental exporter support for traces (#9)
    
    Example config.yaml:
    
    stackdriver:
      project: "projectid"
      enableTraces: true
    
    zipkin:
      endpoint: "http://localhost:9411/api/v2/spans"
    
    Exporter will export the traces both to Stackdriver
    and Zipkin.
    
    Updates #8.
