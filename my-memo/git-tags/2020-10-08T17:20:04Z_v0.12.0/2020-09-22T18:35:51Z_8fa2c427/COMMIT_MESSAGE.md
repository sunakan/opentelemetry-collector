commit 8fa2c4278a05cf35061699ca37de493f62594cd5
Author: huikang <kangh@us.ibm.com>
Date:   Tue Sep 22 14:35:51 2020 -0400

    Demo docker-compose file: change the host port of collector (#1805)
    
    - 55680 is the default port of otlp receiver. To avoid confusion,
      it's better to use a different number.
    
    Signed-off-by: Hui Kang <kangh@us.ibm.com>
