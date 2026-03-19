commit b8ca8368ca6facc800e483e5d50c7baba3f87100
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Feb 6 03:38:15 2023 -0800

    Split graph based pipelines implementation from connectors functionality (#7119)
    
    Add a separate featuregate to control the new graph base pipelines implementation release. This way we can enable the graph base implementation now, and keep connectors still in alpha (since the validation of the otelcol Config will fail) to limit the number of changes necessary to enable connectors.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
