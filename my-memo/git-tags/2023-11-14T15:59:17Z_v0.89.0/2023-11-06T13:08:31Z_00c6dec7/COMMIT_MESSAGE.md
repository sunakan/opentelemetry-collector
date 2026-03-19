commit 00c6dec7413f9a658cb2f3f83ed553dcaed9c568
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Nov 6 14:08:31 2023 +0100

    [cmd/builder] Add `--verbose` flag to log go subcommands output (#8715)
    
    **Description:**
    
    Log output from `go` subcommands being ran as part of an ocb build if passing the `--verbose` flag
