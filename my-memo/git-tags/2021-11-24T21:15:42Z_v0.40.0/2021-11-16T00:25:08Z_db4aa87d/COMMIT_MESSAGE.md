commit db4aa87dcf261c65478a9925b8fcc561ebf8e096
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Nov 15 16:25:08 2021 -0800

    add changelog step in cicd (#4332)
    
    This check ensures the label "skip changelog" has been applied or that the changelog has been updated. This follows the same pattern as the opentelemetry-go and opentelemetry-python SIGs.
