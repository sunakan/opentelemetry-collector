commit c9f8e8b63dee931356169946f834349ff45a1cb6
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Nov 21 12:11:13 2024 +0100

    [chore] Make `check-contrib` rebuild and reapply tools (#11670)
    
    #### Description
    
    There have been issues where changes in `mdatagen` are not properly
    tested in CI and end up breaking collector-contrib (cf. #11167). This is
    because `make check-contrib` does not rebuild or rerun `mdatagen` before
    running contrib tests. This PR fixes that.
    
    I added a flag to disable this when running manually, as it adds
    significant time (~3 min!) to the run and is only really useful when
    `mdatagen` has been modified.
    
    I had to change the `make gotidy` to `make for-all CMD="go mod tidy"`
    because we don't have a way to run `generate` on a specific module group
    (and doing so may cause false-positives/negatives if a module group
    depends on the generated files of another).
    
    #### Link to tracking issue
    Fixes #11167
