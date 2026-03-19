commit a8b00dc1c0ab9d71dcf52828ad549ac33134df2d
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Fri Feb 16 15:33:39 2024 -0800

    [chore] apply some nits to contract_checker. (#9543)
    
    The `idSet` struct used a mix of pointer and non-pointer receivers on
    functions, this is now uniformly using non-pointer functions.
