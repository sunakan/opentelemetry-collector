commit de6287de839a7d2c0273dd1df3a064a08f733904
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Fri Feb 9 08:24:36 2024 -0800

    [otlpexporter] Validate the configuration explicitly (#9523)
    
    **Description:**
    Use `Config.Validate` to validate the presence of the gRPC endpoint
    instead of making an assertion at creation time.
