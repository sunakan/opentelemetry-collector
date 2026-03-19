commit 329285deb1c1609eaea98b7c8e8c8ad9f765e55b
Author: Guillaume GILL <gillg@users.noreply.github.com>
Date:   Mon Jun 21 12:47:21 2021 +0200

    "wake up" internal prometheus scrapper metrics (up / scrape_xxxx) (#3116)
    
    * Try to make internal prometheus scrapper metrics working
    
    * Alternative method, working directly on metricFamily
    
    * Try to fix unittests
    
    * Try to fix prometheus exporter tests
    
    * Try to fix prometheus exporter tests
    
    * Remove unwanted test about internal metrics
    
    * Try to fix unittests
    
    * Try to fix unittests
    
    * Try to fix unittests
    
    * receiver/prometheus: fix e2e tests
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * receiver/prometheus: add e2e tests for label keys and values
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * receiver/prometheus: remove unused test metric spec
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Add useful logs
    
    * Fix useless units and comments
    
    * Fix too verbose log and bad test
    
    * Fix prom exporter test if scrap duration is instant
    
    * Fix lint
    
    * Update exporter/prometheusexporter/end_to_end_test.go
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    
    * Try to fix exporter test
    
    * Remove unwanted file
    
    * fix tests after rebasing
    
    * Fix lint
    
    Co-authored-by: Anthony J Mirabella <a9@aneurysm9.com>
    Co-authored-by: David Ashpole <dashpole@google.com>
