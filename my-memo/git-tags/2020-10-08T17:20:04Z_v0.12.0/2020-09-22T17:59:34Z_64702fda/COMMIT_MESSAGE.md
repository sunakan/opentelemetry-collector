commit 64702fdae5bfa42dd20b9498e9e81e7dcf302375
Author: Pavol Loffay <ploffay@redhat.com>
Date:   Tue Sep 22 19:59:34 2020 +0200

    Add OTLP rec and remove qretry from example and default config (#1823)
    
    Signed-off-by: Pavol Loffay <ploffay@redhat.com>
    
    Add OTLP receiver and qretry processor to example and default config.
    
    **Link to tracking Issue:**
    Updates #886
    Updates #1721
    
    **Testing:**
    * `make run`
    * build and run docker image
