commit 65d59d14011f1b4cfa100aa70d42bb0ea8415c54
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Thu Jun 13 13:04:40 2024 -0600

    [confmap] remove bool logic from expandURI (#10403)
    
    expandURI can always be viewed as changing the value as long as no error
    is returned.
