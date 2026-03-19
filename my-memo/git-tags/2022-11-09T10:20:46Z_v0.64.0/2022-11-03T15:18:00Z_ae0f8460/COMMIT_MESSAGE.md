commit ae0f84607a22049ea17f59ddf90481ccb93a4c36
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Nov 3 16:18:00 2022 +0100

    [unrevert][config{grpc,http}] Add warning when using unspecified address (#6421)
    
    Unrevert #6267 and make it so that we never error out.
    
    Co-authored-by: Alex Boten <alex@boten.ca>
