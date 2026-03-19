commit 84fe00d34f930994a271de45ec38b12f5bbabf6b
Author: Ankit Patel <8731662+ankitpatel96@users.noreply.github.com>
Date:   Mon Dec 23 05:06:36 2024 -0500

    [chore] Create gotest-with-junit Makefile target (#11963)
    
    Creates a target to output junit files from testing. This PR also starts
    to use it in CI - we don't consume the Junits yet but it would be easy
    to add on. This will be useful for a number of CI/Devx initiatives in
    the future.
    
    My company, Datadog, plans to use this information to track the build
    stability of our code in contrib, as well as the stability of code we
    depend on here in collector.
