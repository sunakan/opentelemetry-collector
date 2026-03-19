commit 3e14ee97d8ad49b112e6df2a6a1521d7cdac4402
Author: James Peach <jpeach@apache.org>
Date:   Sat Jul 23 00:30:52 2022 +1000

    Update the builder to use a consistent binary name. (#5651)
    
    Update the builder to consistently use "ocb" in the name of the command,
    version. Since the builder does not expand environment variables in the
    config file pathname, the default value for `--config` does not work,
    so we can make this flag required so that users don't silently build an
    inoperative collector.
    
    This fixes #5581.
    
    Signed-off-by: James Peach <jpeach@cloudflare.com>
