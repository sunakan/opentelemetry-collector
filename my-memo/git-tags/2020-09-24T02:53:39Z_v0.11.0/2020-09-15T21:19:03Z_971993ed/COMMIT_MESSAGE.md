commit 971993ed72a27dfe6cf2edbbaf16e48f26b31648
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Sep 15 14:19:03 2020 -0700

    Correct tag regex in CircleCI config (#1787)
    
    - Escape `.` to match dots only, not any character
    - Remove redundant groups
