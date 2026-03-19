commit 6f1cbd851e6212d2a973679aea73cae73a8c04df
Author: Raphael Philipe Mendes da Silva <rapphil@gmail.com>
Date:   Wed Jan 25 15:41:00 2023 -0800

    Add the httpsprovider component (#6683)
    
    * Feat: add httpsprovider component
    
    Add the httpsprovider component that allows the collector to fetch
    configuration from a web server using the https protocol.
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    * Add httpsprovider to the list of config providers
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    * Update README
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    * Apply suggestions from code review
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    
    * Improve unit tests
    
    Improve unit tests to check for error while parsing test URL.
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    
    * Fix comments
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    
    * Fix comments
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    
    * Use SchemeType instead of TransportType
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    * Refactor to improve readability
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    * Use consts from http to set http status code
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    * Refactor code organization
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    * Use struct with zero initialized properties
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    
    Signed-off-by: Raphael Silva <rapphil@gmail.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
