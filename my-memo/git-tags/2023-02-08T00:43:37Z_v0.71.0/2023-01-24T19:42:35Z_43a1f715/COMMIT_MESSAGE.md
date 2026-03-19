commit 43a1f715dd2575ef79570cab768f78d5d8e1c278
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Jan 24 11:42:35 2023 -0800

    add github action to automate the release parts of the process (#6960)
    
    * add github action to automate the release the process
    
    This PR adds a github action that can be triggered manually to do the following:
    
    - creates tracking issue
    - checks for blockers in core
    - checks for blockers in contrib
    - checks status of build-and-test in core
    - checks status of build-and-test in contrib
    - runs chlog update
    - runs make-prepare for both stable/beta
    - creates a PR
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    
    * add details to docs
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    
    * Apply suggestions from code review
    
    Co-authored-by: Daniel Jaglowski <jaglows3@gmail.com>
    
    * Apply suggestions from code review
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * add github action to automate the release the process
    
    This PR adds a github action that can be triggered manually to do the following:
    
    - creates tracking issue
    - checks for blockers in core
    - checks for blockers in contrib
    - checks status of build-and-test in core
    - checks status of build-and-test in contrib
    - runs chlog update
    - runs make-prepare for both stable/beta
    - creates a PR
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    
    * update repo, remove chlog-install
    
    * remove unnecessary comments from the action
    
    * move bash commands into script files
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Daniel Jaglowski <jaglows3@gmail.com>
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
