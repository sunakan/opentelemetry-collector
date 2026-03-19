commit ad8ae26a9fa35695e7957454199f349303bf5653
Author: JBD <jbd@amazon.com>
Date:   Tue Jul 13 10:59:30 2021 -0700

    Document that (*Collector).Run shouldn't be called after shutdown (#3604)
    
    Currently, the behavior allows collector to be shutdown and restarted by Run. But we shouldn't promise this behavior given it may complicate the Collector implementation over time even though it doesn't present a significant advantage to the alternative: reconstructing a collector and running it.
