commit 8fa0a81c809c5132ed6567c9fafb997557d4a29e
Author: Bogdan Drutu <lazy@splunk.com>
Date:   Tue Feb 22 08:33:50 2022 -0800

    Create a new github job, extract all non lint checks (#4888)
    
    * Create a new github job, extract all non lint checks
    
    Separate goporto in a step that checks for changes, since the command change the code.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update Makefile
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
