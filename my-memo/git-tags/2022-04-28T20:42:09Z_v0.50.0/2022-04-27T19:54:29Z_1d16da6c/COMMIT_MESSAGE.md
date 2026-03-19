commit 1d16da6c12f5d432ddd74366748debabf931672e
Author: Andrei Matei <andreimatei1@gmail.com>
Date:   Wed Apr 27 15:54:29 2022 -0400

    cleanup exporterhelper readme (#5274)
    
    The `resource_to_telemetry_conversion` setting was listed in the readme, but it doesn't correspond to a setting for this exporter. It looks like individual exporters in the contrib repo have it.
    
    The readme also had a dangling link for more settings. I've removed the link altogether since, as far as I can tell, there are no longer any settings not listed in the readme. Please kindly verify that this is true.
