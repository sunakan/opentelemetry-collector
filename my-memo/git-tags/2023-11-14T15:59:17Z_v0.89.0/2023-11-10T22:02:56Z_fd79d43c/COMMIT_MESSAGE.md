commit fd79d43c7a2c6a3ecc3d14ff0259f585ff764a72
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Nov 10 16:02:56 2023 -0600

    Rename ProducerConsumerQueue to Queue (#8838)
    
    * Rename Stop to Shutdown, add context and return error.
    * Fix test nits.
    * Return errors from Shutdown instead of log them.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
