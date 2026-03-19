commit a215b9f33c17522b7b916a2660d8a424f6f9df03
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Thu Jun 19 08:51:55 2025 -0700

    [exporterhelper] [chore] Use int64 for the port proto fields (#13235)
    
    from @bogdandrutu: int64 uses varint encoding, so for small value same
    size as int32, but does not need gosec converions
