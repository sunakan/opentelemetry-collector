commit 98975742d62c73fd308c5c3b058413356ad45467
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Oct 23 10:18:14 2024 -0700

    Add UnmarshalText for StabilityLevel (#11520)
    
    This PR also starts using the fact that StabilityLevel implements
    UnmarshalText and cleans up the mdatagen stability structure.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
