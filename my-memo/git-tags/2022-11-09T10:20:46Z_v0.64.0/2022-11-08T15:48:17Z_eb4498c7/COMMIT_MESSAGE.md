commit eb4498c775d1309acafd2445918df76be6751b01
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Nov 8 07:48:17 2022 -0800

    Remove get from newly added funcs on Gate that don't conflict (#6485)
    
    Because of the conflict between the public member and func name, cannot do the same for ID/Description, will fix in a later version after we remove the public members.
    
    No need for deprecation, were added in this version.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
