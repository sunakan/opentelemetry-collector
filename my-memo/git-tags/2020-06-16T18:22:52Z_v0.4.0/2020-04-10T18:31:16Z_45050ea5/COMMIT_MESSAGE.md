commit 45050ea5f7f34e255a8e968c9d0180e1afbf4103
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Apr 10 11:31:16 2020 -0700

    Add MoveTo function to the Slice to allow optimal batching. (#820)
    
    Split Slice tests to allow parallelism and reduce the number of elements in the generated data for slices.
