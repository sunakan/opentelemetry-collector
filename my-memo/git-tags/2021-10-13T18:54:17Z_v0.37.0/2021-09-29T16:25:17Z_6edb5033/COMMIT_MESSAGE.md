commit 6edb5033dec579702082d9812cecbbaeba6d7db9
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Wed Sep 29 18:25:17 2021 +0200

    Move Persistent Queue to internal (#4116)
    
    This addresses one of the items raised in #4025 (move persistent_queue to internal). The overall refactor is broken into three parts:
    
    * **Part 2**: actual moving Persistent Queue into exporthelper/internal (this also requires exporting `internal.RequestUnmarshaller` and `internal.PersistentRequest`) 👈    (this PR)
    
    Link to tracking Issue: #4025
    
    Testing: Unit tests updated, manual tests to follow
