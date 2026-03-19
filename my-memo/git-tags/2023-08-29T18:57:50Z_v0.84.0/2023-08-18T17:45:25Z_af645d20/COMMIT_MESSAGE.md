commit af645d200f5ba9aa83f9046eda3784e1059a9976
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Aug 18 10:45:25 2023 -0700

    [chore] remove BUILD_INFO (#8249)
    
    This is no longer used as the build version information comes from the
    builder configuration. I've removed the VERSION variable as well, as
    it's only used in chlog-update and it's passed into the command.
