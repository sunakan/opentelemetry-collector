commit 2b640017584db682d72d094923fdb390df747eaa
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Apr 22 16:14:49 2019 -0700

    Add go-cmp to install-tools target (#528)
    
    Use the general install-tools target so no one gets the vet failure if they follow the CONTRIBUTING.md instructions. Currently first attempt will fail with the download of go-cmp.
