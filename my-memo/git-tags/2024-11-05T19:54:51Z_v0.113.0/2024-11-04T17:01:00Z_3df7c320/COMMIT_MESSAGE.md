commit 3df7c320d26671bb4f3b608368b38ee591a8cae3
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 4 09:01:00 2024 -0800

    [chore] Remove unnecessary overwrites for flag only values (#11589)
    
    This is a no-op, because the file config cannot set the "skip"
    properties since they have `mapstructure:"-"`
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
