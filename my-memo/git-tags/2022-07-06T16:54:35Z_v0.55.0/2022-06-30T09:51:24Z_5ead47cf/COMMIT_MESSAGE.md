commit 5ead47cf9a202ccc7f3e51bd0e95aa03677937bd
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jun 30 11:51:24 2022 +0200

    [exporter/logging] Add `syscall.EBADF` to list of known sync errors (#5585)
    
    * [exporter/logging] Add `syscall.EBADF` to list of known sync errors
    
    * Add PR number to changelog
    
    * [exporter/logging] Make `knownSyncError` a global var
