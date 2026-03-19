commit 88b315394a040713d6c4e2401e01d26903afba32
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Wed Aug 7 19:02:55 2024 -0400

    [chore] Skip a few flaky batch sender tests on Windows (#10831)
    
    Those few ones seem particularly flaky on Windows:
    https://github.com/open-telemetry/opentelemetry-collector/issues/10758
    https://github.com/open-telemetry/opentelemetry-collector/issues/10802
    https://github.com/open-telemetry/opentelemetry-collector/issues/10810
