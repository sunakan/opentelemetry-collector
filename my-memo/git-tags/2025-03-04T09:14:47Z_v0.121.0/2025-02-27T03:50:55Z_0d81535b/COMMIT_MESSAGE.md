commit 0d81535b7cb62facb047a94580903f795298131e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Feb 26 19:50:55 2025 -0800

    Fix bug where the error logged when conversion of data fails is always nil (#12510)
    
    The problem was that in the logging statement (in all signals) we log
    `err` instead of `cErr`. The good part is that this is not a UB, because
    if we get to the point where that function is called, the `err` was nil
    otherwise and never modified again so not race condition in accessing
    it.
    
    Separate the lambda function in a different function so we don't repeat
    the same mistake of capturing other params by mistake.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
