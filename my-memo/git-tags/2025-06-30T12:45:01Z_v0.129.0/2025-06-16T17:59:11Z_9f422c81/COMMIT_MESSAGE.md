commit 9f422c814c2f2f31b614b4afe810bc944eb256ab
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jun 16 10:59:11 2025 -0700

    [chore] Avoid using the default port for internal metrics in tests (#13213)
    
    This causes errors running the tests on machines that have the collector
    running on them.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
