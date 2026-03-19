commit b81b76b4aec965612f4c165c4b9e914d2ef5fb9f
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Jul 30 08:24:01 2024 -0700

    [configauth] Fix unmarshaling of confighttp.AuthConfig (#10749)
    
    #### Description
    
    - Uses `mapstructure:",squash"` instead of `mapstructure:"-"` for the
    Authenticator field
    - Removes pointer (since pointers can't be squashed)
    - Adds test in OTLP receiver for this reproducing the user's issue
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10750
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
