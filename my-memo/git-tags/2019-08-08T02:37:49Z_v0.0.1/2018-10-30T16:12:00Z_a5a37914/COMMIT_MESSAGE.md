commit a5a37914540e5d89682a1559edf18a5d74b5d486
Author: Paulo Janotti <paulo@omnition.io>
Date:   Tue Oct 30 09:12:00 2018 -0700

    Add a minimal Makefile and set Travis to use it (#139)
    
    This is very minimalistic: it adds a Makefile and switches Travis
    to use it. The Makefile tries to do the same things as the previous
    script (golint is not enabled yet since it is breaking the build).
