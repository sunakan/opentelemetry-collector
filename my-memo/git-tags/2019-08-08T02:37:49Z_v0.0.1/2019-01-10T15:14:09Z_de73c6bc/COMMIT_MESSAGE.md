commit de73c6bcd2dc23e826a5c5bf830443f4cddc0ba0
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Jan 10 07:14:09 2019 -0800

    Remove broken checksums now caught by go 1.11.4 (#283)
    
    * Remove broken checksums now caught by go 1.11.4
    
    See https://github.com/golang/go/issues/29278 for more info.
    
    * Update related MD files
    
    * Fix build_binaries docker
