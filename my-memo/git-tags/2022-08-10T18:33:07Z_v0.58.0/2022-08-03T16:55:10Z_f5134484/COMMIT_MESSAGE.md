commit f513448463cd33a59a67a9e800c9c3f6a99b98a5
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Aug 3 09:55:10 2022 -0700

    add go 1.19 to tests (#5791)
    
    Adding the latest version of go to the tests run by CI. To pass the tests, the following changes were required:
    - run make genpdata
    - fix test certificates to address errors caused by the rejection of duplicate extensions in TLS handshakes
