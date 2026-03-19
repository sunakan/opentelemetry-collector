commit 1f803d769ecc3033010399f24ffbd76584a09214
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu Jan 30 09:08:31 2020 -0500

    Ensure file exporter truncates output file when starting (#525)
    
    Previously file exporter could write to existing file without truncating it.
    Truncating is the desired behavior so that the file contains the new data only.
