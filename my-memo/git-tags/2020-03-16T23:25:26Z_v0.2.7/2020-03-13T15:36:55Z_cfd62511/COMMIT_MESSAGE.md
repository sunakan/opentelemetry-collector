commit cfd62511c09366d32d712b5583a77abb8d068deb
Author: Nail Islamov <nilebox@users.noreply.github.com>
Date:   Sat Mar 14 02:36:55 2020 +1100

    Replace log.Fatal with returning errors to be handled by caller (#627)
    
    Replaced usages of log.Fatal with returning errors in Application, to be handled by the caller of Application.Start().
    
    Link to tracking Issue: #619
    
    Documentation: Updated CONTRIBUTING.md to document the rules for process termination.
