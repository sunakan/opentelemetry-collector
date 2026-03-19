commit 1a92a7ea5aeaa7af1493716952bf6cd363748440
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jan 22 06:37:38 2020 +0530

    Change Jaeger receiver config (#510)
    
    We use underscores instead of dashes by convention in all component
    configuration. Jaeger receiver used dashes. This commit brings jaeger
    receiver in line with the rest of the components.
