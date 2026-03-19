commit 8e90e36bcd934f1f880dcf88a8e0a89f975ec46e
Author: huikang <kangh@us.ibm.com>
Date:   Wed Aug 7 22:34:58 2019 -0400

    Fix nil pointer panic whens stopping exporters (#235)
    
    - Exporters not used in any pipeline cause panic during shutting
      down.
    
    Signed-off-by: Hui Kang <kangh@us.ibm.com>
