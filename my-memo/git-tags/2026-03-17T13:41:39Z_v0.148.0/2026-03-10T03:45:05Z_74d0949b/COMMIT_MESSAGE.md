commit 74d0949b6d3d5f5413bae33befe73d6ad2fa92ef
Author: Dale Yarborough <developer@frieswthat.com>
Date:   Mon Mar 9 22:45:05 2026 -0500

    [ci] Add markdownlint check (#14556) (#14715)
    
    Add a markdownlint check to help keep Markdown files consistent and
    catch common formatting issues. This uses npx without a package.json to
    avoid adding Node.js dependencies to the Go project.
    
    - Add .markdownlint.yaml config (permissive baseline)
    - Add .markdownlintignore for generated/third-party content
    - Add `make markdownlint` target
    - Run markdownlint in CI checks job
    - Document in CONTRIBUTING.md
    
    #### Description
    
    Adds a markdownlint CI check following the approach suggested by
    maintainers: use `npx` to run markdownlint without adding a
    `package.json` to the repo. The config starts permissive (many rules
    disabled) to establish a baseline that passes on the existing docs;
    rules can be tightened over time.
    
    #### Link to tracking issue
    
    Fixes #14556
    
    #### Testing
    
    - `make markdownlint` passes locally
    - `make checklicense misspell checkdoc markdownlint` passes locally
    
    #### Documentation
    
    Updated CONTRIBUTING.md to mention `make markdownlint`.
