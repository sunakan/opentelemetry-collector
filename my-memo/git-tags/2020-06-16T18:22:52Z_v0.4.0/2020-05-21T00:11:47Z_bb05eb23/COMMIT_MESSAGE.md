commit bb05eb232722e9cbab00e75d0b50491bb469774a
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed May 20 17:11:47 2020 -0700

    Fix zipkin receiver status code conversion (#999)
    
    Problem: If any zipkin span attribute that is used as source for setting OC status code (like status.code, http.status_code or census.status_code) received with a type other than int64, the underlying value will be taken as an integer. For example if http.status_code sent as "200" string attribute it's got converted to status code = 2. The problem wasn't that critical until we started setting error tag based on status code https://github.com/dmitryax/opentelemetry-collector/commit/75ae9198a89eb9df1d14308c89c2a4c93b6ba9e1
    
    This commit adds support of string values in status.code, http.status_code or census.status_code attributes and reject values of other types.
