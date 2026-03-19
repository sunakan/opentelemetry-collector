commit 65b7b1be5d797d0021c3dfbfc711431d60634024
Author: Nathan Vērzemnieks <njvrzm@gmail.com>
Date:   Thu Jun 2 14:18:07 2022 -0700

    Send correct batch stats when SendBatchMaxSize is set (#5385)
    
    The stat was getting sent before the max batch size was
    taken into account.
