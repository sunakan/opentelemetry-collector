commit 00c8ea9062f779e9c5c09c80048f4eeb634aab99
Author: Mahad Zaryab <43658574+mahadzaryab1@users.noreply.github.com>
Date:   Mon Aug 26 19:34:11 2024 -0400

    fix(renovate): add package rule for disabling toolchain updates (#10961)
    
    #### Description
    - Added a rule to ignore updates to the go toolchain. According to
    [this](https://github.com/renovatebot/renovate/blob/main/lib/modules/manager/gomod/update.ts#L51-L55),
    the toolchain update is a `depType` in the `gomod` manager.
    
    #### Link to tracking issue
    Fixes #10932
