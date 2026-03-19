commit 723d74098897247866555357da73ae9b4ee13db6
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Nov 7 19:51:56 2018 -0800

    .travis.yml: move Travis to Go1.11 (#172)
    
    * Move Travis to go 1.11
    
    We are using go.mod files to manage the packages consumed by the project,
    so we need to move to go 1.11 where the feature is actually available.
    
    * Fix gofmt when upgrading to go 1.11
