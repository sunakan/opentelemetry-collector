commit e94ced859c6347a402f0edb3767ff5cfbc39d7dd
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Tue Apr 29 22:13:30 2025 +0200

    [chore]: remove testifylint-fix target (#12828)
    
    #### Description
    
    golangci-lint is now able to apply suggested fixes from testifylint with
    golangci-lint --fix .
    This PR removes testifylint-fix target from Makefile.
    
    Signed-off-by: Matthieu MOREL <matthieu.morel35@gmail.com>
