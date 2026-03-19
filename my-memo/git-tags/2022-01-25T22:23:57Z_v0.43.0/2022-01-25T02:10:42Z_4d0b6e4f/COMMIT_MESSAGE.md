commit 4d0b6e4f891efca70a85a28ca6db74458b0dc935
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Jan 24 18:10:42 2022 -0800

    fix call to NewDefaultConfigProvider (#4739)
    
    The call in the test was still passing in a string instead of []string
