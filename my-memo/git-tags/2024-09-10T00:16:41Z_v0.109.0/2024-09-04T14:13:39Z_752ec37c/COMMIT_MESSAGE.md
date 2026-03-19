commit 752ec37c0ef2842b7bf788a5a61009e498f1cc10
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Sep 4 16:13:39 2024 +0200

    [extensiontest] Remove StatusWatcher helpers (#11044)
    
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Removes some helpers from `extensiontest` related to the componentstatus
    package.
    
    As the following Github searches show, these symbols are not used by any
    public package outside of opentelemetry-collector and its forks:
    -
    [NewStatusWatcherExtensionCreateSettings](https://github.com/search?q=NewStatusWatcherExtensionCreateSettings+language%3AGo+-is%3Afork&type=code)
    -
    [NewStatusWatcherFactory](https://github.com/search?q=NewStatusWatcherExtensionFactory+language%3AGo+-is%3Afork&type=code)
    
    Therefore, I think we can safely remove this in one go.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Updates #11005
