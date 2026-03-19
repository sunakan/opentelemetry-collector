commit 1eb6d1a7b03c4bd1e626a0adbdad12808a1acfd4
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Fri Apr 30 09:55:57 2021 -0700

    Remove test step that can't be cleaned-up (#3067)
    
    The test TestApplication_StartAsGoRoutine is setting the metric level to none but there is no way to reset the flag to its default. This breaks the tests if one tries to run the tests multiple times in the same `go test` command. Since the setting was not required by tests opting to remove it.
