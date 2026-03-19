commit c001a51ab511541abb90a20ddae61834aad41c63
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Mar 29 17:10:41 2021 -0700

    Ensure same time is used for updated time, and for expiration test (#2745)
    
    Ensure consistency, data points coming in the same batch are either all dropped or all exported.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
