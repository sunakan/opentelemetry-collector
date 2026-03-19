commit 876cf093747560d4e988ed2156e016dc2fe80b91
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Jun 11 10:44:05 2020 -0700

    Fix setting internal status code in jaeger receivers (#1105)
    
    Bug description: if "http.status_code" and "error" tags are both set in incoming a jaeger span, internal status code is incorrectly set to Unknown code ignoring value from http.status_code tag. This commit fixes the described bug, so http.status_code tag always has precedence over error tag during Jaeger -> Internal data model translation.
