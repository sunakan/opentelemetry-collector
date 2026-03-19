commit 11dffd689131ad775893e79f920bc465004a0fb2
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sun Jul 27 21:23:36 2025 -0700

    [chore] Change to use wrapper of jsoniter.Iterator to simplify ReadXYZ calls (#13498)
    
    This is a preparation to auto-generate the UnmarshalJSON using pdatagen.
    By doing this we simplify to have all funcs on the Iterator and not
    having some on the json package some on the Iterator.
    
    Also, this is less error prune since it forces that all numbers are
    correctly handle the string option.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
