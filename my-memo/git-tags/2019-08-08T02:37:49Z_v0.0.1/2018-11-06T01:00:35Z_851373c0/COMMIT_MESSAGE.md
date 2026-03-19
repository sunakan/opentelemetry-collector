commit 851373c0aebc2eb2a844bb1e01bbdcf04058ca6c
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Fri Nov 2 20:00:00 2018 -0700

    go.mod: update and tidy all dependencies
    
    Updated all dependencies by using
    ```shell
    GO111MODULE=on go get -u ./...
    ```
    using Go1.11+
    
    In the future, one can update dependencies by
    ```shell
    GO111MODULE=on go get -u <package_path>
    ```
    where `GO111MODULE=on` is only required if the
    repository is checked out in your GOPATH
    
    and then after ran `go mod tidy`
