commit e8ad3c378b4e2ec163b3901e632bd651302b8587
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jun 13 10:40:43 2022 -0700

    Fix collector tests on windows. The locations gets set in a different test. (#5524)
    
    Because we are not cleaning up the os.Args the NewCommand tests which are also parsing the flags (via os.Args) set the config flag even if that was not expected.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
