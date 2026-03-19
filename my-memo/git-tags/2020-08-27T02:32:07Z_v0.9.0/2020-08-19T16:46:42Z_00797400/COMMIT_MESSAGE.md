commit 007974000687dd568921245b3283879ab54a369c
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Wed Aug 19 12:46:42 2020 -0400

    fix go generate (#1545)
    
    go generate would not work because a tool (esc) was missing from install-tools.
    
    fixing in preparation for metrics metadata generation.
