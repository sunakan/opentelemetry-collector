commit f137ead593bab913c4ef71e14fa750f4e81c2b56
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Oct 29 16:51:15 2020 -0400

    Testbed: only wait for agent endpoint to be listening when endpoint is not empty (#2035)
    
    We only need to wait if the endpoint is not-empty, i.e. the sender does use network
    (some senders like text log writers don't).
