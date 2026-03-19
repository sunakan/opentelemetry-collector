commit 6196bd893ae0ac735e67cbd734af7239aec2bba0
Author: Azfaar Qureshi <azfaarq@amazon.com>
Date:   Thu Dec 17 15:16:15 2020 -0500

    Migrate CircleCI build-and-test workflow to GitHub Actions (1/3) (#2291)
    
    * GitHub Actions: adding
    windows-test,check-links,setup-environment,lint,cross-compile
    
    * moving check-links out of main workflow to make it non blocking for releases
