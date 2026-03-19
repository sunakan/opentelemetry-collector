commit 4979bbd344d94c28958b5c74f0a6c570efb06a02
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jul 2 16:38:15 2019 -0400

    Move ReceiverFactory to "receiver" package (#86)
    
    This is part 1 of 3 of the refactoring plan to eliminate factories.go
    and move the content to corresponding packages (receiver, exporter, processor).
