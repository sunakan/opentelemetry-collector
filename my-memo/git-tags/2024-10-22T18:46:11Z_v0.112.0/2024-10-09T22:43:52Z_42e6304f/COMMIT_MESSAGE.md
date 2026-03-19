commit 42e6304f650ed156410c69930b7cc1d344849f5a
Author: Nathan Baulch <nathan.baulch@gmail.com>
Date:   Thu Oct 10 09:43:52 2024 +1100

    Fix typos (#11348)
    
    Just thought I'd contribute some typo fixes I stumbled upon. Nothing
    controversial (hopefully), just 72 simple fixes.
    
    Use the following command to get a quick and dirty summary of the
    specific corrections made:
    ```shell
    git diff HEAD^! --word-diff-regex='\w+' -U0 \
      | grep -E '\[\-.*\-\]\{\+.*\+\}' \
      | sed -r 's/.*\[\-(.*)\-\]\{\+(.*)\+\}.*/\1 \2/' \
      | sort | uniq -c | sort -n
    ```
    
    FWIW, the top typos are:
    * invokable (16)
    * subsciption (15)
    * decison (7)
    * reques (3)
    * dissallow (3)
    * documenation (3)
    * locahost (3)
    * prerequistes (2)
    * assinged (2)
    * extenions (2)
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
