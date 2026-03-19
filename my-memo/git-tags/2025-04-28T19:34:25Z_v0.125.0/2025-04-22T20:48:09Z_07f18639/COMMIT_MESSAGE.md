commit 07f18639a341eb3052a309343f4f4772abec6207
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Tue Apr 22 16:48:09 2025 -0400

    [chore] fix go mod (#12910)
    
    #### Description
    Recent new packages break `make update-otel` in contrib, see
    http://github.com/open-telemetry/opentelemetry-collector-contrib/pull/39563
