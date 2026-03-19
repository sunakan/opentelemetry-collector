commit 3896d60853e9117b5b45f17078d520c3f26b2bbc
Author: Curtis Robert <crobert@splunk.com>
Date:   Wed Jan 3 12:40:52 2024 -0800

    [chore] Fix PR template so that comments aren't seen in markdown (#9153)
    
    **Description:**
    Currently when submitting a PR the section descriptions will be shown in
    the markdown view when they should be hidden. This now follows
    [contrib's template
    formatting](https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/.github/pull_request_template.md?plain=1).
