commit ac9eb92edc4a2e16cf721ffe40c2cdfc2fb76ab9
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Apr 14 13:12:34 2022 -0700

    [docs] fix headings in godoc (#5222)
    
    The documentation used `======` incorrectly to mark headings. According to godocs:
    
    > A title is a line that is separated from its following line by an empty line, begins with a capital letter and doesn't end with punctuation.
