commit a49376541b9f15cf0101ac1e64278b4e9c78f306
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Sep 5 11:08:00 2019 -0700

    Refactor extensions to new config format (#310)
    
    * Refactor extensions to new config format
    
    * Refactored PProf
    
    * Refactor health-check extension
    
    * Refactor service application for extensions
    
    * Refactor zPages and update docker compose example
    
    * Fix staticcheck issue
    
    * Update README and other comments/docs
    
    * Remove tabs from yaml in extension/README.md
    
    * Remove closeFn field from service and related functions
    
    * PR Feedback 00
    
    * Add doc.go to extensiontest package
    
    * Move getAvailablePort to testutils package
    
    * Add tests for testutils functions getting available endpoints
