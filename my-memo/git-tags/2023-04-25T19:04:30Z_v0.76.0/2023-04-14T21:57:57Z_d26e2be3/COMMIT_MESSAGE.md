commit d26e2be30d31f12c84d927af43db30327a6f6a98
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Apr 14 23:57:57 2023 +0200

    Add note about bugfix releases for security-relates issues (#7536)
    
    Adds note about when we will typically make a release for security-related issues. This introduces an informal 30 day SLA (the tightest TTR SLA for Gitlab) for security-related issues. Since we release every ~14 days, this means we will, in most cases, not make bugfix releases for security related issues. Critical vulnerabilities are added as an exception.
    
    This relates to the discussion around CVE-2023-24534 and CVE-2023-24536.
