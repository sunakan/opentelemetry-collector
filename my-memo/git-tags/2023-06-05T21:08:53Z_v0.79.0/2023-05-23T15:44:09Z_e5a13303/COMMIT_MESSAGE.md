commit e5a13303424745da9989ae66229d01270242c41b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue May 23 08:44:09 2023 -0700

    Change multiBatcher to use sync.Map, avoid global lock on fast path (#7714)
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
