commit 1b41510bb55182534c813325090a4cfba618bc00
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Nov 27 13:52:00 2024 +0100

    [chore] Add `merge_group` trigger to required workflows (#11764)
    
    #### Description
    
    In preparation for the merge queue potentially being enabled,, this PR
    adds the `merge_group` trigger to CI workflows that run in `main` pull
    requests.
    
    #### Link to tracking issue
    Updates #11707
