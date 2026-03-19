commit e6adba653b0b1328b994f86b5092dd20b6689a07
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jul 15 20:14:04 2020 +0530

    Fix publish CI job and add check to make sure publish doesn't break (#1360)
    
    We were not able to release yesterday because the release CI job failed.
    It failed because two sibling jobs persisted the same file(s) (bin/*) to the workspace.
    
    - This commit fixes the issue by storing the packaged collector in `dist/`
    instead of `bin/`.
    - In addition to that, the commit also adds job to catch any issues that
    might make the publish job fail two weeks down the line. It doesn't add
    any significant overhead. It just makes sure the job can run (no
    conflicting persisted files in workspace) and that the files expected by
    the real publish job are generated.
