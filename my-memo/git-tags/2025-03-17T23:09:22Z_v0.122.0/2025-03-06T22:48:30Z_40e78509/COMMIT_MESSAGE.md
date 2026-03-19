commit 40e785094b8f6bd2409e5976bcb495a3fa6fed08
Author: Matthew Sainsbury <matthew@sainsbury.io>
Date:   Thu Mar 6 14:48:30 2025 -0800

    [chore] remove unintended file addition (#12577)
    
    #### Description
    In https://github.com/open-telemetry/opentelemetry-collector/pull/12576,
    I accidentally included a junk test file. This PR deletes it.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    none
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    ran `make all gotest` to ensure the file is not used in tests
    <!--Describe the documentation added.-->
    
    <!--Please delete paragraphs that you did not use before submitting.-->
