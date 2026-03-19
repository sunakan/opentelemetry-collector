commit 9b469572ab408434dcd1f7692871b0ee417bdaa8
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Wed Nov 13 17:08:21 2024 +0100

    [mdatagen]: require.Emptyf on config diff (#11667)
    
    #### Description
    
    Uses require.Emptyf on config diff instead of testing.Error with diff
    not empty
    
    Signed-off-by: Matthieu MOREL <matthieu.morel35@gmail.com>
