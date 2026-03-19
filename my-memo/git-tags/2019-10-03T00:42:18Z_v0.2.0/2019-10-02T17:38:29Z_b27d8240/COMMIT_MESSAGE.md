commit b27d82408a5a24aab4b0993f52a2b26f41f5584e
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Oct 2 10:38:29 2019 -0700

    Use strict mode to read config (#375)
    
    * Use strict mode to read config
    
    Reading the config using exact matches causes errors for unknown sections reducing the changes of accidental errors on the configuration files.
    
    * Add comments and fix testbed config files
