commit 88046dd3278690a5f31a25f40235cb7b773cb5c5
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon May 6 09:09:44 2024 -0700

    [chore] try to fix coverage step (#10085)
    
    It's unclear why the retry action is failing to pass in the secret,
    trying to standard codecov action with a token as per codecov
    documentation.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
