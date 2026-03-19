commit 44d010f860b34b65f8d9bffab463847e93e06389
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Aug 6 13:31:21 2020 -0400

    Make logs SeverityNumber publicly available (#1496)
    
    It was previously available in internal package only.
    Now we have the public alias for it.
    
    This is consistent with how we treat other enums, e.g. SpanKind.
