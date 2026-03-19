commit f38e31b9fe1e2e147eee01a5ccf01c16a7652090
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Mar 17 11:10:51 2022 +0200

    Remove internal rep deprecated funcs (#5018)
    
    Usually we wait 2 cycles for pdata deprecated fields, but this is internal only, so can be removed faster.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
