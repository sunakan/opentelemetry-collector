commit df3c9e38a80ccc3b14705462be2e2e51c628a3b3
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Sep 19 13:17:38 2024 +0200

    [chore] split exporterhelper so a separate profiles module can use it (#11215)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This is part of #11131, splitting the exporterhelper module with a new
    `internal` submodule that holds everything shared by the signals.
    This is so a new `exporterhelperprofiles` module can make use of the
    shared structs.
