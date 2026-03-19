commit c3411f50cdddd0a9744458cb017a8f028acdf99c
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Apr 1 16:42:30 2020 -0400

    Allow getting factories from component Host (#748)
    
    Added GetFactory function to Host interface. This allows components
    to fetch factories and create components dynamically. The functionality
    will be used by receiver creator that creates and destroys other receivers
    as it discovers relevant external endpoints from which these receivers
    can get data.
