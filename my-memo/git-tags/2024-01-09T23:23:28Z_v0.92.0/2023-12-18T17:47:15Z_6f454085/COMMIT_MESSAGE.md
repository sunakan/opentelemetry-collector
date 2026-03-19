commit 6f4540856f4567acdb3a71dca4728429cc1efa31
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Mon Dec 18 09:47:15 2023 -0800

    [chore] remove TODO from confighttp tests (#9121)
    
    Since the listener is already listening, the Serve call will not
    introduce a delay in processing requests.
    It is then fair to block the main thread on waiting the goroutine to be
    started, and unblock before Serve is called.
