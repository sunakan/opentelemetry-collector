commit 539a8aa773a0f3efc18b4228e4c69f22c8ec4bf5
Author: Przemek Maciolek <58699843+pmm-sumo@users.noreply.github.com>
Date:   Thu Jan 6 18:55:18 2022 +0100

    Improve persistent storage tests (#4592)
    
    This addresses #4563
    
    I was not able to replicate the original issue (I did run the tests in a loop for some time and looked through the code). Perhaps the timeout was too short and the tests suite failed when it was running on an instance that had high resource usage. I made some small improvements to the test (increased the timeout, reduced test logging output)
