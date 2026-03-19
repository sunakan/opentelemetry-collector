commit bcc9a41a3e9c7078b6d14dd95db1e29a57dd457f
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Wed Jul 31 11:41:13 2019 -0700

    Use sha256 instead of md5 in node batcher processor (#202)
    
    MD5 is insecure cryptographic hash functions, and are therefore unsuitable for security applications.
