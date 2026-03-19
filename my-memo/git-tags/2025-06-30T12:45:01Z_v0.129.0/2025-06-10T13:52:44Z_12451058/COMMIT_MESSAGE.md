commit 124510585c3128925c1d654d1dff2815cc71db81
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jun 10 13:52:44 2025 +0000

    [configoptional] Make Unmarshal into None[T] match unmarshal into (*T)(nil) (#13168)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Makes it so that unmarshaling into a `None[T]` is equivalent to
    unmarshaling into a `(*T)(nil)`.
    The goal is to be able to do #13109 without introducing any changes to
    the behavior.
    
    Needs #13161.
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Add a unit test to compare the behavior of unmarshaling into `(*T)(nil)`
    with that of unmarshaling into `None[T]`
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    Amend docstrings
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
