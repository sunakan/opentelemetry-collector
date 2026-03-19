commit eed260123398aa01565a61fe03304d631aac8629
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Nov 19 11:32:53 2020 -0500

    Add a struct for exporter obs report instead of using package level funcs (#2179)
    
    This is part of a longer effort to move all the obsreport package to use structs for every component type,
    that allow configuring the level at the component level (every component instance will have it's own
    obsreport struct instance).
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
