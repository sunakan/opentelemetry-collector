commit 51944b606f3378f276f500869b8f6d6dd1aea8fd
Author: Bogdan Drutu <bdrutu@google.com>
Date:   Mon Mar 11 16:01:48 2019 -0700

    Add exporterhelper to wrap all exporters with observability. (#484)
    
    * Add exporterhelper to wrap all exporters with observability.
    
    * Remove the nop view exporter, no needed.
    
    * Move constants in constants.go, add TODO to handle gRPC errors.
    
    * Don't export the errors exporterhelper returns.
