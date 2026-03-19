commit e69aa770907a501cf0def00eb3eb3d139d5fa4c4
Author: Ed Snible <esnible@acm.org>
Date:   Tue Jan 18 13:51:20 2022 -0500

    Include valid factories in error when unknown type in config (#4684)
    
    * Include valid factories in error when unknown type in config
    
    * Simplify by passing reflect.Values and remove no-longer-needed test
