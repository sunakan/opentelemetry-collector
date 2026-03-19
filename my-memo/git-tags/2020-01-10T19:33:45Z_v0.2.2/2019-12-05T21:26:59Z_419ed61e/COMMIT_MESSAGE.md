commit 419ed61e5bac03caec1bf67bda09b5519bec9918
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Dec 5 13:26:59 2019 -0800

    Set logger for queued_retry (#444)
    
    The logger for the queued retry is not being set making hard to debug issues.
