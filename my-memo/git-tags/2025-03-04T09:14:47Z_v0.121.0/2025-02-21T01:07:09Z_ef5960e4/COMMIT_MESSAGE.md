commit ef5960e498f720a2c46e6562773214f08ada20d6
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Thu Feb 20 17:07:09 2025 -0800

    [exporter][batching] configuration and config validation for bytes based batching (#12154)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds config API that will be used for serialized bytes based
    batching.
    
    We will deprecate `MinSizeConfig` and `MaxSizeConfig` in favor of:
    
    ```
    type SizeConfig struct {
            Sizer string `mapstructure:"sizer"`
            MinSize int `mapstructure:"mix_size"`
            MaxSize int `mapstructure:"max_size"`
    }
    ```
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/3262
    https://github.com/open-telemetry/opentelemetry-collector/issues/12303
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
