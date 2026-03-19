commit b32cf502ae04bf7381f2495cc9a051f5d7473bf3
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Fri Mar 5 19:27:16 2021 +0100

    Fix handling the loop for empty attributes (#2610)
    
    When span was containing several events, only the first one was printed out by the logging exporter. After checking the code it, turned out that handling the case with no attributes returns from the iteration loop altogether, which is wrong. The same bug was introduced for span links.
