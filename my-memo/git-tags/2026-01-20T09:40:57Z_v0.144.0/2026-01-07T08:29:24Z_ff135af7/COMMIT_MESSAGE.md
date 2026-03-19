commit ff135af79581c9c1ef1a009396e62b4ca3b8f7f0
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Jan 7 00:29:24 2026 -0800

    [chore] Fix small issues in renovate.json (#14390)
    
    - Fix google.golang.org grouping. The url is wrong, it's hosted on
    github, use package names instead
    - Remove trailing comma to have valid json
