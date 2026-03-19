commit 08a18d5b9f1b8ee001f8e16e6f6b9daf45b4d42e
Author: Pablo Baeyens <pbaeyens31+github@gmail.com>
Date:   Thu Apr 1 01:38:40 2021 +0200

    Add missing documentation (#2837)
    
    * Add comment linter
    
    For now I am excluding
    - Internal packages
    - Testbed packages
    - Constant blocks (since the type docs is usually enough)
    
    * Document consumer folder
    
    * Document processor folder
    
    * Document component folder
    
    * Document config folder
    
    * Document service folder
    
    * Add nosec directive for testbed
    
    * Document testutil folder
    
    * Document receiver folder
    
    * Document exporter folder
    
    * Document cmd/schemagen folder
    
    * Document translator folder
    
    * Document cmd/mdatagen
    
    * Document obsreport folder
    
    * Remove outdated package config comment
    
    * Update .golangci.yml
    
    * Update .golangci.yml
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
