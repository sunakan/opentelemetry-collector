commit 20710ff2aeaed3fe1c3e46423291522674db44d6
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Jan 17 09:56:14 2024 -0800

    Remove the obsolete +build directive (#9304)
    
    `// +build` was replaced with `//go:build` directive in Go 1.17. The
    `+build` can be removed since we support only 1.20 and 1.21
