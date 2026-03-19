commit 6c8a8967796c2c67f58ea4d6208187045383c463
Author: Aman Brar <mabrara@amazon.com>
Date:   Fri Nov 6 18:58:01 2020 -0500

    move validate and sanitize external labels to exporter (#2071)
    
    * export validate and sanitize config function
    
    * added comment for why validateandsanitizeexternallabels is exported
    
    * added more detailed reason for why function is exported
    
    * moved validateAndSanitizeLabels to within exporter
    
    * increasing test cov
    
    * fix test case
