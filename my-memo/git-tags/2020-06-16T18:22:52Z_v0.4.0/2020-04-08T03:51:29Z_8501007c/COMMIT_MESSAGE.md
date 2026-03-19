commit 8501007cdd3edd5198573187b9b9aff2c965b26f
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Tue Apr 7 23:51:29 2020 -0400

    Remove indirect client-go dependency (#804)
    
    This is no longer needed as the prometheus version used has go.mod with the
    required client-go version. Before we were requiring client-go v12 which makes
    go unhappy because it thinks if the version vN where N is > 1 then it should
    have vN in the import path. Instead Kubernetes now tags what would be v12 as
    v0.12 to work around this issue. Although it looks like prometheus just uses
    the commit hash in their go.mod.
    
    contrib will also be cleaned up to get rid of the warnings.
