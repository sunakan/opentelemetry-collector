commit 7273bc6d272fbdfcadeb86acff15b24dbcc87e9c
Author: Andrzej Stencel <andrzej.stencel@elastic.co>
Date:   Tue Aug 26 15:10:25 2025 +0200

    [chore] Move @djaglowski to emeritus codeowners (#13714)
    
    Perhaps this was missed in
    https://github.com/open-telemetry/opentelemetry-collector/pull/12310.
    
    @djaglowski please let us know if you'd rather keep being an active
    codeowner of `/service/internal/graph`. We'd love to keep you!
    :slightly_smiling_face:
    
    See individual commits for more details:
    
    - First, in
    https://github.com/open-telemetry/opentelemetry-collector/commit/c8ed18cabc179e5442fc76e4580b20372f88f68a
    I moved Dan from active to emeritus codeowners in
    `/service/internal/graph/metadata.yaml`
    - Then in
    https://github.com/open-telemetry/opentelemetry-collector/commit/47b5c1317472d4f2e28c643c4847a3fb3e6b38b2
    I ran `make generate-codeowners`. I had to change `BogdanDrutu` to
    `bogdandrutu` to prevent an error from githubgen:
    
       > 2025/08/26 10:44:28 codeowners are not members: BogdanDrutu
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
