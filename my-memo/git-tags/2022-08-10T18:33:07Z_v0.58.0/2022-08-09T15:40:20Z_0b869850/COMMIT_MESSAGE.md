commit 0b8698504cb993dccb773a92251b342489493596
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 9 08:40:20 2022 -0700

    Breaking Change: Change confmap.Provider to return pointer to Retrieved. (#5839)
    
    This change makes implementations cleaner, since they can return `nil, err` in case of an error instead of a zero initialized Retrieved.
    
    This is a breaking change, but there are very very few implementation of the Provider, so it should be safe to just break it.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
