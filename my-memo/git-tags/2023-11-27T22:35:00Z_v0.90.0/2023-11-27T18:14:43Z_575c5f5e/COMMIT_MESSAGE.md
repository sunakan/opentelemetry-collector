commit 575c5f5e25319ad46dc13b09fe85566d3851310c
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Nov 27 10:14:43 2023 -0800

    [chore] [exporterheper] Fix not-started queue sender shutdown (#8995)
    
    Do not panic on the shutdown of a not-started queue sender
