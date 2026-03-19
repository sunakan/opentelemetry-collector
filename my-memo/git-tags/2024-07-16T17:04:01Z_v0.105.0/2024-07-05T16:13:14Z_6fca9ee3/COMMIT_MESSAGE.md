commit 6fca9ee370d8a13f673f9c273e45e374c4dfc168
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Jul 5 09:13:14 2024 -0700

    [service] add internal factory method for meter provider (#10415)
    
    This will be used when moving the meter provider configuration to use
    the otel-go config package.
    
    Part of #10414
    
    Skipping changelog as there's no usage of this method yet. It will be
    done in a separate PR
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
