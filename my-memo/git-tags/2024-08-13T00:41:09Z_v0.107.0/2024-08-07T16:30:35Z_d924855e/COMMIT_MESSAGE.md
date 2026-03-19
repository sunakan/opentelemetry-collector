commit d924855eb540b6c71d6292f3507b344c3ad5a9f4
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Wed Aug 7 09:30:35 2024 -0700

    [chore] avoid mixing pointer and non-pointer receiver on struct functions (#10667)
    
    Fix an IDE warning about mixing receiver types.
