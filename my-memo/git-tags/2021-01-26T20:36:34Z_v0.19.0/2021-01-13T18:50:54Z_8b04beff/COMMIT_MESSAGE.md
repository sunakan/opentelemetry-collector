commit 8b04beff7cfdb307cf116ed880fb96a51e80b781
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Wed Jan 13 13:50:54 2021 -0500

    mdatagen: Add Init function for intializing existing metrics (#2358)
    
    * mdatagen: Add Init function for intiializing existing metrics
    
    pdata.Metric instances may already be initialized and we just want to fill in
    the metric descriptor values. Removes the unnecessary need to New() then
    CopyTo().
    
    * regenerate
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
