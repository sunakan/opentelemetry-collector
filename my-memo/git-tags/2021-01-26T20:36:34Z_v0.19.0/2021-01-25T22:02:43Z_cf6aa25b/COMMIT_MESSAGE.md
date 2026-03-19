commit cf6aa25b6cb0a4db52e34b8f4089ff05d3f82cd2
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jan 25 14:02:43 2021 -0800

    Fix slice of values generated code (#2403)
    
    This was not a problem in the generated code because slice of values is used only with `AnyValue` for the moment.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
