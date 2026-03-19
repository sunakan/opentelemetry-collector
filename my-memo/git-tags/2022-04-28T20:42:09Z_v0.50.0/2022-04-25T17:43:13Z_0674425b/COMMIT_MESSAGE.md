commit 0674425b8ef2f514eb5f8fd4e9f1606faf4453a1
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 25 10:43:13 2022 -0700

    Remove usage of unnecessary omitempty (#5256)
    
    omitempty has effect only if the config is used as a source to encode/decode from, but the config is always the destination in our case, so it has no effect.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
