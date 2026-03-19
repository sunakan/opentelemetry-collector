commit 03904de3dd61fc9b0c61e2c5e3dfeca574420cbf
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Mar 12 17:25:50 2021 -0800

    Remove the number of items from returned values in Push funcs (#2684)
    
    Even in code for metrics we did not have a consistent implementation,
    also most important thing was not used anymore in observability helper.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
