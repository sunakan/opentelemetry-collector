commit b6a3dc55c2ae0502e054d3a7f4ee6f05ce8eefe4
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jan 20 10:28:53 2023 -0800

    [chore] update release build job to trigger on v* tag push (#6976)
    
    In the last 3 releases, this job has created a release for the cmd/builder/v* tag, which caused an issue in the release process and introduced additional manual steps. An alternative to this would be to create two releases, one for the builder and one for the collector, but that seems overkill at this point.
    
    Fix #6849
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
