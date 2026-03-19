commit 31d6389b572360cfc045c2a80b47492f366c6fb1
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Jul 3 08:40:41 2019 -0700

    No queued retry on bad data (#91)
    
    * No queued retry on bad data
    
    Allows the queued-retry to identify permanent errors from the consumer attached to it. This way it can safely drop batches of data data without burdening the system with retries.
    
    * Move errorkind package and use require package in tests
