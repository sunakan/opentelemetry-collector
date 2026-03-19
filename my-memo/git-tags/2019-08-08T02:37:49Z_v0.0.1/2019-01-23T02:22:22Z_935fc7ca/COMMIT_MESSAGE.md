commit 935fc7ca59c00ed2e8c8be8e130bfb021ffb8bd2
Author: Paulo Janotti <paulo@omnition.io>
Date:   Tue Jan 22 18:22:22 2019 -0800

    Jaeger requires non-nil Process (#334)
    
    Enforcing that conversion from OC proto to Jaeger always ends with a
    non-nil Process.
