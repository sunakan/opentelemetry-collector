commit 3595b4672f17ec3ff42568392e2e4436beb082de
Author: Ago Allikmaa <maxorator@gmail.com>
Date:   Wed Dec 16 23:59:23 2020 +0200

    Environment variable NO_WINDOWS_SERVICE to force interactive mode on Windows (#2272)
    
    Adding a feature - adds a check for NO_WINDOWS_SERVICE environment variable on Windows to allow forcing interactive mode instead of running as a service.
    
    This is required for using the collector in Windows Docker containers, as at least some of the Windows base images do not support services (fails with "The service process could not connect to the service controller"). Environment variable is used instead of automatic detection of Docker as it is uncertain if images that support services are possible and/or desired.
    
    Running collector in Windows Docker containers is required to perform containerized integration tests of agents on Windows.
