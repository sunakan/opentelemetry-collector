commit 62f589864e3de833c786138f74f549c455da0404
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Thu Apr 11 18:44:14 2024 -0700

    [chore] fix deprecation godoc (#9947)
    
    Not prefixing the Deprecated godoc with a newline (or it being the only
    godoc) appears to cause intellisense/linters some pain.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
