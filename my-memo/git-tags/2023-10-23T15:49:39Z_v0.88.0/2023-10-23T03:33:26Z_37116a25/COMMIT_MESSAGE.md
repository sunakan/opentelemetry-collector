commit 37116a25be8da4acd1e8129dcbbd24cdd3dee934
Author: Fred Thomsen <fred.thomsen@sciencelogic.com>
Date:   Sun Oct 22 23:33:26 2023 -0400

    [fix] [exporterhelper] Fix nil ptr dereference on storage stop (#8718)
    
    When persistent queue fails to start, for example due to bad
    permissions, then persistent storage does not get allocated. Thus,
    ensure stop storage method is only called if actually initialized.
    
    **Description:**
    Fixing a bug that resulted in panic when de-referencing nil pointer. The
    issue is that in the persistent queue fail to start due to say bad
    folder permissions, then the `Start` method does not actually set the
    associated persistent storage, and thus when shutting down it tries to
    stop the storage and panics.
