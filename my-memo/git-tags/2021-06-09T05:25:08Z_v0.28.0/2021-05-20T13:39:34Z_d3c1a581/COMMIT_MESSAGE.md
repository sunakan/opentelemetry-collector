commit d3c1a58168042a8b56b20d086f139d1571d00ea7
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Thu May 20 19:09:34 2021 +0530

    Don't use contexts in PR jobs (#3219)
    
    This commit ensures that PR builds will not use circleci contexts as any
    jobs depending on contexts can only be executed by otel members.
