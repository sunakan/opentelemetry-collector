commit 100a230c5cadf8fed5497faae209f8007399e06f
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Aug 7 07:06:42 2019 -0700

    Remove memory limiting changes (#230)
    
    * Remove memory limiting changes
    
    We paused on that until further design conversations, in order to avoid confusion with this incomplete feature let's remove it from the code base.
    
    * Recover test that covered more than back presssure
    
    * gofmt config_test.go
