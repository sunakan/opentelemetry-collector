commit 32fc811f6668c10df55e5ae08595597b7db7fee3
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Tue Apr 9 12:34:23 2024 -0700

    Move arm64 to platform support tier 2 (#9910)
    
    This is a documentation change reflecting the progress we have made in
    supporting Linux ARM64 type machines.
    
    We now run both core and contrib builds on Ampere machines, supported by
    the CNCF, through Actuated github action runners.
    
    This PR fixes #9731
