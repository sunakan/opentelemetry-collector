commit fcf6e9ee7ea518ff1bdabffcb285c76458c1e566
Author: Steve Flanders <steve@sflanders.net>
Date:   Thu Jan 17 15:53:39 2019 -0800

    Zipkinlog (#327)
    
    * Add log statement when Zipkin receiver is running
    
    * Switch from localhost to 127.0.0.1
    
    While testing docker images locally it was discovered that localhost
    does not always work. Switch to something that does.
