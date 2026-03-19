commit 2ebe1e501f9a206237de1009a127f1a419ab3696
Author: Sean Liao <sean+git@liao.dev>
Date:   Thu Sep 14 18:22:44 2023 +0100

    fix builder config from env (#8401)
    
    **Description:** partially fix loading builder config from the env. This
    moves the env option from unusable (wrong parsing of nested keys), to
    usable for the `dist.*` settings, but not for any of the
    components/modules, which will require more complex parsing for arrays.
    
    **Link to tracking Issue:** #8239
    
    **Testing:** try running it locally
