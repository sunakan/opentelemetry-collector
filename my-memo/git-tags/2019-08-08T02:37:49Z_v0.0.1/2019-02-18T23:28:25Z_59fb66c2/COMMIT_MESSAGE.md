commit 59fb66c213438e88be80b344b58ab123186ed94a
Author: Steven Karis <skaris@omnition.io>
Date:   Mon Feb 18 15:28:25 2019 -0800

    Switch oc receiver to use a worker pool instead of pure go-routines (#410)
    
    As discussed on #395 , use a worker pool to limit the # of go-routines.
