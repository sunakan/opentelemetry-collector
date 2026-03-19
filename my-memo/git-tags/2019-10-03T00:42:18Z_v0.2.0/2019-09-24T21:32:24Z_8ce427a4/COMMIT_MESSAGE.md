commit 8ce427a430420010cf31d651e52eed3a00e73db0
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Tue Sep 24 14:32:24 2019 -0700

    Pin a commit for Prometheus dependency in go.mod (#364)
    
    * Pin a commit for Prometheus dependency in go.mod
    
    $ go get github.com/prometheus/prometheus@52e0504f83ea6ef05b29c458d9b89173df355da7
    $ go mod tidy
    
    * Fix deprecation warnings
