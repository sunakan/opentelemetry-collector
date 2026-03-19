commit 01868e37e4dc693c53a151a898017e475f0bf547
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Aug 5 14:41:09 2025 +0200

    [chore] Move all cspell config to cspell.json (#13563)
    
    #### Description
    
    Continuation from #13562
    
    This PR moves the rest of the cspell configuration from the workflow
    parameters to its own JSON file.
    
    This makes it easier to run cspell locally with the same parameters as
    in CI with:
    ```sh
    cspell -c .github/workflows/utils/cspell.json
    ```
    
    This PR also disables spell checking for files ignored by Git, making it
    more practical to run locally.
    
    The `.gitignore` file currently contains `local`, which ignores any
    directory called `local`, including the `examples/local` directory.
    Presumably, this was not the intent of #12089 which added that line, and
    with the new `useGitignore` config, would prevent spell checking of
    `examples/local/otel-config.yaml`. So I changed it to `/local`.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
