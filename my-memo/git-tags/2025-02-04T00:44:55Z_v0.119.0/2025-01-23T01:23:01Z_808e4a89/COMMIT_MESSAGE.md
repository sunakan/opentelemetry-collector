commit 808e4a8927d74d758b539a4ad10fa7082b9295a8
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Jan 22 17:23:01 2025 -0800

    [chore] Move exporter id attribute to the span (#12164)
    
    Even though we change the Span attributes, this is ok since tracing is
    still not stable.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
