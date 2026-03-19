commit 2d85a6619682631e318c744d603dcf82c2ce7b14
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jul 25 07:53:56 2025 +0300

    [chore] Refactor pdatagen field generators into separate files (#13484)
    
    The main reason for this is to help with identify which fields is
    affected when making changes as well as better isolation of templates
    for all fields.
    
    This is a no change for the generated code.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
