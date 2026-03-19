commit d8e65bd5f38a74926cc796fdce62dd9987bc64d6
Author: Kylian Serrania <kylian.serrania@datadoghq.com>
Date:   Thu Dec 3 15:28:09 2020 +0100

    [config] Default config env variable expansion (#2231)
    
    Adds the ability for components to use environment variables in string fields in the default configuration returned by `CreateDefaultConfig`. These fields get expanded when the component is loaded, in the same way the fields of configuration yaml files are (`$FOO` is replaced by the value of the `FOO` environment variable, `$$FOO` is replaced by `$FOO`, `$$$FOO` is replaced by `$`followed by the contents of `FOO`).
    
    For instance, if `CreateDefaultConfig` of a component returns:
    ```
    &Config{
      ...
      TagsConfig: &TagsConfig{
        Env: "$DD_ENV",
      }
      ...
    }
    ```
    
    and the `DD_ENV` environment variable is set to `prod`, then the resulting struct will contain:
    ```
    &Config{
      ...
      TagsConfig: &TagsConfig{
        Env: "prod",
      }
      ...
    }
    ```
    
    **Note:** The default config is expanded _before_ it's merged with the user-provided config, so as to not mess with the latter.
    
    **Link to tracking Issue:** n/a
    
    **Testing:**
    
    Added unit tests to check that the variable expansion works, and that it doesn't crash in edge cases (unexported private fields that can't be modified, uninitialised config object).
    
    Tested behavior with the Datadog exporter.
