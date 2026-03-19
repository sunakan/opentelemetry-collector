commit f17e470e32ce6c12e46c2ca95562059ef0b9c52b
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Jul 31 16:43:18 2025 -0400

    [chore][component] Minor stylistic updates to `component.ID` (#13543)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Minor stylistic things I noticed while looking at `component.ID`:
    
    * We should assert the interfaces it implements.
    * We don't use the "result parameters"/named return parameters in
    `MarshalText`. I'm more ambivalent on this one, but I was a bit
    surprised to see them when they're not used. I can see reasons to keep
    them as well if we'd prefer.
