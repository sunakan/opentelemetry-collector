commit 1f65eaac8217fe3700c341ba7a591827ebfe5438
Author: Allan Feldman <6374032+a-feld@users.noreply.github.com>
Date:   Wed Jul 7 11:03:35 2021 -0400

    Use errors.As to identify a throttle error. (#3559)
    
    Using errors.As for identifying a throttle retry allows the throttle
    information to be placed at any point in the recursive error data
    structure.
    
    Prior to this commit, the throttle retry error was assumed to be the
    outermost error.
