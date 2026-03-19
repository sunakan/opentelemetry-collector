commit ab226dce6800f407af990267e0567bc8a0c6bdef
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Mar 10 22:11:52 2026 -0700

    [chore] fix mdatagen codecov id generation (#14751)
    
    The id generated included underscores in the type, this causes go
    packages to not match the types defined (which contain underscores)
    
    Signed-off-by: alex boten <223565+codeboten@users.noreply.github.com>
