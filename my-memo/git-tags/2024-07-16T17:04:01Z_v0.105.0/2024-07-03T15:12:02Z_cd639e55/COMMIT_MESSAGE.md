commit cd639e5502ea0addc51bf566f6aacdbb2f745f3c
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Jul 3 08:12:02 2024 -0700

    [chore] Add for-all make target (#10522)
    
    Same as we have in contrib. Sometimes it's helpful to run a specific
    command in all modules not just a make target. For example, `CMD="go mod
    edit -replace
    go.opentelemetry.io/otel/sdk/metric=../opentelemetry-go/sdk/metric" make
    for-all` to debug go library issues.
