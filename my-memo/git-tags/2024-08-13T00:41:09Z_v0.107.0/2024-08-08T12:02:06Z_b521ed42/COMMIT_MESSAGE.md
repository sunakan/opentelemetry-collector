commit b521ed4220de7f7c882b1257f998aa755850a5c7
Author: Andrej Giesbrecht <46686798+giesan@users.noreply.github.com>
Date:   Thu Aug 8 14:02:06 2024 +0200

    [builder] fix the TestGenerateInvalidOutputPath (#10595)
    
    If the test is executed with the `root` user, the
    `TestGenerateInvalidOutputPath` test fails.
    The behaviour was noticed with a GitLab runner that was executed with
    root rights.
    
    An attempt is made to create the directory `/:invalid` during the test.
    A user without root rights receives the message `cannot create directory
    '/:invalid': Permission denied`.
    In contrast, the `root` user can create the directory without any
    problems because this is a valid path.
    
    To correct the behaviour of the test, the path to `:/invalid` was
    adjusted.
    This is not a valid path under Windows or Linux.
    
    Signed-off-by: Andrej Giesbrecht <giesan@gmx.net>
