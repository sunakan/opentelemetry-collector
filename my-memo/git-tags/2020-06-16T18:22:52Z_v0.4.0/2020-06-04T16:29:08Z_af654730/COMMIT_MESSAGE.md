commit af654730ecfb03ab179750d3103fccda522023a3
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jun 4 09:29:08 2020 -0700

    Small cleanups for filterset (#1072)
    
    * Remove unnecessary Options from regexp and strict filters
    * Use slice for regexp when iterating (faster than iterating over map)
    * Fix bug in de-dup logic for regexp (`flag.CommandLine.Name()` was used instead the filter value)
