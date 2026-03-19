commit b682d8ef47cd48bdcf19dd17425cca4acfbdf477
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jan 6 13:00:45 2025 -0800

    Deprecate receivertest.NewNopFactoryForType (#11993)
    
    We do not offer same for any other component test package, and also this
    is only used in one place across core and contrib. For consistency and
    limiting the public API, deprecate this functionality.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
