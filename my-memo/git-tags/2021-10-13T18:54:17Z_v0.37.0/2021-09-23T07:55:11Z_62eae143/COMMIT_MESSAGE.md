commit 62eae1435157fbbb42c4743c0ea69b791cc68b5e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Sep 23 10:55:11 2021 +0300

    Add a new type of provider that can merge multiple config providers (#4078)
    
    Fixes a bug where the provider passed to SetFlag provider was not closed.
    
    Followup will add support to merge multiple whatchable providers.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
