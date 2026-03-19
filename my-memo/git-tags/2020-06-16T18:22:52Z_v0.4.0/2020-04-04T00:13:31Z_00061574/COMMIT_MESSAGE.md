commit 00061574e823802553aa80f08a62c1a9dd04744f
Author: Pavol Loffay <ploffay@redhat.com>
Date:   Sat Apr 4 02:13:31 2020 +0200

    Validate factories on service run (#769)
    
    factory.CreateDefaultConfig can use (default) values from viper, however viper can be initialized with flags from cobra only in command.Run.
    
    We would like to use this in jaeger.
