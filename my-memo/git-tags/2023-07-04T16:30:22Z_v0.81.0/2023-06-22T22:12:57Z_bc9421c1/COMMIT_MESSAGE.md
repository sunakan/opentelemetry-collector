commit bc9421c14b0e856b36d9ad9545e423bf8112f99f
Author: Dmitry Av <altuner@users.noreply.github.com>
Date:   Thu Jun 22 15:12:57 2023 -0700

    fix in github.com/mitchellh/mapstructure for slices mapping issue (#7911)
    
    There's an issue with slices mapping in
    github.com/mitchellh/mapstructure that used for config.
    
    It's resolved in
    https://github.com/mitchellh/mapstructure/commit/1f85f72c684702c840b9a77616dccbdba63f0b29#diff-7276b880a688d3af79f0a7b18e13df164968ac39766a475f3c91f9c445558e8fR1126
    
    As temporary solution I've fixed the latest commit in the repo, but will
    update it once released
