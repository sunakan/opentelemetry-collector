commit 10953d1378b852f67e38078c373b74ac563b9ab9
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon May 6 15:45:16 2019 -0700

    Add zpages to collector (#541)
    
    * Add zpages to collector
    
    Move zpages to its own type and share the usage of that type between agent and collector.
    
    * Paying coverage tax
    
    * Added very basic end-to-end coverage for collector
    * A new test for zpagesserver: port already in use
    
    * Improve collector test synchronization
    
    * Make TestApplication_Start resilient to port conflicts
    
    There are other tests in the code base that can suffer with port conflicts but I didn't wat to go overboard and chase them right now.
