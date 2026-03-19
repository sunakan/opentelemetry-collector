commit f51343b95625285070bc44c9f53666c775517c26
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Feb 13 10:53:23 2025 -0800

    [chore] Improve usage/setup of metadata.yaml (#12343)
    
    Few miss-usages:
    1. Using a type like "receiver" when a simple "pkg" can be used, see
    "receiverhelper";
    2. Defining metadata.yaml without a generate statement, see "pdata";
    3. Legacy files that no longer need to be generated, see "exporterhelpe"
    the generated_status;
    4. Missing entry into the README.md to generate the documentation, see
    "pdata"
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
