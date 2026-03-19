commit 4dcb3388a1687f10875d41b9757fd80f6b5eb269
Author: Hyunuk Lim <hyunuk@amazon.com>
Date:   Fri Dec 10 10:47:07 2021 -0800

    Support Snappy and Zstd for confighttp.go (#4441)
    
    * feat: add snappy and zstd into confighttp
    
    * fix: format the code
    
    * fix: refactored. tests wip
    
    * feat: add tests
    
    * fix: fmt and lint
    
    * fix: modified readme, removed decompression support, and removed compression from otlp
    
    * fix: add compression on otlphttpexporter/readme
    
    * chore: add changelog
    
    * fix: applied changes from code review
    
    * fix: comments and changelog
    
    * fix: applied changes based on the code review
    
    * fix: changed commend on changelog
    
    * fix: changed map to switch case
    
    * fix: move CompressionType to middleware to remove duplicated value
    
    * fix: implement UnmarshalText for CompressionType
    
    * fix: lint error
    
    * fix: remove recommandation for compression type from readme
    
    * chore: changelog
