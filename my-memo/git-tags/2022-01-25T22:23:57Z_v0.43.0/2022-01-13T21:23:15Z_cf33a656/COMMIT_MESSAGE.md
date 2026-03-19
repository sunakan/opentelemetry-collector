commit cf33a656f09716a9e7f35235547d37c1acf57614
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jan 13 13:23:15 2022 -0800

    Use config to setup skip-compilation instead of the flag (#4645)
    
    The skip compilation should only be supplied as a CLI flag. Previously, it was possible to specify that in the YAML file, contrary to the original intention
