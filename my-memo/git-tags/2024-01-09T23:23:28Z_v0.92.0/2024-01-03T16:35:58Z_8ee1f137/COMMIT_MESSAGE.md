commit 8ee1f1374361c388786e61288f701be49b4f580f
Author: Curtis Robert <crobert@splunk.com>
Date:   Wed Jan 3 08:35:58 2024 -0800

    [chore] Enable goleak for all (passing) tests (#9173)
    
    **Description:**
    It was suggested that we add the [goleak
    package](https://pkg.go.dev/go.uber.org/goleak) to every test in core.
    This change adds `goleak` to every package that is succeeds with goleak.
    There a number that are not successful, the full list of which I've
    posted in the bug.
    
    I generated these files using a shell script to copy a template
    `main_test.go` file into each package, then modified the package name.
    I'm sure there was a better way to automate this, but it worked well
    enough at this point. Here's the script:
     ```
    cp ./main_test.go $1
    
    PACKAGE_NAME=$(basename $1)
    
    sed -i '' -e "s|package component|package $PACKAGE_NAME|g"
    $1/main_test.go
    
    pushd . && cd $1 && go mod tidy
    go test -v .
    ```
    Usage example:
    ```
    $ ./add_leak_test reciever/scrapererror
    ```
    
    
    **Link to tracking Issue:**
    #9165
    
    **Testing:**
    All added tests are passing, but there are a number failing. Note that there's no sign of `goleak` running until it fails.
