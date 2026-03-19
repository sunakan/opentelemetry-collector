commit 70fc33e408ec3e466d65dea09ad4c527474f6b57
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Jan 7 23:13:54 2025 -0800

    [chore] update link checker to use lychee (#12041)
    
    This was done in the [specification
    repo](https://github.com/open-telemetry/opentelemetry-specification/commit/6c626defb7a9ba1716365c4b1af511201e715672),
    and allows us to use a github action instead of install npm packages as
    part of the build process (which kept bringing security warnings back)
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
