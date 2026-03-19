commit 0156385dc1a36b1db5a445967b6de100c4008300
Author: Paulo Janotti <paulo@omnition.io>
Date:   Tue Jul 2 08:55:31 2019 -0700

    Add receiver host: 1st part of Memory Limiting (#83)
    
    Add Receiver Host Interface
    
    This interface allows better communication between receivers and the code hosting them. This becomes important when the host needs to request receivers to stop ingestion due to limited resources.
