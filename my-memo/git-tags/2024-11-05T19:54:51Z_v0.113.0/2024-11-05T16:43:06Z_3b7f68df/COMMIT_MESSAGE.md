commit 3b7f68dfc65ab5d0e7c73d9b8d814b9f3fef8b08
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Tue Nov 5 17:43:06 2024 +0100

    [chore] fix: pin markdown-link-check to v3.12.2 (#11605)
    
    To prevent it from using v3.13.x which is currently broken by
    https://github.com/tcort/markdown-link-check/issues/368.
