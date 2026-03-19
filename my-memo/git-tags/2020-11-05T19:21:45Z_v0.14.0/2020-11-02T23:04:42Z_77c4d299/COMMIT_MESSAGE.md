commit 77c4d29955620ae02af50c854440f99a6aa51c74
Author: Aman Brar <mabrara@amazon.com>
Date:   Mon Nov 2 18:04:42 2020 -0500

    Return permanent errors in prometheus remote write exporter (#2053)
    
    * change error type to permanent error
    
    * removed permanent bool flag
    
    * return permanent error whenever necessary
    
    * ignore nil metrics
    
    Co-authored-by: huyan0 <yhuz@amazon.com>
