commit 9dc5682e7be542d9bca491a9b9d0ebf83d8e373a
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Wed Apr 30 13:15:53 2025 +0800

    [mdatagen] Add event type definition (#12822)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR added type definition needed for supporting structured events in
    mdatagen.
    
    Note: the NewLogsBuilder function signature is generated dynamically
    according to logs config:
    ```
    func NewLogsBuilder({{ if .Events }}lbc LogsBuilderConfig, {{ end }}settings {{ .Status.Class }}.Settings) *LogsBuilder {}
    ```
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Part of #12571
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added
    
    <!--Describe the documentation added.-->
    #### Documentation
    Added
    
    <!--Please delete paragraphs that you did not use before submitting.-->
