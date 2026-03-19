commit edf0010c31663134a5c7e673aba42cb1c27343fd
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Nov 11 09:10:43 2020 -0800

    Add a struct for processor obs report instead of using package level funcs (#2097)
    
    This is part of a longer effort to move all the obsreport package to use structs for every component type,
    that allow configuring the level at the component level (every component instance will have it's own
    obsreport struct instance).
    
    Exporter, Receiver and Scrapers will be changed later after the infrastructure is built for Processor.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
