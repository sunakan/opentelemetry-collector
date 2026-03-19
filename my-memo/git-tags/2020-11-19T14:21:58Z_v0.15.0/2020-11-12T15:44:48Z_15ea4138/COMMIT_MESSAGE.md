commit 15ea413833d7e8672dd8e78738e40270caae4b18
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Nov 12 10:44:48 2020 -0500

    Fix "process/memory/rss" metric units (#2112)
    
    This metric is in bytes, it was incorrectly marked as unitless.
