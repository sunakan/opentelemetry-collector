commit 3a165920a681deb45c92bef629f2722cb3d7f402
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jan 16 20:47:53 2024 +0100

    [chore] Clarify configopaque expectations (#9295)
    
    Documents `configopaque` expectations.
    
    The intention is that it is clear that we can add interface
    implementations after 1.0 if not doing so would leak opaque values.
    
    Fixes #9274
