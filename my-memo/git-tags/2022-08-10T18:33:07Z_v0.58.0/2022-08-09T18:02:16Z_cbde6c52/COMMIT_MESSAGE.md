commit cbde6c521c181284aee0d5ff38fa3602e2637efe
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 9 11:02:16 2022 -0700

    Remove wrong limitation on pcommon.Value.Equal (#5865)
    
    The limitation that the pcommon.Slice can have only primitives is indeed in the specs, but cannot be enforced in Equal, it has to be enforced in the constructor if anywhere. Logs need this to support any value, so for the moment remove this artificial limitation from Equal func.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
