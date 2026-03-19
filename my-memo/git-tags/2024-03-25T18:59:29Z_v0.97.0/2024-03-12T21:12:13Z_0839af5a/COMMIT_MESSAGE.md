commit 0839af5a30c5ebbd31cb6a9aa374a8b6eacca81a
Author: Andrey Babushkin <oxygenxo@gmail.com>
Date:   Tue Mar 12 21:12:13 2024 +0000

    [chore] Fix an incorrect automatic replace made by a bot in `otel-config.yml` (#9746)
    
    This PR fixes an incorrect automatic replace made in the
    `otel-config.yml` file in this [pull
    request](https://github.com/open-telemetry/opentelemetry-collector/pull/9680/files#diff-c7c8156618a7f8126b25ca1bdfde3e172a0d2cb75c533d63a71617ae2a5c54ae)
    by a bot. I've taken the previous value which seems right.
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
