commit 8e2db5f6a9379998577de15c7b284de4d8d075a6
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Tue Jul 16 16:57:46 2024 -0500

    [chore] Fix mutability assertion loops (#10627)
    
    I noticed that these loops are making the same assertion repeatedly,
    rather than checking each element.
