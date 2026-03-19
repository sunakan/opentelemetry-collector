commit 388bae78d83215673a4f4d6b033907917fb341a7
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Oct 16 12:40:34 2024 +0200

    [chore] add exporterhelperprofiles package (#11226)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This is extracted from #11131.
    It adds profiles support for the epxorterhelper, so both the otlp and
    otlphttp exporters can support that signal.
    
    It requires #11207✅  and #11225✅  to be merged first.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
