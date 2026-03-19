commit 1c845787ba586d812b8d46c7b15ab02f89c601d4
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Thu Dec 21 13:18:11 2023 -0800

    [chore] polish sharedcomponent API (#9157)
    
    Attempt to simplify as much as possible the API exposed by the
    sharedcomponent package ahead of exposing it as part of a published
    module.
    
    Relates to #9156
    
    Changes:
    * Remove the map field in the struct, make the struct a map
    * Remove the `NewSharedComponents` function, just initialize the map
    instead.
    * Rename GetOrAdd to LoadOrStore
