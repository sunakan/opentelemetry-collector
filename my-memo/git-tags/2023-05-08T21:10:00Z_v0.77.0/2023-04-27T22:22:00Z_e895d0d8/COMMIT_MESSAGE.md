commit e895d0d893339e0a4f8d2c99dbe080c6229fd132
Author: Michele Azzolari <michele@azzolari.it>
Date:   Fri Apr 28 00:22:00 2023 +0200

    [receiver/otlpreceiver] improve request's content-type check (#7451)
    
    content-type header could contain optional parameters after the mime-type,
    do not reject requests in this case
