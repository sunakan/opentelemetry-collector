commit ae2ed9db4febcf48198faf9511db5afe2551ef12
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Tue Jun 18 10:21:34 2024 -0500

    Change builder release trigger to module tag (#10429)
    
    This PR changes the trigger for releasing the builder to match the
    builder module tag. This allows us to release the builder separately by
    pushing a dedicated tag.
