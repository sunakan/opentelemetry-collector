commit 4121f899ab07f23c2f4ca240e93284ded244f281
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Mon May 11 21:09:42 2020 +0530

    Add support for client IP detection to Jaeger Thrift HTTP receiver (#938)
    
    This pulls in one more function from Jaeger collector that deals more
    directly with the HTTP request object. We need reference to HTTP request
    object and we need a way to pass the request context on to the next
    consumer.
