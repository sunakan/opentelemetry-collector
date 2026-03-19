commit c6cd1aeb58b7dd1f3e1372343a733eed2926299b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sat Jun 28 20:14:47 2025 +0300

    [chore] Remove unused size backup logic for items sizer (#13043)
    
    Updates #12890
    
    This is safe and simplifies migration to the new proto metadata because
    we only allow request sizer for persistent queue, so size can always be
    determined from the indexes.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
